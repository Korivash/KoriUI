# KoriUI Installation Guide

## Quick Start

### Prerequisites
- World of Warcraft (Retail - Midnight Pre-Patch or later)
- No other UI compilation addons (ElvUI, Tukui, etc.)

### Installation Steps

1. **Download KoriUI**
   - Download the latest release
   - Extract the ZIP file

2. **Install to AddOns Folder**
   ```
   World of Warcraft/
   └── _retail_/
       └── Interface/
           └── AddOns/
               └── KoriUI/  <- Place folder here
   ```

3. **Launch WoW**
   - Completely exit WoW if running
   - Launch Battle.net
   - Start World of Warcraft (Retail)

4. **Verify Installation**
   - At character select, click "AddOns"
   - Verify "KoriUI" is listed and checked
   - Click "Okay"

5. **First Time Setup**
   - Log into a character
   - Type `/kori` in chat
   - Configure your preferences

## Detailed Installation

### Windows

1. Navigate to your WoW installation folder (typically):
   ```
   C:\Program Files (x86)\World of Warcraft\_retail_\Interface\AddOns\
   ```

2. Extract the `KoriUI` folder into the `AddOns` directory

3. Your structure should look like:
   ```
   AddOns/
   ├── KoriUI/
   │   ├── assets/
   │   ├── libs/
   │   ├── utils/
   │   ├── KoriUI.toc
   │   ├── init.lua
   │   └── ...
   ```

### macOS

1. Navigate to your WoW installation folder:
   ```
   /Applications/World of Warcraft/_retail_/Interface/AddOns/
   ```

2. Extract the `KoriUI` folder into the `AddOns` directory

3. Verify permissions allow WoW to read the files

### Linux (Wine/Proton)

1. Navigate to your WoW installation folder:
   ```
   ~/.wine/drive_c/Program Files/World of Warcraft/_retail_/Interface/AddOns/
   ```
   Or for Steam/Proton:
   ```
   ~/.steam/steam/steamapps/compatdata/[APPID]/pfx/drive_c/Program Files/World of Warcraft/_retail_/Interface/AddOns/
   ```

2. Extract the `KoriUI` folder into the `AddOns` directory

## Configuration

### First Launch Checklist

After installation, complete these steps:

1. **Open Configuration**
   ```
   /kori
   ```

2. **Enable Cooldown Manager**
   - Settings → Gameplay Enhancement
   - Enable "Cooldown Manager"
   - Click Apply

3. **Configure Action Bars**
   - Settings → Actionbars
   - Adjust visibility (default: mouseover)
   - Set preferred layout

4. **Position UI Elements**
   ```
   /kori editmode
   ```
   - Drag frames to desired positions
   - Resize as needed
   - **Save before exiting!**

5. **Customize Theme** (Optional)
   - Settings → Appearance
   - Adjust colors if desired
   - Set font preferences

### Recommended Settings

For best experience, these settings are recommended:

**Game Settings:**
- Interface Scale: 100% (or 0.64 for 4K)
- UI Scale: Adjust for your resolution
- Action Bars: Hide default UI elements

**KoriUI Settings:**
- CDM: Enabled
- Action Bar Mouseover: Based on preference
- Unit Frame Style: Minimal
- Icon Size: 100% on CDM bars

## Troubleshooting

### KoriUI Not Appearing in AddOns List

**Solution:**
1. Verify folder structure is correct
2. Check that `KoriUI.toc` exists in the folder
3. Ensure folder is named exactly "KoriUI" (case sensitive)
4. Restart Battle.net launcher completely

### No UI Changes After Installation

**Solution:**
1. Type `/reload` in-game
2. Check if addon is enabled in AddOns menu
3. Type `/kori` to open settings
4. Enable features in configuration panel

### Lua Errors Appearing

**Solution:**
1. Make sure you have the latest version
2. Disable other UI addons temporarily
3. Clear WoW cache:
   - Close WoW
   - Delete `Cache` folder in WoW directory
   - Restart WoW
