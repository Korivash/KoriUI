# Migration Guide: QuaziiUI → KoriUI

## Overview

This guide will help existing QuaziiUI users transition smoothly to KoriUI. While the core functionality remains the same, there are important changes to be aware of.

## ⚠️ Important Notice

**KoriUI v2.0.0** is a rebranded and maintained continuation of QuaziiUI. All features have been preserved, with the following changes:

### What's Changed
- **Addon Name**: QuaziiUI → KoriUI
- **Command**: `/qui` → `/kori`
- **Color Scheme**: Green → Black and Blue
- **Author**: Quazii → Korivash
- **Saved Variables**: QuaziiUI_DB → KoriUI_DB

### What Stays the Same
- ✅ All features and functionality
- ✅ Module structure
- ✅ Configuration options
- ✅ Keybindings (except command changes)
- ✅ Profile system

## 🔄 Migration Steps

### Step 1: Backup Your Settings

Before migrating, backup your QuaziiUI settings:

1. Navigate to: `WTF/Account/[YourAccount]/SavedVariables/`
2. Copy these files:
   - `QuaziiUI_DB.lua`
   - `QuaziiUIDB.lua`
3. Save them somewhere safe

### Step 2: Disable QuaziiUI

1. Open the AddOns menu (character select or in-game)
2. Disable QuaziiUI
3. Exit WoW completely

### Step 3: Install KoriUI

1. Remove the old `QuaziiUI` folder from `Interface/AddOns/`
2. Extract `KoriUI` folder to `Interface/AddOns/`
3. Launch WoW

### Step 4: Convert Your Settings (Optional)

If you want to preserve your exact settings:

1. Navigate to: `WTF/Account/[YourAccount]/SavedVariables/`
2. Open your backed-up `QuaziiUI_DB.lua` in a text editor
3. Replace all instances of:
   - `QuaziiUI_DB` with `KoriUI_DB`
   - `QuaziiUI` with `KoriUI`
4. Save as `KoriUI_DB.lua` in the SavedVariables folder

**OR** Simply reconfigure using the new `/kori` command (recommended for fresh start)

### Step 5: First Launch

1. Log into your character
2. Type `/kori` to open the configuration panel
3. Review and adjust settings as needed

## 📋 Command Reference

| Old Command (QuaziiUI) | New Command (KoriUI) |
|----------------------|----------------------|
| `/qui` | `/kori` |
| `/quaziiui` | `/koriui` |
| `/kb` | `/kb` (unchanged) |
| `/cdm` | `/cdm` (unchanged) |
| `/rl` | `/rl` (unchanged) |

## 🎨 Color Scheme Changes

The color scheme has been updated from green to black and blue:

