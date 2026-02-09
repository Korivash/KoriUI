# KoriUI - Quick Reference Card

## 🎮 Essential Commands

| Command | Function |
|---------|----------|
| `/kori` | Open KoriUI settings panel |
| `/kori editmode` | Toggle Unit Frame Edit Mode |
| `/kb` | Quick keybind mode |
| `/cdm` | Open Cooldown Manager settings |
| `/rl` | Reload UI |

## 🎨 Color Palette

### Theme Colors (Hex)
- **Primary Blue:** `#0080FF` (RGB: 0, 128, 255)
- **Dodger Blue:** `#1E90FF` (RGB: 30, 144, 255)
- **Royal Blue:** `#4169E1` (RGB: 65, 105, 225)

### Usage in Code
```lua
-- Hex format
"|cFF0080FFText Here|r"

-- RGB format (0-1)
frame:SetBackdropColor(0.0, 0.5, 1.0, 1.0)
```

## 📋 First Time Setup Checklist

1. Type `/kori` after installation
2. Enable **Cooldown Manager** in Gameplay Enhancement
3. Configure Action Bar visibility (Actionbars tab)
4. Enter Edit Mode (`/kori editmode`)
5. Position all UI elements
6. Set CDM bars to 100% icon size
7. **SAVE** before exiting Edit Mode!

## 🔧 Key Features

### Core UI
- ✅ Custom Action Bars (mouseover or always visible)
- ✅ Player & Target Unit Frames
- ✅ Enhanced Cast Bar
- ✅ Buff/Debuff Bar
- ✅ Redesigned Minimap
- ✅ Data Panels

### Gameplay
- ✅ Cooldown Manager (CDM) - **Must enable!**
- ✅ M+ Timer
- ✅ Keystone Tracker
- ✅ Combat Timer
- ✅ Rotation Assist

### Utilities
- ✅ Quick Keybind (`/kb`)
- ✅ Dungeon Teleporter
- ✅ Auto Salvage
- ✅ Enhanced Tooltips
- ✅ Raid Buffs Checker

## 🎯 Pro Tips

1. **CDM is Essential** - Enable it first thing
2. **100% Icon Size** - Use full size on CDM bars in Edit Mode
3. **Save Often** - Always save after repositioning in Edit Mode
4. **Gradual Config** - Don't try to configure everything at once
5. **Backup Settings** - Export profiles regularly

## 📁 File Locations

### Addon Location
```
World of Warcraft/_retail_/Interface/AddOns/KoriUI/
```

### Saved Settings
```
WTF/Account/[Account]/SavedVariables/KoriUI_DB.lua
```

## 🐛 Quick Troubleshooting

| Issue | Solution |
|-------|----------|
| Addon not showing | Check AddOns menu, enable KoriUI |
| `/kori` doesn't work | Type `/reload` to reload UI |
| UI elements missing | Enter Edit Mode, reposition frames |
| Lua errors | Disable other UI addons, check conflicts |
| Wrong colors | Reset theme in `/kori` → Appearance |

## 📊 Performance

- Memory Usage: ~15-25 MB (typical)
- Load Time: < 2 seconds
- CPU Impact: Minimal (optimized)

## 🔗 Important Links

- **Documentation:** `README.md`
- **Migration Guide:** `MIGRATION.md` (from QuaziiUI)
- **Installation:** `INSTALLATION.md`
- **Changelog:** `CHANGELOG.md`
- **Website:** https://korivash.com

## 📝 Module Reference

### Core Modules
- `koricore_main.lua` - Main core functionality
- `koricore_minimap.lua` - Minimap customization
- `koricore_resourcebars.lua` - Class resources
- `koricore_nudge.lua` - Frame positioning

### UI Modules
- `kori_actionbars.lua` - Action bars
- `kori_unitframes.lua` - Unit frames
- `kori_castbar.lua` - Cast bar
- `kori_buffbar.lua` - Buffs/debuffs
- `kori_chat.lua` - Chat enhancements

### Gameplay Modules
- `kori_ncdm.lua` - Next Cooldown Manager
- `kori_mplus_timer.lua` - M+ timer
- `kori_key_tracker.lua` - Keystone tracking
- `kori_rotationassist.lua` - Rotation helper
- `kori_combattimer.lua` - Combat timer

## 🎮 Keybind Tips

Use `/kb` to enter quick keybind mode:
- **Hover** over action button
- **Press** desired key
- **Mousewheel** also works!
- **ESC** to exit keybind mode

## 💾 Backup Your Config

Before major updates or changes:

1. Navigate to SavedVariables folder
2. Copy `KoriUI_DB.lua`
3. Store safely
4. Restore if needed

## 🌟 Recommended Settings

### Action Bars
- Mouseover: Personal preference
- Scale: 100% or 0.8-0.9
- Spacing: 4-6 pixels

### Cooldown Manager
- Essential Bar: Top center or bottom center
- Utility Bar: Below essential
- Icon Size: 100% (via Edit Mode)

### Unit Frames
- Style: Minimal
- Size: Medium (adjust to preference)
- Position: Use Edit Mode

## 🎨 Customization

Can customize:
- ✅ Colors and theme
- ✅ Frame positions
- ✅ Bar visibility
- ✅ Font styles
- ✅ Icon sizes
- ✅ Data text info

Cannot customize (without code edits):
- ❌ Core module structure
- ❌ Fundamental layouts
- ❌ Library dependencies

## 🔄 Migration from QuaziiUI

**Key Changes:**
- `/qui` → `/kori`
- Green theme → Blue theme
- `QuaziiUI_DB` → `KoriUI_DB`

See `MIGRATION.md` for detailed guide!

## ✨ What Makes KoriUI Special

1. **Comprehensive** - Everything you need in one addon
2. **Customizable** - Extensive configuration options
3. **Performant** - Optimized and efficient
4. **Modern** - Black & blue aesthetic
5. **Maintained** - Active development by Korivash
6. **Compatible** - Works with Midnight Pre-Patch

---

## 🆘 Need Help?

**In-Game Issues:**
1. Check this reference card
2. Read `README.md`
3. Review `INSTALLATION.md`
4. Check troubleshooting section

**Still Stuck?**
- Discord: [Your Discord]
- Twitch: twitch.tv/korivash
- Website: https://korivash.com

---

**Print this card or save for quick reference!**

*KoriUI v2.0.0 - Developed by Korivash*
*For WoW Midnight Pre-Patch (Interface 120000, 120001)*
