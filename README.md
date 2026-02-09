# KoriUI - Midnight Edition
### Developed by Korivash
*Formerly QuaziiUI - Now maintained and enhanced by Korivash*

![Version](https://img.shields.io/badge/version-2.0.0-blue)
![WoW](https://img.shields.io/badge/WoW-Midnight%20Pre--Patch-blue)
![Interface](https://img.shields.io/badge/Interface-120000%2C%20120001-blue)

## 🎮 Overview

KoriUI is a comprehensive World of Warcraft user interface addon that provides a sleek, modern, and highly customizable UI experience. Originally created by Quazii and now maintained by Korivash, this addon features a stunning black and blue color scheme optimized for the Midnight expansion.

## ✨ Key Features

### Core UI Elements
- **Custom Unit Frames** - Sleek, minimal player and target frames
- **Action Bars** - Fully customizable action bar layout with mouseover functionality
- **Cast Bar** - Enhanced cast bar with modern styling
- **Buff Bar** - Clean buff/debuff tracking
- **Minimap** - Redesigned minimap with enhanced functionality
- **Data Panels** - Informative panels showing character stats and info

### Gameplay Enhancements
- **Cooldown Manager (CDM)** - Advanced cooldown tracking system
- **M+ Timer** - Mythic Plus dungeon timer with enhanced visuals
- **Key Tracker** - Track your mythic keystones
- **Dungeon Teleporter** - Quick access to dungeon teleports
- **Combat Timer** - Track time in combat
- **Rotation Assist** - Ability rotation helper
- **Custom Trackers** - Track important buffs, debuffs, and cooldowns

### Visual Enhancements
- **Custom Glows** - Highlight important abilities
- **Buff Borders** - Visual indicators for buff types
- **Crosshair/Reticle** - Custom cursor overlay options
- **Perfect Pixel** - Crisp UI scaling
- **Skinned Frames** - Consistent theming across all Blizzard frames

### Quality of Life
- **Quick Keybind** - Fast keybinding mode (`/kb`)
- **Auto Salvage** - Quickly salvage items
- **Enhanced Tooltips** - More informative item and spell tooltips
- **Chat Enhancements** - Improved chat functionality
- **Raid Buffs** - Quick raid buff checking
- **Skyriding** - Enhancements for dynamic flying

## 🎨 Theme

KoriUI features a modern **Black and Blue** color scheme:
- Primary: Dodger Blue (`#1E90FF`)
- Secondary: Royal Blue (`#4169E1`)
- Accent: Bright Blue (`#0080FF`)

The original green theme has been completely replaced with this sleek blue palette.

## 📦 Installation

1. Download the latest release of KoriUI
2. Extract the `KoriUI` folder into your `World of Warcraft/_retail_/Interface/AddOns/` directory
3. Restart World of Warcraft or reload your UI (`/reload`)
4. Type `/kori` to open the configuration menu

## ⚙️ Configuration

### Main Commands
- `/kori` - Open the KoriUI options panel
- `/kb` - Toggle quick keybind mode
- `/cdm` - Open Cooldown Manager settings
- `/rl` - Reload UI

### First Time Setup

1. **Enable Cooldown Manager**
   - Open `/kori` → Gameplay Enhancement → Enable Cooldown Manager
   - This is the core feature for tracking abilities

2. **Configure Action Bars**
   - By default, action bars are hidden on mouseover
   - Use `/kori` → Actionbars tab to customize visibility
   - Recommended: Use 100% icon size in Edit Mode

3. **Position CDM Bars**
   - Enter Edit Mode
   - Position your CDM bars (Essential, Utility, etc.)
   - **Important**: Click Save before exiting Edit Mode

4. **Customize Colors & Layout**
   - Explore all tabs in `/kori` for full customization options
   - Adjust unit frame positions via Edit Mode
   - Configure data texts and panels

## 🔧 Midnight Pre-Patch Compatibility

### Current Status: ✅ COMPATIBLE

**Interface Version:** 120000, 120001 (Midnight Pre-Patch)

KoriUI has been updated for full compatibility with WoW Midnight Pre-Patch. All core features have been tested and verified working.

### Known Issues
- Some Blizzard UI changes in Midnight may affect positioning - easily adjustable via Edit Mode
- New Midnight features being continuously integrated

### Reporting Issues
If you encounter any bugs or compatibility issues:
1. Note your exact WoW version
2. Describe the issue in detail
3. Include any error messages from `/bug` or `/bugsack`
4. Report to: [Your Issue Tracker URL]

## 📚 Module Reference

### Core Modules
- `quicore_main.lua` - Core addon functionality
- `quicore_minimap.lua` - Minimap enhancements
- `quicore_resourcebars.lua` - Class resource tracking
- `quicore_nudge.lua` - Frame positioning tools

### UI Modules
- `kori_actionbars.lua` - Action bar customization
- `kori_unitframes.lua` - Player, target, and party frames
- `kori_castbar.lua` - Enhanced casting bar
- `kori_buffbar.lua` - Buff/debuff display
- `kori_chat.lua` - Chat window enhancements
- `kori_tooltips.lua` - Tooltip improvements

### Gameplay Modules
- `kori_ncdm.lua` - Next Cooldown Manager
- `kori_mplus_timer.lua` - Mythic Plus timer
- `kori_key_tracker.lua` - Keystone tracking
- `kori_dungeon_teleport.lua` - Dungeon teleporter
- `kori_rotationassist.lua` - Rotation helper
- `kori_combattimer.lua` - Combat duration tracker

### Utility Modules
- `kori_qol.lua` - Quality of life improvements
- `kori_quicksalvage.lua` - Fast salvaging
- `kori_datapanels.lua` - Information panels
- `kori_datatexts.lua` - Data text displays
- `kori_anchoring.lua` - Frame anchoring system

## 🔌 Dependencies

KoriUI includes all necessary libraries:
- **Ace3** - Core addon framework
- **LibSharedMedia** - Media library for fonts/textures
- **LibCustomGlow** - Ability highlighting
- **LibKeyBound** - Keybinding functionality
- **LibOpenRaid** - Raid utilities
- **LibDeflate** - Data compression
- **LibDualSpec** - Dual spec support

## 🎯 Tips & Best Practices

1. **Cooldown Manager is Essential** - Make sure to enable it first
2. **Use Edit Mode** - Position everything exactly where you want it
3. **100% Icon Size** - Use full size icons on CDM bars for best visibility
4. **Save in Edit Mode** - Always save after repositioning frames
5. **Customize Gradually** - Don't try to configure everything at once
6. **Backup Settings** - Your settings are saved in `WTF/Account/[Account]/SavedVariables/KoriUI_DB.lua`

## 🛠️ Development

### Project Structure
```
KoriUI/
├── assets/               # Textures, fonts, icons
├── libs/                 # Third-party libraries
├── skinning/            # Blizzard frame skinning
├── utils/               # Core utilities and modules
├── imports/             # Profile import/export
├── Locales/             # Localization files
├── KoriUI.toc           # Addon metadata
├── init.lua             # Addon initialization
└── load.xml             # Module loading order
```

### Contributing
KoriUI is now maintained by Korivash. If you'd like to contribute:
1. Test new features thoroughly
2. Follow existing code style
3. Document any API changes
4. Submit detailed pull requests

## 📜 License

**GPLv3** - GNU General Public License v3.0

Original work by Quazii, now maintained by Korivash.

## 🙏 Credits

- **Original Developer:** Quazii (for creating the foundation)
- **Current Maintainer:** Korivash
- **Libraries:** Ace3, LibSharedMedia, and all other included libraries
- **Community:** Thanks to all testers and contributors

## 📞 Contact & Support

- **Website:** https://korivash.com
- **Discord:** [Your Discord Link]
- **Twitch:** twitch.tv/korivash
- **YouTube:** [Your YouTube Channel]

## 📝 Changelog

### Version 2.0.0 (Current)
- Complete rebranding from QuaziiUI to KoriUI
- New black and blue color scheme
- Full Midnight Pre-Patch compatibility (120000, 120001)
- Updated all references and commands to Korivash branding
- Maintained all core functionality from original
- Enhanced documentation

### Version 1.99B (Legacy - Final Quazii Release)
- Last version maintained by Quazii before project handover

---

## 💙 Thank You!

Thank you for using KoriUI! This addon represents hundreds of hours of development and testing. If you enjoy it, please consider:
- Following on Twitch
- Subscribing on YouTube  
- Sharing with friends
- Reporting bugs
- Suggesting features

**May your DPS be high and your ping be low!**
- Korivash
