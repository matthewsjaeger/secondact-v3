if "%1" == "" GOTO PROJECTNAME_BUILD

echo Installing Stored Proedure into %1
sqlcmd -i GetSchemaSP.sql -d %1

echo getting schema for %1
bcp "exec dbo.sp_GetSqlSchema" queryout SqlSchema.xml -d %1 -T -w -r 


GOTO END

:PROJECTNAME_BUILD

echo Installing Stored Proedure into second-act
sqlcmd -i GetSchemaSP.sql -d second-act

echo getting schema for second-act
bcp "exec dbo.sp_GetSqlSchema" queryout SqlSchema.xml -d second-act -T -w -r 
 

:END

ssotme -build -skipclean
    PAUSE
    