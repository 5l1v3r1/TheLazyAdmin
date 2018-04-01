@echo off
echo.
echo create username / password rember to edit this 
echo.
echo change all Capitals words
echo.
pause

net user USERNAME PASSWORD /add /comment:"COMMENT" /passwordchg:NO
wmic useraccount where "name='USERNAME'" set passwordexpires=FALSE
net localgroup "GROUP" USERNAME/add
exit

