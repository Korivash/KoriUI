# 🌌 KoriUI
*A continuation of Quazii’s iconic WoW interface — rebuilt, refined, and reborn.*

![KoriUI Banner](https://raw.githubusercontent.com/yourusername/KoriUI/main/.github/assets/banner.png)

---

## ✨ Overview
**KoriUI** is a sleek, performance-optimized **World of Warcraft UI overhaul** that builds upon the foundation laid by **Quazii’s UI**. After Quazii stepped away and removed his repositories, the project has been reborn and expanded by the community — focused on modernizing, simplifying, and optimizing the experience.

> 🎮 Designed by players, for players.  
> 🧠 Powered by Ace3 and open-source collaboration.  
> 💎 Minimal, responsive, and visually unified.

---

## 🧩 Features
- 🖼 **Custom Interface Skins** — Complete restyling of core frames like Character, Loot, Ready Check, Objective Tracker, etc.  
- ⏱ **Mythic+ Timer Enhancements** — Sleek, readable timer overlay with custom fonts.  
- 🧍 **Unit & Power Bars** — Clean alternate power bar and improved status visuals.  
- 🧭 **Cursor & Icon Themes** — Custom cursor rings and icon borders using Kori’s graphic assets.  
- 🌐 **Localization Support** — Full translations for 10+ languages via the `Locales/` directory.  
- 🔧 **Ace3 Modular Core** — Lightweight, extensible backend for performance and customization.

---

## 📁 Directory Structure

```
KoriUI/
├── assets/                # Fonts, textures, icons, cursors
├── skinning/              # Lua modules for UI elements
├── Locales/               # Translations (enUS, frFR, etc.)
├── libs/                  # Ace3, LibDeflate, LibSharedMedia, etc.
├── init.lua               # Addon initialization
├── load.xml               # XML load order
├── Bindings.xml           # Custom key bindings
└── KoriUI.toc             # AddOn metadata
```

---

## ⚙️ Installation
1. Download the latest release from the [Releases page](https://github.com/yourusername/KoriUI/releases).  
2. Extract the folder `KoriUI` to your WoW AddOns directory:
   ```
   _retail_/Interface/AddOns/KoriUI
   ```
3. Restart World of Warcraft or reload your UI with `/reload`.  
4. Enjoy your refined interface!

---

## 🧠 Commands & Configuration
Most settings are managed automatically for a plug-and-play experience, but you can reset or adjust certain modules via slash commands:

| Command | Description |
|----------|-------------|
| `/kori` | Opens KoriUI console (if available) |
| `/kori reset` | Resets profiles to default |
| `/reload` | Reloads the UI |

> Future updates will include a configuration window powered by **AceConfig**.

---

## 🖋 Credits
- **Original Concept & Framework** — [Quazii](https://www.youtube.com/c/Quazii)  
- **Project Continuation & Development** — [Korivash](https://www.korivash.com) and community contributors  
- **Libraries Used:** Ace3, LibDeflate, LibCustomGlow, LibKeyBound, LibSharedMedia, LibOpenRaid  

---

## 🤝 Contributing
We welcome pull requests!  
To contribute:
1. Fork the repo  
2. Create a new branch (`feature/awesome-new-skin`)  
3. Commit and push your changes  
4. Submit a Pull Request with details and screenshots  

> 💡 If you’re extending Quazii modules, please maintain naming conventions and code cleanliness.

---

## 📜 License
This project is open source under the **MIT License**.  
All original visual assets (`assets/`) are © KoriUI Project unless otherwise stated.

---

## ❤️ Support the Project
If you love KoriUI and want to help it grow:
- 🌟 Star the repository  
- 🐛 Report issues and feature requests  
- ☕ [Support Korivash](https://www.korivash.com)  

---

## 🧩 Future Plans
- ✅ Replace deprecated Quazii dependencies  
- 🔧 Implement modular UI settings  
- 🌙 Add dark/light UI toggle  
- 🧱 Integrate WeakAura pack sync  

---

**KoriUI — Elevate your game. Simplify your screen.**
