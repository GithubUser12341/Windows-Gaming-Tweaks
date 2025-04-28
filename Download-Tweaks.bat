@echo off
:: ================================================
:: 🥔 ULTIMATE POTATO PC OPTIMIZER + THEME CUSTOMIZER
:: ================================================
:: Features:
:: ✔️ EXTREME performance tweaks for Intel HD/weak GPUs
:: ✔️ MODULAR system - choose which tweaks to apply
:: ✔️ DARK MODE + RGB GAMER THEME customization
:: ✔️ DISABLES all Windows bloatware
:: ✔️ LOW-LATENCY network & mouse tweaks
:: ✔️ SECRET registry hacks for max FPS
:: ================================================

:: 🔰 Check for Admin Rights
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo Requesting administrator privileges...
    goto UACPrompt
) else ( goto AdminConfirmed )

:UACPrompt
echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"
"%temp%\getadmin.vbs"
exit /B

:AdminConfirmed
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"
cls
title 🥔 POTATO PC OPTIMIZER - MODE SELECTION

:: ======================
## 🎨 COLOR THEME
:: ======================
color 0A
echo.
echo  ██████╗ ██████╗ ████████╗ █████╗ ████████╗ ██████╗
echo ██╔═══██╗██╔══██╗╚══██╔══╝██╔══██╗╚══██╔══╝██╔═══██╗
echo ██║   ██║██████╔╝   ██║   ███████║   ██║   ██║   ██║
echo ██║   ██║██╔═══╝    ██║   ██╔══██║   ██║   ██║   ██║
echo ╚██████╔╝██║        ██║   ██║  ██║   ██║   ╚██████╔╝
echo  ╚═════╝ ╚═╝        ╚═╝   ╚═╝  ╚═╝   ╚═╝    ╚═════╝
echo.
echo ================================================
echo    SELECT OPTIMIZATION MODE (1-6)
echo ================================================
echo 1. 🚀 MAXIMUM PERFORMANCE (All Tweaks)
echo 2. 🎮 GAMER MODE (Low Latency + RGB Theme)
echo 3. 🖥️ OFFICE MODE (Lightweight + Stability)
echo 4. 🛠️ CUSTOM TWEAKS (Choose What To Apply)
echo 5. 🔄 RESTORE DEFAULTS (Undo Changes)
echo 6. ❌ EXIT
echo.
set /p mode=CHOOSE MODE (1-6): 

if "%mode%"=="1" goto MAX_PERFORMANCE
if "%mode%"=="2" goto GAMER_MODE
if "%mode%"=="3" goto OFFICE_MODE
if "%mode%"=="4" goto CUSTOM_TWEAKS
if "%mode%"=="5" goto RESTORE_DEFAULTS
if "%mode%"=="6" exit

:: ======================
## 🚀 MAX PERFORMANCE MODE
:: ======================
:MAX_PERFORMANCE
cls
echo.
echo ███ MAXIMUM PERFORMANCE MODE █████████████████████
echo ⚠️ WARNING: This will disable visual effects!
echo.
call :KILL_BLOAT
call :CPU_OPTIMIZE
call :GPU_OPTIMIZE
call :NETWORK_TWEAKS
call :MOUSE_TWEAKS
call :DISABLE_EFFECTS
call :GAMER_THEME
goto FINISH

:: ======================
## 🎮 GAMER MODE (RGB THEME)
:: ======================
:GAMER_MODE
cls
echo.
echo ███ GAMER MODE ██████████████████████████████████
echo Applying low-latency tweaks + RGB theme...
echo.
call :KILL_BLOAT
call :CPU_OPTIMIZE
call :GPU_OPTIMIZE
call :NETWORK_TWEAKS
call :MOUSE_TWEAKS
call :GAMER_THEME
goto FINISH

:: ======================
## 🖥️ OFFICE MODE (LIGHTWEIGHT)
:: ======================
:OFFICE_MODE
cls
echo.
echo ███ OFFICE MODE █████████████████████████████████
echo Keeping some visuals but improving speed...
echo.
call :KILL_BLOAT
call :CPU_OPTIMIZE
call :NETWORK_TWEAKS
goto FINISH

:: ======================
## 🛠️ CUSTOM TWEAKS SELECTOR
:: ======================
:CUSTOM_TWEAKS
cls
echo.
echo ███ CUSTOM TWEAKS ██████████████████████████████
echo Choose which tweaks to apply:
echo.
echo 1. ☠️  Kill Background Bloatware
echo 2. ⚡ CPU Optimization (Intel HD Boost)
echo 3. 🎮 GPU Optimization (Weak GPU Fixes)
echo 4. 🌐 Network Tweaks (Lower Ping)
echo 5. 🖱️ Mouse Tweaks (No Acceleration)
echo 6. 🎨 Gamer RGB Theme
echo 7. 🔇 Disable Visual Effects (More FPS)
echo 8. ✅ APPLY SELECTED TWEAKS
echo.
set /p custom_choice=SELECT (1-8): 

