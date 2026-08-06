# 🚀 Publishing "Deutsch Tutor" — Website & App

Your tutor is a **Progressive Web App (PWA)** — one HTML file with everything embedded
(3,502 words, audio, lessons). That means the SAME files can become: a website, a phone app,
and even a store app. No coding needed.

## 📁 The files to publish (folder `web/`)

```
web/
├── index.html              ← the whole tutor app (do not rename)
├── manifest.webmanifest    ← makes it installable as an app
├── sw.js                   ← offline support
└── icons/                  ← app icons (192, 512, maskable)
```
Upload this folder as-is. Nothing else needed.

---

## 🌐 OPTION 1 — Website (free, ~5 minutes)

Pick ONE — all free, all work with drag & drop:

| Service | How | URL you get |
|---|---|---|
| **GitHub Pages** | Create a GitHub account → New repository → upload the `web/` folder → Settings → Pages → deploy from branch | `yourname.github.io/deutsch-tutor` |
| **Netlify Drop** | Go to `app.netlify.com/drop` → drag the `web/` folder in | `random-name.netlify.app` |
| **Cloudflare Pages** | `dash.cloudflare.com` → Pages → Create → Direct Upload → drag folder | `your-project.pages.dev` |
| **Vercel** | `vercel.com` → New Project → drag & drop | `your-project.vercel.app` |

**Important:** host the files (folder) on the website, **not** a download link — visitors
open `index.html` in their browser. It works offline after first visit (service worker).

**Custom domain** (optional, ~10–15 €/year): buy a domain (e.g. `deutschtutor.de`) at
Namecheap/GoDaddy and point it at the host — each service has a 2-minute guide.

---

## 📱 OPTION 2 — Install as a phone app (free, no store)

Once the site is live on any HTTPS link:

- **Android (Chrome):** open the site → ⋮ menu → **"Add to Home screen"** / **"Install app"**
  → it appears as a normal app with your icon, full-screen, works offline. 📲
- **iPhone (Safari):** open the site → Share button → **"Add to Home Screen"** → same result.
- **Desktop:** Chrome/Edge → install icon in the address bar → opens in its own window.

This already works thanks to `manifest.webmanifest` + `sw.js` — no app store needed.
Your streak/XP are saved on the device.

---

## 🏪 OPTION 3 — Google Play Store (real APK, ~1 hour + $25)

1. Host the site (Option 1).
2. Go to **pwabuilder.com** → paste your site URL → it packages an Android app automatically.
3. Download the APK/AAB, upload to **Google Play Console** (one-time $25 registration).
4. After review (~days), it's on the Play Store.

---

## 🍎 OPTION 4 — Apple App Store (more effort, $99/year)

iOS requires an Apple Developer account ($99/year) and Xcode.
**Skip it unless you really need the App Store** — the "Add to Home Screen" PWA
(Option 2) covers 95% of use cases on iPhone.

---

## 💻 OPTION 5 — Desktop app (Windows/Mac/Linux)

- Easiest: Chrome/Edge → install as app (Option 2).
- Real .exe/.dmg: wrap with **Tauri** or **Electron** (needs some developer work — happy to help).

---

## 🔁 Updating after changes

1. Edit the data files / rebuild: `python3 build.py` (the `web/` folder gets a new
   `index.html` via `cp deutsch-tutor.html web/index.html`).
2. Re-upload just `index.html` (overwrite). The app updates automatically on next visit
   (bump the version in `sw.js` if users see an old version).

---

## ✅ Checklist before going live

- [ ] Open the site on your phone → loads correctly
- [ ] Toggle മലയാളം / English works
- [ ] "Add to Home screen" shows the German-flag book icon
- [ ] Turn on airplane mode → app still opens (offline)
- [ ] Daily practice streak saves after closing the app
- [ ] Share the link with a friend on WhatsApp to test

---

## 🛠 If you want a real "app" feel beyond PWA

- **Capacitor** (free, open-source): wraps the site into a native Android/iOS project —
  needs Node.js + Android Studio for building.
- Ask me: I can scaffold a Capacitor project in this workspace for you.
