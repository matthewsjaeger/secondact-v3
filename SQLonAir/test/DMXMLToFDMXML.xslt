<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    xmlns:user="urn:my-scripts" exclude-result-prefixes="msxsl"
>
  <xsl:output method="xml" indent="yes"/>

  <xsl:variable name="odxml" select="/" />

  <xsl:param name="output-filename" select="'output.txt'" />

    <msxsl:script language="C#" implements-prefix="user">
    <![CDATA[
    public string FilterPds(string pds, string formula, string table) {
      pds = pds.Remove(pds.Length - 1, 1);
      Regex rg = new Regex("\\b(" + pds + ")\\b(?!.*\\b\\1\\b)", RegexOptions.IgnoreCase);
      MatchCollection matched = rg.Matches(formula);
      string filteredPds = "";
      for (var i = 0; i < matched.Count; i++)
      {
          filteredPds = filteredPds + "<Dependency><Table>" + table + "</Table><Column>" + matched[i].Groups[0].Value + "</Column></Dependency>";
      }
      return filteredPds;
    }
    ]]>
  </msxsl:script>

  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="/">
    <FileSet>
      <FileSetFiles>
        <FileSetFile>
          <RelativePath>
            <xsl:text>test.fdmxml</xsl:text>
          </RelativePath>
          <xsl:element name="FileContents" xml:space="preserve">
            <xsl:copy>
                <xsl:apply-templates select="*" />
            </xsl:copy>
          </xsl:element>
        </FileSetFile>
      </FileSetFiles>
    </FileSet>
  </xsl:template>

  <xsl:template match="PropertyDef">
      <xsl:param name="depth" select="1"/>
    <PropertyDef>
      <xsl:apply-templates select="*"/>
      <FullDependencyMaps>
        <xsl:apply-templates select="." mode="print">
            <xsl:with-param name="depth" select="$depth" />
        </xsl:apply-templates>
      </FullDependencyMaps>
    </PropertyDef>
  </xsl:template>
  <xsl:template match="PropertyDef" mode="print">
      <xsl:param name="depth" select="1" />
    <xsl:variable name="ods" select="//ObjectDefs"/>
    <xsl:variable name="dependencies" select="//PropertyDefs/PropertyDef/DependencyMaps/DependencyMap/Dependencies/Dependency[(Table=current()/MatchingMetaData/TableName and Column=current()/Name) or (current()/MatchingMetaData/RelationshipType = 'One' and LookupTableName=current()/MatchingMetaData/TableName and LookupColumnName=current()/Name)]" />
    <xsl:for-each select="$dependencies">
      <xsl:variable name="dependency" select="." />
      <xsl:variable name="map" select="../.." />
      <xsl:variable name="pd" select="$map/../.." />
      <FullDependencyMap>
        <MapType><xsl:value-of select="$map/MapType"/></MapType>
        <xsl:if test="$map/Formula">
          <Formula><xsl:value-of select="$map/Formula"/></Formula>
        </xsl:if>
        <xsl:if test="$map/WriteOnce">
          <WriteOnce><xsl:value-of select="$map/WriteOnce"/></WriteOnce>
        </xsl:if>
        <xsl:if test="$pd/MatchingMetaData/LookupColumnName">
          <LookupColumnName><xsl:value-of select="$pd/MatchingMetaData/LookupColumnName"/></LookupColumnName>
          <ReferencedObjectDef><xsl:value-of select="$pd/Relationship/ReferencedObjectDef"/></ReferencedObjectDef>
          <ReferencedPropertyDef><xsl:value-of select="$pd/Relationship/ReferencedPropertyDef"/></ReferencedPropertyDef>
        </xsl:if>
        <xsl:if test="$dependency/LookupColumnSymmetricTableName and $dependency/LookupColumnSymmetricColumnName">
          <xsl:variable name="lpk" select="$ods/ObjectDef[Name = $dependency/LookupColumnSymmetricTableName]/PropertyDefs/PropertyDef[IsPrimaryKey=1]"/>
          <LookupColumnSymmetricTableName><xsl:value-of select="$dependency/LookupColumnSymmetricTableName"/></LookupColumnSymmetricTableName>
          <LookupColumnSymmetricColumnName><xsl:value-of select="$dependency/LookupColumnSymmetricColumnName"/></LookupColumnSymmetricColumnName>
          <LookupColumnPrimaryKey><xsl:value-of select="$lpk/Name"/></LookupColumnPrimaryKey>
        </xsl:if>
        <xsl:if test="$map/MapType = 'ReverseForeignKey'"><xsl:variable name="rod" select="$pd/Relationship/ReferencedObjectDef"/><xsl:variable name="rpk" select="$ods/ObjectDef[Name=$rod]/PropertyDefs/PropertyDef[IsPrimaryKey=1]/Name"/>
          <ReferencedObjectDef><xsl:value-of select="$pd/Relationship/ReferencedObjectDef"/></ReferencedObjectDef>
          <SymmetricPropertyDef><xsl:value-of select="$pd/Relationship/SymmetricPropertyDef"/></SymmetricPropertyDef>
          <ReferencedPrimaryKey><xsl:value-of select="$rpk"/></ReferencedPrimaryKey>
        </xsl:if>
        <xsl:if test="$pd/MatchingMetaData/RollupWhere">
          <RollupWhere><xsl:value-of select="$pd/MatchingMetaData/RollupWhere"/></RollupWhere>
        </xsl:if>
        <Table><xsl:value-of select="$pd/MatchingMetaData/TableName"/></Table>
        <Column><xsl:value-of select="$pd/Name"/></Column>
        <ParentTable><xsl:value-of select="Table"/></ParentTable>
        <ParentColumn><xsl:value-of select="Column"/></ParentColumn>
        <PrimaryKey><xsl:value-of select="$pd/../../PropertyDefs/PropertyDef[IsPrimaryKey = 1]/Name"/></PrimaryKey>
        <DataType><xsl:value-of select="$pd/DataType"/></DataType>
        <Length><xsl:value-of select="$pd/Length"/></Length>
        <SubDependencies>
          <xsl:choose>
          <xsl:when test="$depth > 10">MAX DEPTH EXCEEDED</xsl:when>
          <xsl:otherwise>
            <xsl:apply-templates select="$pd" mode="print">
              <xsl:with-param name="depth" select="$depth + 1" />
            </xsl:apply-templates>
          </xsl:otherwise>
          </xsl:choose>
        </SubDependencies>
      </FullDependencyMap>
    </xsl:for-each>
  </xsl:template>


</xsl:stylesheet>