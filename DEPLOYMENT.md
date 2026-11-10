# 🚀 ZINX HUB — DEPLOYMENT & HOSTING GUIDE

ZINX HUB is built on **Next.js 14**, making it ready for 1-click cloud deployment on platforms like **Vercel** (the creators of Next.js), **Netlify**, or any VPS.

---

## ⚡ Option 1: Vercel (Recommended & 100% Free)

Vercel provides native Next.js hosting, free SSL certificates, global edge CDN, and automatic continuous deployments whenever you update your code.

### Step 1: Push project to GitHub
1. Create a repository on [GitHub](https://github.com/new) named `zinx-hub`.
2. In your terminal, run:
```bash
git init
git add .
git commit -m "Initial ZINX HUB commit"
git branch -M main
git remote add origin https://github.com/<YOUR-USERNAME>/zinx-hub.git
git push -u origin main
```

### Step 2: Deploy on Vercel
1. Go to [https://vercel.com](https://vercel.com) and log in with GitHub.
2. Click **"Add New"** > **"Project"**.
3. Select your `zinx-hub` repository and click **Import**.
4. (Optional) In **Environment Variables**, add your Supabase credentials:
   - `NEXT_PUBLIC_SUPABASE_URL`: `https://your-project.supabase.co`
   - `NEXT_PUBLIC_SUPABASE_ANON_KEY`: `your-anon-key`
5. Click **Deploy**.
6. Within 60 seconds, your site is live with a free domain like `https://zinx-hub.vercel.app`!

---

## 🌐 Option 2: Netlify (Free)

1. Go to [https://app.netlify.com](https://app.netlify.com).
2. Click **"Add new site"** > **"Import an existing project"**.
3. Connect your GitHub repository.
4. Netlify will auto-detect Next.js:
   - Build Command: `npm run build`
   - Publish Directory: `.next`
5. Click **Deploy Site**.

---

## 🖥️ Option 3: Run Locally Anytime on Windows

A 1-click launcher has been created:
- Simply double-click **`start-zinxhub.bat`** in this folder (`d:\SRC\all downloader`).
- It automatically launches the server on [http://localhost:3000](http://localhost:3000).

---

## 🗄️ Setting Up Supabase Database (Optional)

ZINX HUB works immediately with browser local storage. To connect a live cloud database:
1. Create a free project at [https://supabase.com](https://supabase.com).
2. Go to **SQL Editor** in your Supabase dashboard.
3. Open [`supabase-schema.sql`](file:///d:/SRC/all%20downloader/supabase-schema.sql) in this repository and paste its contents into the SQL Editor, then click **Run**.
4. Copy your project URL and Anon Key into `.env.local`:
```env
NEXT_PUBLIC_SUPABASE_URL=https://your-project.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=your-anon-key
```
ZINX HUB will automatically detect and sync with your live Supabase cloud database!

