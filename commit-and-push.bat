@echo off
echo ========================================
echo   Committing and Pushing to GitHub
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

REM Initialize git if not already initialized
if not exist ".git" (
    echo Initializing Git repository...
    git init
    echo.
)

REM Check if remote exists, add if not
git remote get-url origin >nul 2>&1
if errorlevel 1 (
    echo Adding remote repository...
    git remote add origin https://github.com/jatinjashwant/demo.git
    echo.
) else (
    echo Remote already configured.
    echo.
)

REM Add all files
echo Adding all files to staging...
git add .
echo.

REM Commit changes
echo Committing changes...
git commit -m "Add shader animation component with Next.js, TypeScript, and Tailwind CSS

- Added ShaderAnimation component with Three.js
- Configured Next.js with TypeScript and Tailwind CSS
- Set up shadcn/ui component structure
- Added deployment configuration (vercel.json)
- Fixed build issues and component cleanup
- Full screen shader animation with responsive design"
echo.

REM Set branch to main
echo Setting branch to main...
git branch -M main
echo.

REM Push to GitHub
echo Pushing to GitHub...
echo NOTE: You may be prompted for credentials.
echo Use a Personal Access Token instead of password.
echo Get token from: https://github.com/settings/tokens
echo.
git push -u origin main

if errorlevel 1 (
    echo.
    echo ========================================
    echo   Push failed!
    echo ========================================
    echo.
    echo Possible issues:
    echo - Authentication required (use Personal Access Token)
    echo - Repository doesn't exist or you don't have access
    echo - Network connection issue
    echo.
    echo To create a Personal Access Token:
    echo 1. Go to: https://github.com/settings/tokens
    echo 2. Click "Generate new token (classic)"
    echo 3. Select "repo" scope
    echo 4. Copy the token and use it as your password
    echo.
) else (
    echo.
    echo ========================================
    echo   SUCCESS! Code pushed to GitHub!
    echo ========================================
    echo.
    echo Repository: https://github.com/jatinjashwant/demo
    echo.
    echo Vercel will auto-deploy your changes.
    echo Check: https://demo-two-cyan-63.vercel.app
    echo.
)

pause