| Element | Old Color | New Color |
|---------|-----------|-----------|
| Primary | Green (#34D399) | Bright Blue (#0080FF) |
| Secondary | Cyan (#30D1FF) | Dodger Blue (#1E90FF) |
| Accent | Light Cyan (#56D1FF) | Royal Blue (#4169E1) |

If you have custom colors set, they should be preserved. The default theme colors have changed.

## 🔧 Configuration Checklist

After migration, verify these settings:

- [ ] **Cooldown Manager** - Ensure it's enabled
- [ ] **Action Bars** - Check visibility settings (mouseover vs always show)
- [ ] **Unit Frames** - Verify positions in Edit Mode
- [ ] **CDM Bar Positions** - Reposition if needed in Edit Mode
- [ ] **Data Texts** - Confirm panel configurations
- [ ] **Keybindings** - Test all keybinds still work
- [ ] **Profiles** - Switch to correct profile if using multiple

## 🐛 Troubleshooting

### Settings Not Transferring

If your settings don't transfer after manual conversion:

1. Delete `KoriUI_DB.lua` from SavedVariables
2. Reload the game
3. Reconfigure from scratch using `/kori`

### Errors After Migration

If you see Lua errors:

1. Make sure you completely removed the old QuaziiUI folder
2. Clear your cache: Delete `Cache` folder in WoW directory
3. Type `/reload` in-game
4. If errors persist, disable all other addons to check for conflicts

### UI Elements Missing

If frames or bars are missing:

1. Type `/kori editmode` to enter Edit Mode
2. Reset to default positions
3. Manually reposition elements
4. Save before exiting Edit Mode

### Colors Look Wrong

If colors appear incorrect:

1. Open `/kori`
2. Navigate to Theme/Appearance settings
3. Reset to default theme
4. Apply changes

## 📌 Key Differences to Remember

### Branding
- All "Quazii" references → "Korivash"
- Green UI theme → Blue UI theme
- Logo and assets updated

### Technical
- Different saved variables file
- New addon compartment functions
- Updated localization strings

### Functionality
- Everything works the same!
- No features removed
- Same module structure

## 💡 Pro Tips

1. **Fresh Start**: Consider starting with default KoriUI settings to experience the new blue theme
2. **Profile Backup**: Use the built-in profile export feature to backup your config
3. **Edit Mode**: Spend time in Edit Mode to perfect your layout with the new aesthetic
4. **Gradual Migration**: Test KoriUI on an alt character first before migrating your main
5. **Community**: Join the Korivash community for tips and support

## 🔮 Future Updates

KoriUI will continue to receive updates for:
- New WoW patch compatibility
- Bug fixes
- Feature enhancements
- Community-requested additions

Stay updated through:
- Discord announcements
- Twitch streams
- GitHub releases (if applicable)

## ❓ FAQ

### Can I run both QuaziiUI and KoriUI at the same time?
**No.** They will conflict. Disable QuaziiUI before enabling KoriUI.

### Will my keybindings transfer?
**Mostly yes.** Keybinds tied to specific frames should transfer if you convert your saved variables. You may need to rebind the `/kori` command shortcuts.

### Do I need to reconfigure everything?
**Not if you convert your saved variables** as described in Step 4. Otherwise, you'll need to reconfigure.

### Is KoriUI compatible with my other addons?
**Yes.** KoriUI maintains compatibility with the same addons QuaziiUI worked with.

### What about WeakAuras?
**Fully compatible.** All WeakAuras continue to work normally.

### Can I go back to QuaziiUI?
**Yes**, but remember to backup your KoriUI settings first if you want to switch back later.

## 📞 Need Help?

If you encounter issues during migration:

1. **Check the documentation**: Read the full README.md
2. **Discord support**: [Your Discord Server]
3. **GitHub issues**: Report bugs on GitHub
4. **Twitch**: Ask during live streams at twitch.tv/korivash

---

## ✅ Migration Checklist

Use this checklist to ensure a smooth transition:

**Pre-Migration**
- [ ] Backup SavedVariables files
- [ ] Screenshot current UI layout
- [ ] Export profiles if available
- [ ] Note custom settings

**During Migration**
- [ ] Disable QuaziiUI
- [ ] Remove QuaziiUI folder
- [ ] Install KoriUI folder
- [ ] Convert saved variables (optional)

**Post-Migration**
- [ ] Launch game and check for errors
- [ ] Type `/kori` to verify addon loads
- [ ] Enable Cooldown Manager
- [ ] Position UI elements in Edit Mode
- [ ] Test all major features
- [ ] Verify keybindings work
- [ ] Adjust colors/theme if desired
- [ ] Create new profile backup

**Final Verification**
- [ ] No Lua errors
- [ ] All bars visible and positioned correctly
- [ ] Cooldowns tracking properly
- [ ] Chat functioning normally
- [ ] Tooltips displaying correctly
- [ ] Combat features working
- [ ] M+ timer functional (if applicable)

---

## 🎉 Welcome to KoriUI!

Thank you for making the switch! KoriUI represents the next chapter in this addon's journey. While Quazii built an amazing foundation, Korivash is committed to continuing development and keeping this UI modern and functional for current and future WoW content.

Enjoy your new black and blue UI!

**- Korivash**
