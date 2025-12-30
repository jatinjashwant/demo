@echo off
echo ========================================
echo   Pushing to GitHub - Quick Script
echo ========================================
echo.

cd /d "%~dp0"

echo Checking Git installation...
git --version >nul 2>&1
if errorlevel 1 (
    echo.
    echo ERROR: Git is not installed!
    echo.
    echo Please install Git from: https://git-scm.com/download/win
    echo After installation, restart and run this script again.
    echo.
    pause
    exit /b 1
)

echo Git found!
echo.

if not exist ".git" (
    echo Initializing Git repository...
    git init
    echo.
)

echo Checking remote...
git remote get-url origin >nul 2>&1
if errorlevel 1 (
    echo Adding remote repository...
    git remote add origin https://github.com/jatinjashwant/demo.git
) else (
    echo Remote already exists, updating...
    git remote set-url origin https://github.com/jatinjashwant/demo.git
)
echo.

echo Adding all files...
git add .
echo.

echo Committing changes...
git commit -m "Initial commit: Shader animation component with Next.js, TypeScript, and Tailwind CSS"
echo.

echo Setting branch to main...
git branch -M main
echo.

echo Pushing to GitHub...
echo NOTE: You may be prompted for credentials.
echo Use a Personal Access Token instead of password.
echo Get token from: https://github.com/settings/tokens
echo.
git push -u origin main

if errorlevel 1 (
    echo.
    echo ERROR: Push failed!
    echo Check authentication or repository access.
) else (
    echo.
    echo ========================================
    echo   SUCCESS! Code pushed to GitHub!
    echo ========================================
    echo Repository: https://github.com/jatinjashwant/demo
)

echo.
pause

