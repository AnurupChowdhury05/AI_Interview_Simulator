@echo off
title InterviewAI — Launcher
color 0B

echo.
echo  ╔══════════════════════════════════════════╗
echo  ║        🚀  InterviewAI Launcher          ║
echo  ║     AI-Powered Interview Simulator       ║
echo  ╚══════════════════════════════════════════╝
echo.

:: Check Node is installed
where node >nul 2>nul
if %errorlevel% neq 0 (
    echo  [ERROR] Node.js not found. Please install it from https://nodejs.org
    pause
    exit /b 1
)

:: Check if node_modules exists, install if not
if not exist "node_modules\" (
    echo  [INFO] Installing dependencies for the first time...
    echo  This may take a minute...
    echo.
    call npm install
    if %errorlevel% neq 0 (
        echo  [ERROR] npm install failed.
        pause
        exit /b 1
    )
)

echo  [OK] Starting dev server on http://localhost:3000
echo  [OK] Opening browser in 3 seconds...
echo.
echo  Press Ctrl+C to stop the server.
echo.

:: Open browser asynchronously
start "" cmd /c "timeout /t 4 >nul & start http://localhost:3000"

:: Start Next.js dev server
call npm run dev

pause
