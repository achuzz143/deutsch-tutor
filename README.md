# 🇩🇪 Deutsch Tutor — Learn German with Malayalam

A personal German tutor for Malayalam speakers — **3,500+ words**, grammar & punctuation
lessons (A1–A2), quizzes, flashcards, live translation, audio phrasebook and daily practice.
Everything runs in the browser, fully offline-capable.

**🌐 Live site:** `https://YOUR-USERNAME.github.io/deutsch-tutor/` (after enabling Pages)

## Features
- 📚 3,502-word vocabulary (Collins 3000 + DK Visual Dictionary imported), 26 categories
- 📘 37 bilingual lessons (English / മലയാളം)
- 🃏 Flashcards · 📝 Quiz (5 modes) · 🎯 Daily practice with streak & XP
- ⚡ Live word-by-word translation (offline dictionary)
- 💬 139 phrases, 20 with audio · 📲 Installable as an app (PWA)

## Run locally
Open `index.html` in any browser — no server needed. Or: `python3 -m http.server 8080`.

## Files
| File | Purpose |
|---|---|
| `index.html` | The whole app (self-contained) |
| `manifest.webmanifest` + `sw.js` | PWA: install as app, offline |
| `icons/` | App icons |
| `.nojekyll` | Tells GitHub Pages not to run Jekyll |

## Publish to GitHub Pages
1. Create a **public** repository named `deutsch-tutor` on GitHub.
2. Upload these files (drag & drop, or `git push`).
3. Repo → **Settings → Pages** → Source: *Deploy from a branch* → `main` / `/ (root)` → Save.
4. Your site is live at `https://<username>.github.io/deutsch-tutor/` (≈1–2 min).
