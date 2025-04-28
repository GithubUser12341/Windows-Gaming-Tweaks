@echo off
:: ================================================
:: ⚠️ WARNING: THIS SCRIPT IS SO EXTREME THAT:
:: - Your toaster may gain FPS
:: - Minesweeper will feel like VR
:: - Your mouse may achieve time travel
:: ================================================

:: 🔥 INITIATING OVERCLOCKING SEQUENCE
title POTATO OVERDRIVE v9001 - ENGAGE!

:: ☢️ NUCLEAR PERFORMANCE MODE
echo Applying quantum optimization algorithms...
echo Making NASA computers jealous...
echo Disabling the laws of physics...

:: 🚫 KILL ALL THE THINGS (EVEN THINGS WINDOWS NEEDS)
taskkill /f /im * >nul 2>&1
timeout /t 1 /nobreak >nul
start explorer.exe

:: 💾 RAM? WHERE WE'RE GOING WE DON'T NEED RAM
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "DisablePagingExecutive" /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management" /v "ClearPageFileAtShutdown" /t REG_DWORD /d 1 /f

:: 🎮 GAMING MODE ACTIVATED (EVEN FOR NOTEPAD)
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "GPU Priority" /t REG_DWORD /d 8 /f
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "CPUPriority" /t REG_DWORD /d 6 /f

:: ⚡ OVERCLOCKING YOUR POTATO (YES REALLY)
wmic cpu get caption, maxclockspeed /format:list >nul
wmic cpu where "MaxClockSpeed>0" call SetMaxClockSpeed 5000 >nul 2>&1

:: 🖱️ MOUSE GOES TO LUDICROUS SPEED
reg add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "30" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "2" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f

:: 🌐 INTERNET SO FAST IT ARRIVES BEFORE YOU SEND IT
netsh int tcp set global autotuninglevel=restricted >nul
netsh interface tcp set global rss=enabled >nul
ipconfig /flushdns >nul

:: 🎨 MAKE IT LOOK LIKE A 90S HACKER MOVIE
color 0a
reg add "HKCU\Control Panel\Colors" /v "Background" /t REG_SZ /d "0 0 0" /f
reg add "HKCU\Control Panel\Colors" /v "Window" /t REG_SZ /d "0 0 0" /f
reg add "HKCU\Control Panel\Colors" /v "WindowText" /t REG_SZ /d "0 255 0" /f

:: 💥 FINAL TOUCHES
echo Optimizing flux capacitor...
echo Calibrating quantum entanglement...
echo Reversing entropy...

:: 🏁 COMPLETE!
echo.
echo ⚠️ WARNING: Your PC may now:
echo - Boot so fast you miss the POST screen
echo - Run Crysis at 1000FPS
echo - Cause nearby electronics to overclock themselves
echo.
echo 🔥 POTATO OVERDRIVE ACTIVATED! 🔥
pause
