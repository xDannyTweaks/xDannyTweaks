@echo off  
::Disable UAC  
Reg.exe ADD "HKLM\Software\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableLUA" /t REG_DWORD /d "0" /f > nul  
:: Enable ANSI Escape Sequences  
Reg.exe add "HKCU\CONSOLE" /v "VirtualTerminalLevel" /t REG_DWORD /d "1" /f  > nul  
::Enable Delayed Expansion  
setlocal EnableDelayedExpansion > nul  
cls   
chcp 65001 >nul 2>&1  
cls  
set w=[31m  
:: Purple  
set p=[95m  
:: Blue  
set b=[34m  
:: Yellow  
set y=[33m  
:: White  
set z=[37m  
:: Pink  
set G=ESC[38;5;{13}m  
cls  
goto menu 
:Menu  
cls  
mode 160, 40   
echo.  
echo.  
echo.      		             %w%███████╗ ██████╗ ██████╗ ████████╗███╗   ██╗██╗████████╗███████╗     ██████╗ ██████╗ ████████╗██╗  
echo.      		             %w%██╔════╝██╔═══██╗██╔══██╗╚══██╔══╝████╗  ██║██║╚══██╔══╝██╔════╝    ██╔═══██╗██╔══██╗╚══██╔══╝██║  
echo.      	                     %w%█████╗  ██║   ██║██████╔╝   ██║   ██╔██╗ ██║██║   ██║   █████╗      ██║   ██║██████╔╝   ██║   ██║  
echo.      		             %w%██╔══╝  ██║   ██║██╔══██╗   ██║   ██║╚██╗██║██║   ██║   ██╔══╝      ██║   ██║██╔═══╝    ██║   ██║  
echo.      		             %w%██║     ╚██████╔╝██║  ██║   ██║   ██║ ╚████║██║   ██║   ███████╗    ╚██████╔╝██║        ██║   ██║  
echo.      		             %w%╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═══╝╚═╝   ╚═╝   ╚══════╝     ╚═════╝ ╚═╝        ╚═╝   ╚═╝                                                                                                                    
echo. 
echo.      %b%╔════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╗ 
echo.      %b%║                                                    Created by Zen 3.0 (.gg/freetweaks)                                                         ║ 
echo.      %b%║════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════║ 
echo.      %b%║                                                                                                                                                ║ 
echo.      %b%║                                      [1] Apply Basic Tweaks  [2] Lower Graphics  [3] Apply Power Plan                                          ║  
echo.      %b%║                                                                                                                                                ║ 
echo.      %b%║                                      [4] GameUserSettings    [5] Optimize Ping   [6] Optimize CPU                                              ║  
echo.      %b%║                                                                                                                                                ║ 
echo.      %b%║════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════║ 
echo.      %b%║                                                                                                                                                ║ 
echo.      %b%║ DISCLAIMER: If this Product was not bought via discord.gg/optimizations than you were SCAMMED and could have a rat/virus from running the file ║  
echo.      %b%║                                                                                                                                                ║ 
echo.      %b%╚════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════════╝ 
echo.                                                                                                                    
set /p input=:  
if /i %input% == 1 goto a  
if /i %input% == 2 goto install  
if /i %input% == 3 goto c  
if /i %input% == 4 goto d  
if /i %input% == 5 goto e  
if /i %input% == 6 goto f  
:a  
echo. %b%Applying Tweaks...  
echo. %z%Applying Tweaks..  
echo. %f%Applying Tweaks...  
echo. %w%Applying Tweaks.  
echo. %p%Applying Tweaks..  
REM ; MajorGeeks.Com  
REM ; https://www.majorgeeks.com/content/page/how_to_turn_on_or_off_xbox_game_bar_in_windows_10.html  
Reg.exe add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR" /v "AppCaptureEnabled" /t REG_DWORD /d "0" /f  
Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerSettings\54533251-82be-4824-96c1-47b60b740d00\943c8cb6-6f93-4227-ad87-e9a3feec08d1" /v "Attributes" /t REG_SZ /d "2" /f  
REM ; https://www.majorgeeks.com/content/page/how_to_turn_on_or_off_game_mode_in_windows_10.html  
Reg.exe add "HKCU\Software\Microsoft\GameBar" /v "AllowAutoGameMode" /t REG_DWORD /d "1" /f  
Reg.exe add "HKCU\Software\Microsoft\GameBar" /v "AutoGameModeEnabled" /t REG_DWORD /d "1" /f  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\BackgroundAccessApplications" /v "GlobalUserDisabled" /t REG_DWORD /d "1" /f  
Reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v "BackgroundAppGlobalToggle" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power" /v "HibernateEnabled" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Power" /v "HiberbootEnabled" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "8" /f   
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuPriority" /t REG_DWORD /d "42" /f   
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuThreadPriority" /t REG_DWORD /d "8" /f   
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuPriorityControl" /t REG_DWORD /d "1" /f   
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuThreadCount" /t REG_DWORD /d "8" /f   
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuPrioritySeperation" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuCoresAlways" /t REG_DWORD /d "18" /f   
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuUtilization" /t REG_DWORD /d "256" /f   
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuSpread" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuMaxPerformance" /t REG_DWORD /d "256" /f   
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "3" /f   
echo Tweaks Applied, Restart your PC  
pause  
exit  
:b  
cls	  
echo.  
echo.  
echo.  
echo.							     
echo.   				--------------------------------------------------------------------------------------------                                        
echo.  
echo.				               [1] Recommended Graphics [2] Balanced Graphics [3] Potato Graphics 	  
echo.  
echo.                                                                    [4] Revert Changes  
echo.  
echo.									    
echo.  
echo.    							Type "X" to return back to the main menu  
echo.  
echo.                                 --------------------------------------------------------------------------------------------  
echo.  
ECHO is off. 
ECHO is off. 
set /p input=:  
if /i %input% == 1 goto recommended  
if /i %input% == 2 goto balanced  
if /i %input% == 3 goto potato  
if /i %input% == 4 goto revert  
if /i %input% == x goto Menu  
:install  
echo Applying  
md C:\FNTweaks\NvidiaProfileInspector  
curl -g -k -L -# -o "%temp%\nvidiaProfileInspector.zip" "https://github.com/Orbmu2k/nvidiaProfileInspector/releases/latest/download/nvidiaProfileInspector.zip"   
powershell -NoProfile Expand-Archive '%temp%\nvidiaProfileInspector.zip' -DestinationPath 'C:\FNTweaks\NvidiaProfileInspector\' > nul  
curl -g -k -L -# -o "C:\FNTweaks\NvidiaProfileInspector\FNRecommended.nip" "https://drive.usercontent.google.com/download?id=1HVaDWKJ2uRPGEmyegLskb3fb1dnHsCDu"   
curl -g -k -L -# -o "C:\FNTweaks\NvidiaProfileInspector\FNBalanced.nip" "https://drive.google.com/uc?export=download&id=1l5Jmfnm5afkakYa6o08opO_liFoxNbXC"  
curl -g -k -L -# -o "C:\FNTweaks\NvidiaProfileInspector\FNPotato.nip" "https://drive.usercontent.google.com/download?id=1836P6mxiOsRTXqXqGlBx1jC9id1p25Ec"  
curl -g -k -L -# -o "C:\FNTweaks\NvidiaProfileInspector\Revert.nip" "https://drive.usercontent.google.com/download?id=1-2Zk4Rc-OHCHcvHc-P0s_N7vZVSDOvrk"  
pause  
goto :b   
:recommended  
start "" /wait "C:\FNTweaks\NvidiaProfileInspector\nvidiaProfileInspector.exe" "C:\FNTweaks\NvidiaProfileInspector\FNRecommended.nip"  
echo Applied  
goto:b  
:balanced  
start "" /wait "C:\FNTweaks\NvidiaProfileInspector\nvidiaProfileInspector.exe" "C:\FNTweaks\NvidiaProfileInspector\FNBalanced.nip"    
echo Applied  
goto:b  
:potato  
start "" /wait "C:\FNTweaks\NvidiaProfileInspector\nvidiaProfileInspector.exe" "C:\FNTweaks\NvidiaProfileInspector\FNPotato.nip"  
echo Applied  
pause  
goto:b  
:revert  
start "" /wait "C:\FNTweaks\NvidiaProfileInspector\nvidiaProfileInspector.exe" "C:\FNTweaks\NvidiaProfileInspector\Revert.nip"  
echo Applied  
pause  
goto:b  
:c  
powershell -c "Invoke-WebRequest -Uri 'https://drive.google.com/uc?export=download&id=1jruqD1xB_O1CYU392oNDux8VHr9xSm3f' -OutFile %HOMEPATH%\AppData\Local\Temp\Skiioh.pow   
powercfg -SETACTIVE "44444444-4444-4444-4444-444444444448"   
powercfg -import "%HOMEPATH%\AppData\Local\Skiioh.pow"  
echo PowerPlan Applied  
pause  
goto Menu  
:d  
title Fortnite Optimization 
color 0a 
setlocal enableextensions disabledelayedexpansion 
set "tempLocation=%temp%\TEMP%random%.vbs" 
goto :Start 
:Start 
call :logo 
call :checkPermissions 
pause 
taskkill /F /IM "EpicGamesLauncher.exe" /T 
cls 
:Edit 
:: Delete FortniteGame folder 
rmdir /q/s %localappdata%\FortniteGame > nul 
cls 
for /l %%f in (0 5 15) do ( 
    call :drawProgressBar %%f "Resetting Fortnite Config" 
	ping 192.0.2.2 -n 1 -w 500 > nul 
) 
cls 
set /p "wantedFPS=What do you cap your FPS at? (0 = Unlimited) " 
if "%wantedFPS%" EQU "" set wantedFPS=0 
cls 
set /p "hResolution=Desired Horizontal Resolution: (Default: 1920) " 
if "%hResolution%" EQU "" set hResolution=1920 
set /p "wResolution=Desired Vertical Resolution: (Default: 1080) " 
if "%wResolution%" EQU "" set wResolution=1080 
cls 
set /p "renderingAPI=Would your prefer to play on Performance Mode? (Y or N) " 
if "%renderingAPI%" EQU "" set renderingAPI=Y 
if /I %renderingAPI%==Y ( 
set renderingAPI=2 
set preferPer=True 
) else if /I %renderingAPI%==N ( 
set renderingAPI=0 
set preferPer=False 
) 
cls 
set "configLoc=%localappdata%\FortniteGame\Saved\Config\WindowsClient\GameUserSettings.ini" 
mkdir "%localappdata%\FortniteGame\Saved\Config\WindowsClient" 
echo [/Script/FortniteGame.FortGameUserSettings] > %configLoc% 
echo FullscreenMode=0 >> "%configLoc%" 
echo bMotionBlur=False >> "%configLoc%" 
echo bShowGrass=False >> "%configLoc%" 
echo bShowFPS=True >> "%configLoc%" 
echo LatencyTweak2=2 >> "%configLoc%" 
echo UserRenderingAPI=%renderingAPI% >> "%configLoc%" 
echo InitialBenchmarkState=1 >> "%configLoc%" 
echo SocialImportOptedOutVersion=1 >> "%configLoc%" 
echo LastConfirmedFullscreenMode=0 >> "%configLoc%" 
echo PreferredFullscreenMode=0 >> "%configLoc%" 
echo FrameRateLimit=%wantedFPS%.000000 >> "%configLoc%" 
echo DesiredScreenWidth=%hResolution% >> "%configLoc%" 
echo DesiredScreenHeight=%wResolution% >> "%configLoc%" 
echo LastUserConfirmedDesiredScreenWidth=%hResolution% >> "%configLoc%" 
echo LastUserConfirmedDesiredScreenHeight=%wResolution% >> "%configLoc%" 
echo. >> "%configLoc%" 
echo [ScalabilityGroups] >> "%configLoc%" 
echo sg.ResolutionQuality=100.000000 >> "%configLoc%" 
echo sg.ViewDistanceQuality=0 >> "%configLoc%" 
echo sg.AntiAliasingQuality=0 >> "%configLoc%" 
echo sg.ShadowQuality=0 >> "%configLoc%" 
echo sg.PostProcessQuality=0 >> "%configLoc%" 
echo sg.TextureQuality=0 >> "%configLoc%" 
echo sg.EffectsQuality=0 >> "%configLoc%" 
echo sg.FoliageQuality=0 >> "%configLoc%" 
echo sg.ShadingQuality=0 >> "%configLoc%" 
echo.  >> "%configLoc%" 
echo [D3DRHIPreference] >> "%configLoc%" 
echo bUseD3D12InGame=False >> "%configLoc%" 
echo bPreferFeatureLevelES31=%preferPer% >> "%configLoc%" 
for /l %%f in (15 5 30) do ( 
    call :drawProgressBar %%f "Optimizing Fortnite Config" 
	ping 192.0.2.2 -n 1 -w 500 > nul 
) 
cls 
:: Setting compatibility tab for Fortnite 
for /l %%f in (30 4 40) do ( 
    call :drawProgressBar %%f "Finding Fortnite Directory..." 
	ping 192.0.2.2 -n 1 -w 500 > nul 
) 
call :locationCheck 
if %fortPath% EQU TError2 ( 
	D: 
	call :locationCheck 
) 
for /l %%f in (40 12 75) do ( 
    call :drawProgressBar %%f "Finding Fortnite Directory..." 
	ping 192.0.2.2 -n 1 -w 500 > nul 
) 
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v %fortPath% /d "~ DISABLEDXMAXIMIZEDWINDOWEDMODE RUNASADMIN HIGHDPIAWARE WIN8RTM" /f > nul 
for /l %%f in (75 4 80) do ( 
    call :drawProgressBar %%f "Disabling Fullscreen Optimizations" 
	ping 192.0.2.2 -n 1 -w 500 > nul 
) 
for /l %%f in (80 4 87) do ( 
    call :drawProgressBar %%f "Turning on Run as Administrator" 
	ping 192.0.2.2 -n 1 -w 500 > nul 
) 
for /l %%f in (87 4 95) do ( 
    call :drawProgressBar %%f "Enabling Compatibility" 
	ping 192.0.2.2 -n 1 -w 500 > nul 
) 
for /l %%f in (95 2 100) do ( 
    call :drawProgressBar %%f "Enabling High DPI Scaling Override" 
	ping 192.0.2.2 -n 1 -w 500 > nul 
) 
cls 
:Done 
:: Done 
echo Set objArgs = WScript.Arguments > %tempLocation% 
echo messageText = objArgs(0) >> %tempLocation% 
echo MsgBox messageText,64,"Heads up" >> %tempLocation% 
cscript %tempLocation% "You may experience flickering when tabbing in and out of your game. This is normal, and it's exclusive fullscreen. This allows for the least input delay by bypassing DWM. There is no way around this, other than playing non-exclusive fullscreen (Windowed Fullscreen)" > nul 
del %tempLocation% > nul 
echo Press any key to exit... 
pause > nul 
exit 
:drawProgressBar value [text] 
    if "%~1"=="" goto :eof 
    if not defined pb.barArea call :initProgressBar 
    setlocal enableextensions enabledelayedexpansion 
    set /a "pb.value=%~1 %% 101", "pb.filled=pb.value*pb.barArea/100", "pb.dotted=pb.barArea-pb.filled", "pb.pct=1000+pb.value" 
    set "pb.pct=%pb.pct:~-3%" 
    if "%~2"=="" ( set "pb.text=" ) else (  
        set "pb.text=%~2%pb.back%"  
        set "pb.text=!pb.text:~0,%pb.textArea%!" 
    ) 
    <nul set /p "pb.prompt=[!pb.fill:~0,%pb.filled%!!pb.dots:~0,%pb.dotted%!][ %pb.pct% ] %pb.text%!pb.cr!" 
    endlocal 
    goto :eof 
:initProgressBar [fillChar] [dotChar] 
    if defined pb.cr call :finalizeProgressBar 
    for /f %%a in ('copy "%~f0" nul /z') do set "pb.cr=%%a" 
    if "%~1"=="" ( set "pb.fillChar=#" ) else ( set "pb.fillChar=%~1" ) 
    if "%~2"=="" ( set "pb.dotChar=." ) else ( set "pb.dotChar=%~2" ) 
    set "pb.console.columns=" 
    for /f "tokens=2 skip=4" %%f in ('mode con') do if not defined pb.console.columns set "pb.console.columns=%%f" 
    set /a "pb.barArea=pb.console.columns/2-2", "pb.textArea=pb.barArea-9" 
    set "pb.fill=" 
    setlocal enableextensions enabledelayedexpansion 
    for /l %%p in (1 1 %pb.barArea%) do set "pb.fill=!pb.fill!%pb.fillChar%" 
    set "pb.fill=!pb.fill:~0,%pb.barArea%!" 
    set "pb.dots=!pb.fill:%pb.fillChar%=%pb.dotChar%!" 
    set "pb.back=!pb.fill:~0,%pb.textArea%! 
    set "pb.back=!pb.back:%pb.fillChar%= !" 
    endlocal & set "pb.fill=%pb.fill%" & set "pb.dots=%pb.dots%" & set "pb.back=%pb.back%" 
    goto :eof 
:finalizeProgressBar [erase] 
    if defined pb.cr ( 
        if not "%~1"=="" ( 
            setlocal enabledelayedexpansion 
            set "pb.back=" 
            for /l %%p in (1 1 %pb.console.columns%) do set "pb.back=!pb.back! " 
            <nul set /p "pb.prompt=!pb.cr!!pb.back:~1!!pb.cr!" 
            endlocal 
        ) 
    ) 
    for /f "tokens=1 delims==" %%v in ('set pb.') do set "%%v=" 
    goto :eof 
:checkPermissions 
fsutil dirty query %systemdrive% >nul 
if %errorLevel% NEQ 0 ( 
	echo Try again as Administrator. 
	echo. 
	echo Press any key to exit... 
	pause > nul 
	goto menu 
) 
exit /b 
:locationCheck 
if exist "C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" ( 
set fortPath="C:\Program Files\Epic Games\Fortnite\FortniteGame\Binaries\Win64\FortniteClient-Win64-Shipping.exe" 
) else ( 
for /f "tokens=*" %%a in (' 
	dir /b /s "\FortniteClient-Win64-Shipping.exe" 2^>nul ^|^|(echo:TError2^) 
') do set fortPath="%%a" 
) 
exit /b 
:e  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "DisableTaggedEnergyLogging" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxApplication" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxTagPerApplication" /t REG_DWORD /d "0" /f  
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t Reg_DWORD /d "28" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "16" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPerServer" /t REG_DWORD /d "16" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableConnectionRateLimiting" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUBHDetect" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUDiscovery" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableRSS" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableTCPA" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableWsd" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxFreeTcbs" /t REG_DWORD /d "65535" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxHashTableSize" /t REG_DWORD /d "00010000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d "65534" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SizReqBuf" /t REG_DWORD /d "51319" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SynAttackProtect" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDataRetransmissions" /t REG_DWORD /d "4" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "00000005" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "StrictTimeWaitSeqCheck" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableIPSourceRouting" /t REG_DWORD /d "00000008" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpCreateAndConnectTcbRateLimitDepth" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPInitalRtt" /t REG_DWORD /d "00046325" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t REG_DWORD /d "00000002" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPDelAckTicks" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "IPAutoconfigurationEnabled" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "38" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "DisableTaskOffload" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "EnableConnectionRateLimiting" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "EnableDCA" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "EnablePMTUBHDetect" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "EnablePMTUDiscovery" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "EnableRSS" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "EnableTCPA" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "EnableWsd" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "MaxFreeTcbs" /t REG_DWORD /d "65535" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "MaxHashTableSize" /t REG_DWORD /d "00010000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "MaxUserPort" /t REG_DWORD /d "65534" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "SackOpts" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "SizReqBuf" /t REG_DWORD /d "51319" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "SynAttackProtect" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TCPNoDelay" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "Tcp1323Opts" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpMaxDataRetransmissions" /t REG_DWORD /d "5" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpAckFrequency" /t REG_DWORD /d "00000004" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "StrictTimeWaitSeqCheck" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "DisableIPSourceRouting" /t REG_DWORD /d "00000008" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpCreateAndConnectTcbRateLimitDepth" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "IPAutoconfigurationEnabled" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TCPInitalRtt" /t REG_DWORD /d "00046325" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpMaxDupAcks" /t REG_DWORD /d "00000002" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TCPDelAckTicks" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "DefaultTTL" /t REG_DWORD /d "38" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "239" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "240" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "1740" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "1741" /f  
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "MaxConnectionsPerServer" /t REG_DWORD /d "10" /f  
Reg.exe add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "10" /f  
Reg.exe add "HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "MaxConnectionsPerServer" /t REG_DWORD /d "10" /f  
Reg.exe add "HKEY_USERS\.DEFAULT\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "10" /f  
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "MaxConnectionsPerServer" /t REG_DWORD /d "10" /f  
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Internet Settings" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "10" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "LargeSystemCache" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "CacheHashTableBucketSize" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "CacheHashTableSize" /t REG_DWORD /d "00000180" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NegativeCacheTime" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NetFailureCacheTime" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Dnscache\Parameters" /v "NegativeSOACacheTime" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters\OCMsetup" /f  
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters\Security" /v "SecureDSCommunication" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters\setup" /f  
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Setup" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "IRPStackSize" /t REG_DWORD /d "80" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" /v "SizReqBuf" /t REG_DWORD /d "170372" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\System" /v "HiberbootEnabled" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched" /v "MaxOutstandingSends" /t REG_DWORD /d "1073741824" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched" /v "NonBestEffortLimit" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched" /v "TimerResolution" /t REG_DWORD /d "4294967295" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming" /v "ServiceTypeBestEffort" /t REG_DWORD /d "99" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming" /v "ServiceTypeControlledLoad" /t REG_DWORD /d "99" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming" /v "ServiceTypeGuaranteed" /t REG_DWORD /d "99" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming" /v "ServiceTypeNetworkControl" /t REG_DWORD /d "99" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingConforming" /v "ServiceTypeQualitative" /t REG_DWORD /d "99" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming" /v "ServiceTypeBestEffort" /t REG_DWORD /d "99" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming" /v "ServiceTypeControlledLoad" /t REG_DWORD /d "99" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming" /v "ServiceTypeGuaranteed" /t REG_DWORD /d "99" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming" /v "ServiceTypeNetworkControl" /t REG_DWORD /d "99" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\DiffservByteMappingNonConforming" /v "ServiceTypeQualitative" /t REG_DWORD /d "99" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\UserPriorityMapping" /v "ServiceTypeNonConforming" /t REG_DWORD /d "7" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\UserPriorityMapping" /v "ServiceTypeBestEffort" /t REG_DWORD /d "7" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\UserPriorityMapping" /v "ServiceTypeControlledLoad" /t REG_DWORD /d "7" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\UserPriorityMapping" /v "ServiceTypeGuaranteed" /t REG_DWORD /d "7" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\UserPriorityMapping" /v "ServiceTypeNetworkControl" /t REG_DWORD /d "7" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Psched\UserPriorityMapping" /v "ServiceTypeQualitative" /t REG_DWORD /d "7" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "IRPStackSize" /t REG_DWORD /d "50" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\services\LanmanServer\Parameters" /v "SizReqBuf" /t REG_DWORD /d "170372" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\BITS" /v "EnableBITSMaxBandwidth" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\NetCache" /v "PeerCachingLatencyThreshold" /t REG_DWORD /d "268435456" /f  
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\PeerDist\Service" /v "Enable" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "UpdateSecurityLevel" /t REG_DWORD /d "598" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows NT\DNSClient" /v "RegistrationTtl" /t REG_DWORD /d "1117034098" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Network Connections" /v "NC_AllowNetBridge_NLA" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Network Connections" /v "NC_AllowAdvancedTCPIPConfig" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "LocalPriority" /t REG_DWORD /d "4" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "HostsPriority" /t REG_DWORD /d "5" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "DnsPriority" /t REG_DWORD /d "6" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\ServiceProvider" /v "NetbtPriority" /t REG_DWORD /d "7" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "UseDelayedAcceptance" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "MaxSockAddrLength" /t REG_DWORD /d "16" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Winsock" /v "MinSockAddrLength" /t REG_DWORD /d "16" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" /v "Dhcpv6DUID" /t REG_BINARY /d "00010001273662d480c16ee372d7" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip6\Parameters" /v "DisabledComponents" /t REG_DWORD /d "50" /f  
Reg.exe add "HKLM\SOFTWARE\Microsoft\MSMQ\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "1" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPer1_0Server" /t REG_DWORD /d "16" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxConnectionsPerServer" /t REG_DWORD /d "16" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableTaskOffload" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableConnectionRateLimiting" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUBHDetect" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnablePMTUDiscovery" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableRSS" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableTCPA" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "EnableWsd" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxFreeTcbs" /t REG_DWORD /d "65535" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxHashTableSize" /t REG_DWORD /d "00010000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "MaxUserPort" /t REG_DWORD /d "65534" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SizReqBuf" /t REG_DWORD /d "51319" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SynAttackProtect" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPNoDelay" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDataRetransmissions" /t REG_DWORD /d "4" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /t REG_DWORD /d "00000005" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "StrictTimeWaitSeqCheck" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DisableIPSourceRouting" /t REG_DWORD /d "00000008" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpCreateAndConnectTcbRateLimitDepth" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPInitalRtt" /t REG_DWORD /d "00046325" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDupAcks" /t REG_DWORD /d "00000002" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPDelAckTicks" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "IPAutoconfigurationEnabled" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /t REG_DWORD /d "38" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "DisableTaskOffload" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "EnableConnectionRateLimiting" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "EnableDCA" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "EnablePMTUBHDetect" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "EnablePMTUDiscovery" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "EnableRSS" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "EnableTCPA" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "EnableWsd" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "MaxFreeTcbs" /t REG_DWORD /d "65535" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "MaxHashTableSize" /t REG_DWORD /d "00010000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "MaxUserPort" /t REG_DWORD /d "65534" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "SackOpts" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "SizReqBuf" /t REG_DWORD /d "51319" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "SynAttackProtect" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TCPNoDelay" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "Tcp1323Opts" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpMaxDataRetransmissions" /t REG_DWORD /d "5" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpAckFrequency" /t REG_DWORD /d "00000004" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "StrictTimeWaitSeqCheck" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "DisableIPSourceRouting" /t REG_DWORD /d "00000008" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpCreateAndConnectTcbRateLimitDepth" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "IPAutoconfigurationEnabled" /t REG_DWORD /d "00000000" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TCPInitalRtt" /t REG_DWORD /d "00046325" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TcpMaxDupAcks" /t REG_DWORD /d "00000002" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "TCPDelAckTicks" /t REG_DWORD /d "00000001" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters\Interfaces" /v "DefaultTTL" /t REG_DWORD /d "38" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "FastCopyReceiveThreshold" /t REG_DWORD /d "2048" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "FastSendDatagramThreshold" /t REG_DWORD /d "2048" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "PriorityBoost" /t REG_DWORD /d "0" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DefaultSendWindow" /t REG_DWORD /d "415029" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "DefaultReceiveWindow" /t REG_DWORD /d "415029" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "MaxFastCopyTransmit" /t REG_DWORD /d "296" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "MaxFastTransmit" /t REG_DWORD /d "100" /f  
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Services\AFD\Parameters" /v "TransmitWorker" /t REG_DWORD /d "50" /f  
(  
sc config "BITS" start= auto  
sc start "BITS"  
for /f "tokens=3" %%a in ('sc queryex "BITS" ^| findstr "PID"') do (set pid=%%a)  
) >nul 2>&1  
wmic process where ProcessId=%pid% CALL setpriority "idle"  
(  
sc config "Dnscache" start= demand  
sc start "Dnscache"  
for /f "tokens=3" %%a in ('sc queryex "Dnscache" ^| findstr "PID"') do (set pid=%%a)  
) >nul 2>&1  
wmic process where ProcessId=%pid% CALL setpriority "realtime"  
netsh int tcp set heuristics disabled  
netsh int tcp set global timestamps=disabled  
netsh int tcp set global fastopen=enabled  
netsh Int tcp set global nonsackrttresiliency=disabled  
netsh Int tcp set global netdma=enabled  
netsh Int tcp set global congestionprovider=ctcp  
netsh Int tcp set global dca=enabled  
netsh int tcp set global autotuninglevel=disabled  
netsh int tcp set global ecncapability=enabled  
netsh int tcp set global rss=enabled  
netsh int tcp set global chimney=enabled  
netsh interface ipv4 set subinterface ԅthernetԠmtu=1500 store=persistent  
netsh int ipv4 set dynamicportrange protocol=tcp start=1025 num=64511  
netsh Int ipv4 set glob defaultcurhoplimit=255  
netsh Int tcp set global maxsynretransmissions=2  
netsh int tcp set global initialRto=2000  
wmic process where name="mqsvc.exe" CALL setpriority "high priority"  
wmic process where name="mqtgsvc.exe" CALL setpriority "high priority"  
wmic process where name="javaw.exe" CALL setpriority "realtime"  
wmic process where name="svchost.exe" CALL setpriority "realtime"  
sc start Dnscache  
for /f "tokens=3" %%a in ('sc queryex "Dnscache" ^| findstr "PID"') do (set pid=%%a)  
wmic process where ProcessId=%pid% CALL setpriority "realtime"  
taskkill /f /im explorer.exe  
start explorer.exe  
    echo Tweaks Applied  
    pause  
    goto Menu  
:f  
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore" /v "SystemRestorePointCreationFrequency" /t REG_DWORD /d "0" /f >nul 2>&1   
powershell -ExecutionPolicy Bypass -Command "Checkpoint-Computer -Description 'FNTweaksTest' -RestorePointType 'MODIFY_SETTINGS'" & mkdir "C:\FNTweaks\Logs\ResPoint"  >nul 2>&1   
timeout /t 2 /nobreak > nul   
mkdir "C:\FNTweaks\RegistryBackup\" >nul 2>&1   
echo. [ Created C:\FNTweaks\RegistryBackup Path ]   
cd /d C:\FNTweaks\RegistryBackup\   
if not exist "C:\FNTweaks\RegistryBackup\Software.reg" (   
    REG SAVE HKLM\SOFTWARE Software.reg   
)   
if not exist "C:\FNTweaks\RegistryBackup\System.reg" (   
    REG SAVE HKLM\SYSTEM System.reg   
)   
if not exist "C:\FNTweaks\RegistryBackup\Default.reg" (   
    REG SAVE HKU\.DEFAULT Default.reg   
)   
if not exist "C:\FNTweaks\RegistryBackup\Security.reg" (   
    REG SAVE HKLM\SECURITY Security.reg   
)   
Reg.exe add "Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "EnergyEstimationEnabled" /t Reg_DWORD /d "0" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "DisableTaggedEnergyLogging" /t Reg_DWORD /d "1" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxApplication" /t Reg_DWORD /d "0" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\EnergyEstimation\TaggedEnergy" /v "TelemetryMaxTagPerApplication" /t Reg_DWORD /d "0" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Processor" /v "Cstates" /t REG_DWORD /d "0" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Processor" /v "Capabilities" /t REG_DWORD /d "7e066" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "HighPerformance" /t REG_DWORD /d "1" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "HighestPerformance" /t REG_DWORD /d "1" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "MinimumThrottlePercent" /t REG_DWORD /d "0" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumThrottlePercent" /t REG_DWORD /d "0" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "64" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "Class1InitialUnparkCount" /t REG_DWORD /d "64" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "InitialUnparkCount" /t REG_DWORD /d "64" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power" /v "MaximumPerformancePercent" /t REG_DWORD /d "64" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PowerThrottling" /v "PowerThrottlingOff" /t REG_DWORD /d "1" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WcmSvc\GroupPolicy" /v "fDisablePowerManagement" /t REG_DWORD /d "1" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PDC\Activators\Default\VetoPolicy" /v "EA:EnergySaverEngaged" /t REG_DWORD /d "0" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\PDC\Activators\28\VetoPolicy" /v "EA:PowerStateDischarging" /t REG_DWORD /d "0" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Misc" /v "DeviceIdlePolicy" /t REG_DWORD /d "0" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "PerfEnergyPreference" /t REG_DWORD /d "0" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPMinCores" /t REG_DWORD /d "0" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPMaxCores" /t REG_DWORD /d "0" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPMinCores1" /t REG_DWORD /d "0" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPMaxCores1" /t REG_DWORD /d "0" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CpLatencyHintUnpark1" /t REG_DWORD /d "64" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPDistribution" /t REG_DWORD /d "0" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CpLatencyHintUnpark" /t REG_DWORD /d "64" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "MaxPerformance1" /t REG_DWORD /d "64" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "MaxPerformance" /t REG_DWORD /d "64" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPDistribution1" /t REG_DWORD /d "0" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPHEADROOM" /t REG_DWORD /d "0" /f   
Reg.exe add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Power\Policy\Settings\Processor" /v "CPCONCURRENCY" /t REG_DWORD /d "0" /f   
reg add "HKLM\SYSTEM\CurrentControlSet\Services\IntelPPM" /v Start /t REG_DWORD /d 3 /f   
reg add "HKLM\SYSTEM\CurrentControlSet\Services\AmdPPM" /v Start /t REG_DWORD /d 3 /f   
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "DisableExceptionChainValidation" /t REG_DWORD /d "1" /f   
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" /v "KernelSEHOPEnabled" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d "1" /f   
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverride" /t REG_DWORD /d "3" /f   
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "FeatureSettingsOverrideMask" /t REG_DWORD /d "3" /f   
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "MoveImages" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\Software\Microsoft\FTH" /v "Enabled" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "ProccesorThrottlingEnabled" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleThreshold" /t REG_DWORD /d "1" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdle" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuLatencyTimer" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuSlowdown" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "DedicatedSegmentSize" /t REG_DWORD /d "1298" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "Threshold" /t REG_DWORD /d "1" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuDebuggingEnabled" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "ProccesorLatencyThrottlingEnabled" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubDelay" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubInterval" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubPower" /t REG_DWORD /d "18" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubThreshold" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubType" /t REG_DWORD /d "2" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValue" /t REG_DWORD /d "100" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueMaximum" /t REG_DWORD /d "100" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueMinimum" /t REG_DWORD /d "100" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueStep" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueDefault" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueCurrent" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValuePrevious" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueNext" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueLast" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueFirst" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueCount" /t REG_DWORD /d "100" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueIndex" /t REG_DWORD /d "42" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueName" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueDescription" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueEnabled" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueDisabled" /t REG_DWORD /d "1" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueVisible" /t REG_DWORD /d "1" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueHidden" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueReadOnly" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueReadWrite" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueWriteOnly" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueExecute" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueNoExecute" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueSystem" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueUser" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubPower" /t REG_DWORD /d "100" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueDisabled" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubPower" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueCustom" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueAuto" /t REG_DWORD /d "1" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueManual" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueAutomatic" /t REG_DWORD /d "1" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueDisabledByDefault" /t REG_DWORD /d "1" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueEnabledByDefault" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueDefaultEnabled" /t REG_DWORD /d "0" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueDefaultDisabled" /t REG_DWORD /d "1" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueDefaultAuto" /t REG_DWORD /d "1" /f   
Reg.exe add "HKLM\SYSTEM\ControlSet001\Control\Processor" /v "CpuIdleScrubValueDefaultManual" /t REG_DWORD /d "0" /f   
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\HardCap0" /v "CapPercentage" /t REG_DWORD /d "0" /f    
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\HardCap0" /v "SchedulingType" /t REG_DWORD /d "0" /f    
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\Paused" /v "CapPercentage" /t REG_DWORD /d "0" /f    
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\Paused" /v "SchedulingType" /t REG_DWORD /d "0" /f    
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFull" /v "CapPercentage" /t REG_DWORD /d "0" /f    
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapFull" /v "SchedulingType" /t REG_DWORD /d "0" /f    
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapLow" /v "CapPercentage" /t REG_DWORD /d "0" /f    
reg add "HKLM\SYSTEM\ResourcePolicyStore\ResourceSets\Policies\CPU\SoftCapLow" /v "SchedulingType" /t REG_DWORD /d "0" /f    
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\dwm.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f    
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\lsass.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f    
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\ntoskrnl.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "4" /f    
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SearchIndexer.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f    
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\svchost.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f    
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\TrustedInstaller.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f    
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\wuauclt.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "1" /f    
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\audiodg.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "2" /f    
reg add "HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\audiodg.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "2" /f    
echo Tweaks Applied  
pause  
goto menu  
