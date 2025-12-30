# 🚀 Commit and Push to GitHub

## Quick Commands (After Installing Git)

Once Git is installed, run these commands:

```bash
cd "C:\Users\Jatin\New folder (3)\shader-app"
git init
git remote add origin https://github.com/jatinjashwant/demo.git
git add .
git commit -m "Add shader animation component with Next.js, TypeScript, and Tailwind CSS"
git branch -M main
git push -u origin main
```

## Or Use the Batch File

1. **Install Git**: https://git-scm.com/download/win
2. **Restart PowerShell/Command Prompt**
3. **Double-click**: `commit-and-push.bat`

## Authentication

When prompted for password:
- **Don't use your GitHub password**
- **Use a Personal Access Token** instead:
  1. Go to: https://github.com/settings/tokens
  2. Click "Generate new token (classic)"
  3. Select **"repo"** scope
  4. Copy the token
  5. Use it as your password when pushing

## What Will Be Committed

✅ All source code (app/, components/, lib/)
✅ Configuration files (next.config.ts, tsconfig.json, vercel.json)
✅ Package files (package.json, package-lock.json)
✅ Documentation files
❌ node_modules (excluded by .gitignore)
❌ .next build folder (excluded by .gitignore)

## After Pushing

- ✅ Code will be on GitHub: https://github.com/jatinjashwant/demo
- ✅ Vercel will auto-deploy
- ✅ Site will be live at: https://demo-two-cyan-63.vercel.app

