@echo off
echo.
echo make sure to change contents of the file
ehco.
echo change all caps
echo.
pause

WMIC computersystem where caption='CURRENTNAME' rename NEWNAME

ping 127.0.0.1 3

Wmic computersystem where name="%computername%" call joindomainorworkgroup name="[NEW WORKGROP]
