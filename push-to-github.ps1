# PowerShell script to push code to GitHub
# Make sure Git is installed before running this script

Write-Host "Checking Git installation..." -ForegroundColor Yellow

# Check if git is available
try {
    $gitVersion = git --version
    Write-Host "Git found: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "ERROR: Git is not installed or not in PATH!" -ForegroundColor Red
    Write-Host "Please install Git from: https://git-scm.com/download/win" -ForegroundColor Yellow
    Write-Host "After installation, restart PowerShell and run this script again." -ForegroundColor Yellow
    exit 1
}

# Navigate to project directory
$projectPath = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $projectPath
Write-Host "`nWorking in: $projectPath" -ForegroundColor Cyan

# Initialize git if not already initialized
if (-not (Test-Path ".git")) {
    Write-Host "`nInitializing Git repository..." -ForegroundColor Yellow
    git init
} else {
    Write-Host "Git repository already initialized" -ForegroundColor Green
}

# Check if remote exists
$remoteExists = git remote get-url origin 2>$null
if ($LASTEXITCODE -ne 0) {
    Write-Host "`nAdding remote repository..." -ForegroundColor Yellow
    git remote add origin https://github.com/jatinjashwant/demo.git
} else {
    Write-Host "Remote already exists: $remoteExists" -ForegroundColor Green
    Write-Host "Updating remote URL..." -ForegroundColor Yellow
    git remote set-url origin https://github.com/jatinjashwant/demo.git
}

# Add all files
Write-Host "`nAdding all files..." -ForegroundColor Yellow
git add .

# Check if there are changes to commit
$status = git status --porcelain
if ($status) {
    Write-Host "`nCommitting changes..." -ForegroundColor Yellow
    git commit -m "Initial commit: Shader animation component with Next.js, TypeScript, and Tailwind CSS"
} else {
    Write-Host "No changes to commit" -ForegroundColor Yellow
}

# Set branch to main
Write-Host "`nSetting branch to main..." -ForegroundColor Yellow
git branch -M main

# Push to GitHub
Write-Host "`nPushing to GitHub..." -ForegroundColor Yellow
Write-Host "You may be prompted for credentials." -ForegroundColor Cyan
Write-Host "If using HTTPS, use a Personal Access Token instead of password." -ForegroundColor Cyan
Write-Host "Get token from: https://github.com/settings/tokens" -ForegroundColor Cyan
Write-Host ""

git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "`n✅ Successfully pushed to GitHub!" -ForegroundColor Green
    Write-Host "Repository: https://github.com/jatinjashwant/demo" -ForegroundColor Cyan
} else {
    Write-Host "`n❌ Push failed. Please check the error messages above." -ForegroundColor Red
    Write-Host "Common issues:" -ForegroundColor Yellow
    Write-Host "  - Authentication required (use Personal Access Token)" -ForegroundColor Yellow
    Write-Host "  - Repository doesn't exist or you don't have access" -ForegroundColor Yellow
}

