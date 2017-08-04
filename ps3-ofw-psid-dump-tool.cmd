
:reset

@echo off


title PS3 OFW PSID Dump Tool                                        esc0rtd3w 2017


:: Set "1" To Enable Debug Output
set debug=0

set sleepTime=1
set sleep=ping -n %sleepTime% 127.0.0.1

set ip=0.0.0.0


set ftpText="%temp%\ftpTextTemp.txt"

set root=%~dp0


:start

color 0e

cls
echo Make sure any previous PSID is removed before starting!
echo.
echo.
echo.
echo Press ENTER to remove previous PSID from CFW console....
echo.
echo.

pause>nul



:ipAddr
cls
%laqua%
echo Enter PS3 IP Address and press ENTER:
%lyellow%
echo.
echo.

set /p ip=



:clrPSID
cls
echo Removing previous PSID.dat from CFW Console....
echo.
echo.

echo user ps3>>%ftpText%
echo ps3>>%ftpText%
echo bin>>%ftpText%
echo cd /dev_hdd0/game/NPUP00030/USRDIR/APPDATA/>>%ftpText%
echo mdelete PSID.dat>>%ftpText%
echo quit>>%ftpText%

ftp -n -s:%ftpText% %ip%
del /f /q %ftpText%


:dtuC2OS
cls
echo * DISABLE INTERNET CONNECTION ON RECEIVING CONSOLE BEFORE RUNNING DTU *
echo.
echo.
echo Now initiate a DTU from CFW to OFW
echo.
echo.
echo Located under Settings - System Settings - Data Transfer Utility
echo.
echo.
echo 1) Select OK and then Option 1 (Transfer data from this system....)
echo.
echo 2) Select OK again for connection confirm screen
echo.
echo.
echo *** If you are prompted about trophies, etc, select NO for each option ***
echo.
echo.
echo Once "Waiting to transfer data" appears, switch over to the OFW console.
echo.
echo.
echo.
echo To see OFW instructions, press ENTER to continue....
echo.

pause>nul


:dtuC2OR
cls
echo * DISABLE INTERNET CONNECTION ON RECEIVING CONSOLE BEFORE RUNNING DTU *
echo.
echo.
echo Now prepare to receive data from CFW console
echo.
echo.
echo Located under Settings - System Settings - Data Transfer Utility
echo.
echo.
echo 1) Select OK and then Option 2 (Transfer data from the other PS3....)
echo.
echo 2) Select YES to confirm all data will be erased
echo.
echo 3) Select YES to confirm the hard drive will be formatted
echo.
echo.
echo.
echo Once DTU is finished and you return to XMB, press ENTER to continue....
echo.

pause>nul


:nfRun
cls
echo Now run the Netflix app on OFW console and wait until it loads completely
echo.
echo *** It does not require internet or PSN access to create the needed file ***
echo.
echo.
echo.
echo Once Netflix has loaded, exit the app using the PS button
echo.
echo.
echo When back at XMB, press ENTER for further instructions....
echo.

pause>nul


:dtuO2CS
cls
echo * DISABLE INTERNET CONNECTION ON RECEIVING CONSOLE BEFORE RUNNING DTU *
echo.
echo.
echo Now initiate a DTU from OFW to CFW
echo.
echo.
echo 1) Select OK and then Option 1 (Transfer data from this system....)
echo.
echo 2) Select OK again for connection confirm screen
echo.
echo.
echo *** If you are prompted about trophies, etc, select NO for each option ***
echo.
echo.
echo Once "Waiting to transfer data" appears, switch over to the CFW console.
echo.
echo.
echo.
echo To see CFW instructions, press ENTER to continue....
echo.

pause>nul


:dtuO2CR
cls
echo * DISABLE INTERNET CONNECTION ON RECEIVING CONSOLE BEFORE RUNNING DTU *
echo.
echo.
echo Now prepare to receive data from OFW console
echo.
echo.
echo Located under Settings - System Settings - Data Transfer Utility
echo.
echo.
echo 1) Select OK and then Option 2 (Transfer data from the other PS3....)
echo.
echo 2) Select YES to confirm all data will be erased
echo.
echo 3) Select YES to confirm the hard drive will be formatted
echo.
echo.
echo.
echo Once DTU is finished and you return to XMB, press ENTER to continue....
echo.

pause>nul



:getPSID
cls
echo Connect back to your CFW console with ethernet cable or WiFi
echo.
echo.
echo.
echo Once you are connected to PS3 again, press ENTER to continue....
echo.

pause>nul

echo user ps3>>%ftpText%
echo ps3>>%ftpText%
echo bin>>%ftpText%
echo cd /dev_hdd0/game/NPUP00030/USRDIR/APPDATA>>%ftpText%
echo get PSID.dat "%root%PSID.dat">>%ftpText%
echo quit>>%ftpText%

ftp -n -s:%ftpText% %ip%
del /f /q %ftpText%




cls
echo Your PSID from the OFW console is located here:
echo.
echo %root%PSID.dat
echo.
echo.
echo.
echo Press ENTER to exit....
echo.

pause>nul


:end




