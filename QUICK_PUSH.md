# 🚀 QUICK PUSH TO GITHUB

## ⚡ FASTEST METHOD: GitHub Desktop (2 minutes)

1. Download: https://desktop.github.com/
2. Install & Sign in
3. File → Add Local Repository → Select `shader-app` folder
4. Click "Publish repository" → Name: `demo` → Push!

---

## 💻 Command Line Method (Once Git is installed)

### Step 1: Install Git (if not installed)
Download: https://git-scm.com/download/win (Install with defaults)

### Step 2: Run these commands:

```bash
cd "C:\Users\Jatin\New folder (3)\shader-app"
git init
git remote add origin https://github.com/jatinjashwant/demo.git
git add .
git commit -m "Initial commit: Shader animation component"
git branch -M main
git push -u origin main
```

**Note:** When prompted for password, use a Personal Access Token:
- Create token: https://github.com/settings/tokens
- Select `repo` scope
- Use token as password

---

## 📦 Or use the batch file:
Double-click `push.bat` (after Git is installed)