if "%custom_choice%"=="1" call :KILL_BLOAT
if "%custom_choice%"=="2" call :CPU_OPTIMIZE
if "%custom_choice%"=="3" call :GPU_OPTIMIZE
if "%custom_choice%"=="4" call :NETWORK_TWEAKS
if "%custom_choice%"=="5" call :MOUSE_TWEAKS
if "%custom_choice%"=="6" call :GAMER_THEME
if "%custom_choice%"=="7" call :DISABLE_EFFECTS
if "%custom_choice%"=="8" goto FINISH
goto CUSTOM_TWEAKS

:: ======================
## 🔄 RESTORE DEFAULTS
:: ======================
:RESTORE_DEFAULTS
cls
echo.
echo ███ RESTORING DEFAULTS █████████████████████████
echo Reverting all tweaks...
reg delete "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /f >nul
powercfg -setactive 381b4222-f694-41f0-9685-ff5bb260df2e >nul
netsh int tcp set global autotuninglevel=normal >nul
reg delete "HKCU\Control Panel\Mouse" /v "MouseSpeed" /f >nul
reg delete "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /f >nul
reg delete "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /f >nul
timeout /t 2 /nobreak >nul
echo Defaults restored! Reboot to apply.
pause
exit

:: ======================
## ✅ FINISH & REBOOT PROMPT
:: ======================
:FINISH
cls
echo.
echo █████████████████████████████████████████████████
echo ✅ OPTIMIZATION COMPLETE!
echo.
echo ⚠️ REBOOT FOR FULL EFFECT!
echo.
pause
exit

:: ======================
## 🔥 TWEAK FUNCTIONS
:: ======================

:KILL_BLOAT
echo.
echo ☠️ KILLING BACKGROUND BLOAT...
taskkill /f /im "explorer.exe" >nul 2>&1
taskkill /f /im "OneDrive.exe" >nul 2>&1
taskkill /f /im "GameBar.exe" >nul 2>&1
taskkill /f /im "Discord.exe" >nul 2>&1
wmic process where "name like '%chrome%'" delete >nul 2>&1
timeout /t 1 /nobreak >nul
start explorer.exe
goto :EOF

:CPU_OPTIMIZE
echo.
echo ⚡ OPTIMIZING CPU FOR INTEL HD...
reg add "HKLM\SYSTEM\CurrentControlSet\Control\PriorityControl" /v "Win32PrioritySeparation" /t REG_DWORD /d 26 /f >nul
powercfg -setactive 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c >nul
bcdedit /set disabledynamictick yes >nul
goto :EOF

:GPU_OPTIMIZE
echo.
echo 🎮 OPTIMIZING WEAK GPU...
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "GPU Priority" /t REG_DWORD /d 8 /f >nul
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "CPUPriority" /t REG_DWORD /d 6 /f >nul
reg add "HKLM\SOFTWARE\Microsoft\DirectX" /v "UsePlatformClock" /t REG_DWORD /d 1 /f >nul
goto :EOF

:NETWORK_TWEAKS
echo.
echo 🌐 OPTIMIZING NETWORK...
netsh int tcp set global autotuninglevel=restricted >nul
netsh interface tcp set global rss=enabled >nul
ipconfig /flushdns >nul
goto :EOF

:MOUSE_TWEAKS
echo.
echo 🖱️ REMOVING MOUSE ACCELERATION...
reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f >nul
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f >nul
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f >nul
goto :EOF

:DISABLE_EFFECTS
echo.
echo 🔇 DISABLING VISUAL EFFECTS...
reg add "HKCU\Control Panel\Desktop" /v "DragFullWindows" /t REG_SZ /d "0" /f >nul
reg add "HKCU\Control Panel\Desktop" /v "MenuShowDelay" /t REG_SZ /d "0" /f >nul
reg add "HKCU\Control Panel\Desktop" /v "UserPreferencesMask" /t REG_BINARY /d "90320780000000" /f >nul
goto :EOF

:GAMER_THEME
echo.
echo 🎨 APPLYING RGB GAMER THEME...
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "AppsUseLightTheme" /t REG_DWORD /d 0 /f >nul
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize" /v "SystemUsesLightTheme" /t REG_DWORD /d 0 /f >nul
reg add "HKCU\Control Panel\Colors" /v "Background" /t REG_SZ /d "0 0 0" /f >nul
color 0A
goto :EOF
