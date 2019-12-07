@echo off 
echo.
echo Choose: 
echo [1] Set Static IP 
echo [2] Set DHCP 
echo. 

:choice 
SET /P C=[1,2]? 
for %%? in (1) do if /I "%C%"=="%%?" goto 1 
for %%? in (2) do if /I "%C%"=="%%?" goto 2 
goto choice 

:1 
@echo off 
echo "Enter Static IP Address Information" 
echo "Static IP Address:" 
set /p IP_Addr=

echo "Enter Subnet Mask:" 
set /p Sub_Mask=

echo "Enter Default Gateway:" 
set /p D_Gate=
echo.
echo "Setting Static IP Information" 
netsh interface ip set address "LAN" static %IP_Addr% %Sub_Mask% %D_Gate% 1 
netsh int ip show config 
pause
cls 
goto end

:2 
@ECHO OFF 
ECHO Resetting IP Address and Subnet Mask For DHCP 
netsh int ip set address name = "LAN" source = dhcp

ipconfig /renew

ECHO Here are the new settings for %computername%: 
netsh int ip show config

pause 
goto end 
:end
