# Git Setup and Push Instructions

## Step 1: Install Git (if not already installed)

1. Download Git from: https://git-scm.com/download/win
2. Install it with default settings
3. Restart your terminal/PowerShell after installation

## Step 2: Navigate to Project Directory

```bash
cd "C:\Users\Jatin\New folder (3)\shader-app"
```

## Step 3: Initialize Git Repository

```bash
git init
```

## Step 4: Add Remote Repository

```bash
git remote add origin https://github.com/jatinjashwant/demo.git
```

## Step 5: Add All Files

```bash
git add .
```

## Step 6: Commit Changes

```bash
git commit -m "Initial commit: Shader animation component with Next.js, TypeScript, and Tailwind CSS"
```

## Step 7: Set Default Branch (if needed)

```bash
git branch -M main
```

## Step 8: Push to GitHub

```bash
git push -u origin main
```

**Note:** You may be prompted to authenticate. If you're using HTTPS, you'll need to:
- Use a Personal Access Token instead of your password
- Or use GitHub Desktop or GitHub CLI for easier authentication

## Alternative: Using GitHub Desktop

1. Download GitHub Desktop: https://desktop.github.com/
2. Sign in with your GitHub account
3. File → Add Local Repository → Select the `shader-app` folder
4. Click "Publish repository" and push to `jatinjashwant/demo`

## Troubleshooting

If you get authentication errors:
- Use a Personal Access Token: https://github.com/settings/tokens
- Or switch to SSH: `git remote set-url origin git@github.com:jatinjashwant/demo.git`