4. Check for addon conflicts

### UI Elements Not Positioned Correctly

**Solution:**
1. Enter Edit Mode: `/kori editmode`
2. Reset to defaults if needed
3. Manually reposition frames
4. Remember to Save before exiting

### Can't Find `/kori` Command

**Solution:**
1. Ensure KoriUI is enabled in AddOns menu
2. Type `/reload` to reload UI
3. Check for typos (it's `/kori` not `/qui`)
4. Verify installation was successful

### Colors Look Wrong

**Solution:**
1. Open `/kori` → Appearance
2. Reset to default theme
3. Check if you have other theme addons interfering
4. Clear cache and reload

## Advanced Installation

### Clean Install

For a completely fresh start:

1. **Backup Current Settings** (if keeping)
   ```
   WTF/Account/[Account]/SavedVariables/KoriUI_DB.lua
   ```

2. **Remove Old Files**
   - Delete any old KoriUI or QuaziiUI folders
   - Delete saved variables (for truly fresh start)
   - Clear WoW cache

3. **Install Fresh Copy**
   - Extract new KoriUI to AddOns
   - Launch WoW
   - Configure from scratch

### Multiple Accounts/Characters

KoriUI can save settings per character or account-wide:

1. **Profile System**
   - Create profiles for different characters
   - Share profiles across characters
   - Export/import profiles

2. **Per-Character Settings**
   - Some settings auto-save per character
   - Unit frame positions are character-specific
   - Keybinds can be character-specific

### Beta/PTR Installation

To use KoriUI on PTR or Beta:

1. Copy KoriUI folder to:
   ```
   World of Warcraft/_ptr_/Interface/AddOns/
   ```
   or
   ```
   World of Warcraft/_beta_/Interface/AddOns/
   ```

2. Update TOC interface version if needed
3. Test for compatibility issues

## Post-Installation

### Optimization Tips

1. **Position Everything First**
   - Use Edit Mode extensively
   - Position all bars and frames
   - Save often

2. **Configure Cooldown Manager**
   - Essential for gameplay
   - Position CDM bars via Edit Mode
   - Use 100% icon size

3. **Set Up Keybinds**
   - Use `/kb` for quick keybind mode
   - Bind frequently used functions
   - Test in combat situations

4. **Customize Gradually**
   - Don't change everything at once
   - Test each change before moving on
   - Keep notes of what works

### Backup Your Configuration

Regular backups prevent data loss:

1. **Locate SavedVariables**
   ```
   WTF/Account/[Account]/SavedVariables/KoriUI_DB.lua
   ```

2. **Copy to Safe Location**
   - External drive
   - Cloud storage
   - Version control

3. **Before Major Updates**
   - Always backup before updating WoW
   - Backup before changing major settings
   - Export profiles if available

## Additional Resources

### Commands Reference
- `/kori` - Main settings
- `/kb` - Quick keybind mode
- `/cdm` - Cooldown Manager settings
- `/rl` or `/reload` - Reload UI

### Documentation
- `README.md` - Full feature list
- `MIGRATION.md` - Upgrade from QuaziiUI
- `CHANGELOG.md` - Version history

### Support
- Website: https://korivash.com
- Twitch: twitch.tv/korivash
- Discord: [Your Discord]

## Success Checklist

Installation complete when:
- [ ] KoriUI folder in AddOns directory
- [ ] Addon appears in WoW AddOns menu
- [ ] `/kori` command works
- [ ] Can access configuration panel
- [ ] Cooldown Manager enabled
- [ ] UI elements visible in-game
- [ ] Edit Mode accessible
- [ ] No Lua errors
- [ ] All features working as expected

---

**Installation Issues?**

If you continue to experience problems:
1. Check the Troubleshooting section above
2. Visit the Discord community
3. Watch installation video tutorial (if available)
4. Ask for help during Twitch streams

**Happy Gaming!**
- Korivash
