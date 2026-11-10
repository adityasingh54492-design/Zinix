# ⚡ ZINX HUB — All-In-One Software Download Website

ZINX HUB is a modern, premium, dark-themed software directory and download platform built with **Next.js 14**, **TypeScript**, **Tailwind CSS**, and **Supabase**.

---

## 🌟 Key Features

1. **Modern Dark Glassmorphic Design**
   - Deep obsidian and charcoal background (`#080B10`) with glowing cyan, blue, and purple gradient accents.
   - Smooth glassmorphism cards (`backdrop-blur-md bg-white/[0.03] border border-white/10`) inspired by high-end technology dashboards.
   - Fully responsive for mobile, tablet, and desktop monitors.

2. **Complete 8 Categories & 48 Verified Applications**
   - **🌐 Browsers**: Google Chrome, Mozilla Firefox, Microsoft Edge, Opera GX, Brave Browser, Vivaldi, Tor Browser
   - **💬 Communication**: Discord, WhatsApp, Telegram, Skype, Zoom, Microsoft Teams
   - **🎵 Music & Entertainment**: Spotify, VLC Media Player, YouTube Music, Apple Music
   - **🎮 Gaming**: Steam, Epic Games Launcher, Riot Client, Ubisoft Connect, EA App, Battle.net, Minecraft Launcher
   - **🖥️ PC Utilities**: 7-Zip, WinRAR, Everything, ShareX, PowerToys, CrystalDiskInfo, HWMonitor
   - **🎨 Creative & Editing**: OBS Studio, Blender, GIMP, Krita, DaVinci Resolve, Audacity, HandBrake
   - **🔒 Security & VPN**: Malwarebytes, Bitwarden, Proton VPN, Windows Security
   - **📦 Development Tools**: Visual Studio Code, Git, Python, Node.js, Android Studio, Notepad++

3. **100% Verified Official Developer Downloads**
   - Direct links pointing exclusively to original vendor domains (`google.com`, `mozilla.org`, `discord.com`, `store.steampowered.com`, `obsproject.com`, etc.).
   - Interstitial download modal with safety confirmation badge, real-time download countdown, and confetti celebration.
   - External download domain indicators and "Report Broken Link" ticket system.

4. **Dedicated Software Details Pages (`/software/[slug]`)**
   - Large application logo and version badges.
   - Developer credentials and verified file sizes.
   - Full description and key features list.
   - Step-by-step installation instructions.
   - System requirements (OS, Processor, RAM, Disk).
   - Related software in the same category.

5. **Search & Real-time Filters**
   - Instant live search modal (`/` or `Ctrl+K`) with suggestion pills.
   - Filter by category and OS platform (Windows, macOS, Linux).
   - Sort by Top Rated, Most Downloaded, Recently Updated, and Alphabetical (A-Z).

6. **Secure Admin Dashboard (`/admin`)**
   - Master passcode gate (Default: `admin123`).
   - Add new software entries with custom slugs, categories, and direct URLs.
   - Edit existing software and toggle Featured / Trending badges.
   - Delete software entries with confirmation.
   - Review and resolve broken link reports submitted by users.
   - Download click leaderboards and statistics.

7. **Dual Storage Engine (Supabase + Local Fallback)**
   - Includes `supabase-schema.sql` for 1-click database setup.
   - Seamlessly uses Supabase when configured, or auto-syncs with localStorage if Supabase credentials are pending.

---

## 🚀 Running the Project

```bash
# Start development server
npm run dev

# Or start production server
npm run build
npm run start
```

Open [http://localhost:3000](http://localhost:3000) in your browser.

---

## 🔐 Admin Access

- **Route**: `/admin`
- **Default Master Passcode**: `admin123`
