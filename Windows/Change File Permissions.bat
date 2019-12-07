@echo off

echo.
echo rember to change file contents 
echo.
echo change all caps
echo.
echo n-NO Perms , r-Read Perms, c-Write perms, f-Full Perms, g-user/group
echo t-change acl	e-edit acl  
echo.
pause

cacls c:\FOLDER\FOLDER /t /e /g USER:f
