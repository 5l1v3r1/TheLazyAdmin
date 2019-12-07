@echo off
echo.
echo This Script will set the virtual memory with an initial size and maximum size both of 4092 for both the C and D drives. 
echo.


C:\WINDOWS\system32\pagefileconfig.vbs /change /I 4092 /M 4092 /VO C:

ping 127.0.0.1 3

C:\WINDOWS\system32\pagefileconfig.vbs /change /I 4092 /M 4092 /VO D:
pause
