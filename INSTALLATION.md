# 🚀 Kori UI - Installation & Setup Guide

Complete guide to installing, configuring, and optimizing Kori UI for your gameplay style.

---

## Table of Contents

1. [System Requirements](#system-requirements)
2. [Installation Methods](#installation-methods)
3. [First Launch](#first-launch)
4. [Initial Configuration](#initial-configuration)
5. [Role-Specific Setups](#role-specific-setups)
6. [Advanced Configuration](#advanced-configuration)
7. [Profile Management](#profile-management)
8. [Troubleshooting](#troubleshooting)

---

## System Requirements

### Minimum Requirements
- **WoW Version**: Retail - The War Within (12.0.0+) or Midnight (12.0.1+)
- **Operating System**: Windows 7+ / macOS 10.13+ / Linux (via Wine/Proton)
- **RAM**: 8GB minimum (16GB recommended)
- **Storage**: 50MB for addon + space for saved variables

### Recommended Specifications
- **WoW Version**: Latest retail patch
- **RAM**: 16GB+
- **CPU**: Modern quad-core processor
- **Graphics**: Dedicated GPU (for best visual effects)
- **UI Scale**: 1920x1080 or higher resolution

### Compatibility

#### Compatible Addons
Kori UI works well with:
- ✅ **WeakAuras 2** - Full compatibility, recommended
- ✅ **Details!** - Damage meter integration
- ✅ **DBM/BigWigs** - Boss mod integration
- ✅ **OmniCC** - Cooldown number integration
- ✅ **Bagnon/AdiBags** - Bag addon compatibility
- ✅ **Plater** - Nameplate addon (recommended)
- ✅ **Simulationcraft** - Rotation helper compatibility

#### Incompatible Addons
Kori UI may conflict with:
- ❌ **ElvUI** - Complete UI replacement, choose one
- ❌ **TukUI** - Complete UI replacement, choose one
- ❌ **Bartender4** - Action bar conflicts (use Kori's action bars)
- ❌ **Shadowed Unit Frames** - Unit frame conflicts (use Kori's unit frames)
- ❌ **Dominos** - Action bar conflicts

---

## Installation Methods

### Method 1: Manual Installation (Recommended)

1. **Download the Latest Release**
   - Visit [GitHub Releases](https://github.com/korivash/KoriUI/releases)
   - Download `KoriUI-vX.X.X.zip`
   - Save to your downloads folder

2. **Locate Your WoW AddOns Folder**
   - **Windows**: `C:\Program Files (x86)\World of Warcraft\_retail_\Interface\AddOns\`
   - **macOS**: `/Applications/World of Warcraft/_retail_/Interface/AddOns/`
   - **Linux**: `~/.wine/drive_c/Program Files (x86)/World of Warcraft/_retail_/Interface/AddOns/`

3. **Extract the Addon**
   - Extract `KoriUI-vX.X.X.zip`
   - Drag the `KoriUI` folder into the `AddOns` directory
   - **Important**: The folder structure should be `AddOns/KoriUI/KoriUI.toc`

4. **Verify Installation**
   - Launch World of Warcraft
   - At the character selection screen, click **"AddOns"** (bottom-left)
   - Find **"Kori UI (Midnight)"** in the list
   - Ensure the checkbox is **checked** (enabled)
   - Click **"Okay"** and log in to your character

### Method 2: CurseForge Client

1. **Install CurseForge Client**
   - Download from [CurseForge.com](https://www.curseforge.com/)
   - Install and launch the application
   - Select **World of Warcraft** as your game

2. **Find Kori UI**
   - Click **"Get More Addons"**
   - Search for **"Kori UI"**
   - Click **"Install"**

3. **Automatic Updates**
   - CurseForge will automatically check for updates
   - Click **"Update"** when new versions are available

### Method 3: WoWUp Client

1. **Install WoWUp Client**
   - Download from [WoWUp.io](https://wowup.io/)
   - Install and configure for your WoW installation

2. **Add Kori UI**
   - Click **"Get Addons"**
   - Search for **"Kori UI"**
   - Click **"Install"**

3. **Sync and Update**
   - WoWUp will manage updates automatically

---

## First Launch

### Login Sequence

When you first log in with Kori UI enabled:

1. **Loading Screen**
   - Kori UI initializes during loading
   - Registers all modules and features
   - Loads your saved settings (if any)

2. **Welcome Message**
   - You'll see a welcome message in chat:
     ```
     |cFF1E90FFKori UI|r loaded. |cFFFFFF00/kori|r to setup.
     ```

3. **Setup Reminders**
   - The addon will display important setup reminders:
     - Enable Cooldown Manager
     - Action bars hidden by default (mouseover to reveal)
     - CDM icon sizing recommendations
     - Edit Mode positioning tips

### Opening the Configuration Panel

To begin configuration:
- **Chat Command**: Type `/kori` or `/koriui`
- **Keybind**: Bind a key via `ESC` → `Keybinds` → `AddOns` → `Kori UI` → `Toggle Options`
- **Addon Compartment**: Click the Kori UI icon near your minimap

---

## Initial Configuration

### Quick Setup Wizard (Coming in Future Update)

For now, manual configuration is required. Follow this recommended order:

### Step 1: Choose Your Profile Type

1. Open `/kori`
2. Navigate to **Profiles** tab
3. Choose a profile approach:
   - **Default Profile**: Good for single-character users
   - **Class Profile**: Share settings across all characters of same class
   - **Spec Profile**: Different settings per specialization
   - **Custom Profile**: Create named profiles for different content types

**Recommendation**: Start with Default profile, refine later

### Step 2: Configure Action Bars

1. Navigate to **Actionbars** tab
2. **Visibility Settings**:
   - Decide which action bars to show (1-8)
   - Configure mouseover fade:
     - `Fade Opacity`: 0-20% for mostly invisible, 50-80% for slight fade
     - `Fade Speed`: 0.1s for instant, 0.3-0.5s for smooth
   - Combat visibility: Enable to always show bars in combat

3. **Keybind Display**:
   - Toggle keybind text visibility
   - Adjust keybind text size (8-16px typical)

4. **Icon Styling**:
   - Enable icon borders (recommended)
   - Choose border color (class-colored recommended)
   - Enable proc glows for cooldown-ready abilities

5. **Apply and Test**:
   - Click **Save** (if available) or changes apply immediately
   - Use `/kb` to set keybinds quickly

### Step 3: Position Unit Frames

1. Press `ESC` → **Edit Mode** (Blizzard's system)
2. Alternatively, type `/kori editmode` for Kori-specific edit mode
3. **Player Frame**:
   - Drag to preferred position (typically bottom-center or left)
   - Resize if needed
4. **Target Frame**:
   - Position near player frame or right side of screen
   - Ensure castbar is visible
5. **Focus Frame**:
   - Place in easy-to-glance location (often near target frame)
6. **Party Frames**:
   - Arrange for your role:
     - **DPS**: Small, out of the way
     - **Healer**: Large, central
     - **Tank**: Medium, near player frame
7. Click **Save Layout** when finished

### Step 4: Configure Minimap

1. Open `/kori` → **Minimap** section
2. **Shape & Size**:
   - Choose shape: Circular (classic) or Square (more screen space)
   - Adjust size: 140-200px is typical
3. **Button Organization**:
   - Enable auto-organization (recommended)
   - Set mouseover fade if you want buttons hidden
4. **Zone Text**:
   - Enable/disable zone name above minimap
   - Adjust font size
5. **Skyriding Vigor**:
   - Enable vigor bar (if you use dragonriding)
   - Choose color for vigor charges

### Step 5: Enable Cooldown Manager

1. Open `/kori` → **Cooldown Manager**
2. **Enable CDM**: Check "Enable Cooldown Manager"
3. **Choose Bars**:
   - Essential: Major DPS/healing cooldowns
   - Utility: CC, interrupts, movement
   - Defensive: Defensive CDs, immunities
4. **Position Bars**:
   - Enter Edit Mode (`ESC` → Edit Mode or `/kori editmode`)
   - Drag CDM bars to desired locations (near action bars recommended)
   - **Use 100% icon size** in Edit Mode for best results
5. **Configure Filters**:
   - Automatic spell detection works for most classes
   - Add custom spells via Spell ID if needed
6. **Save Layout** and reload: `/reload`

### Step 6: Apply FPS Preset (Optional)

For optimal performance:

1. Open `/kori` → **Performance**
2. Review current CVar values
3. Click **"Apply Kori FPS Preset"**
4. Confirm the dialog
5. `/reload` to apply changes
6. Test performance in various scenarios
7. Adjust individual settings if needed via Blizzard's graphics options

---

## Role-Specific Setups

### DPS Configuration

**Focus**: Damage output, cooldown tracking, minimal UI clutter

#### Recommended Settings

**Action Bars**:
- Mouseover fade: 15% opacity, 0.3s fade speed
- Show bars 1-3, hide rest unless needed
- Keybinds visible

**Unit Frames**:
- Player frame: Medium size, bottom-left
- Target frame: Large, center-right
- Focus frame: Medium, near target frame
- Party frames: Small, off to the side

**Cooldown Manager**:
- Essential bar: Enabled, prominent position
- Utility bar: Enabled, below essential
- Defensive bar: Enabled, smaller icons

**Castbars**:
- Player castbar: Below player frame
- Target castbar: Below target frame with interrupt highlighting

**Buffs/Debuffs**:
- Personal buffs: Top-right corner
- Target debuffs: Your debuffs only, above target frame

**Custom Trackers**:
- Create trackers for:
  - DPS cooldowns (Bloodlust, hero, major CDs)
  - Important procs (clearcasting, sudden death, etc.)
  - Resource tracking (combo points, holy power, etc.)

**Mythic+ Timer**:
- Enabled, top-center position
- Death counter visible

### Healer Configuration

**Focus**: Party/raid health, quick targeting, cooldown management

#### Recommended Settings

**Action Bars**:
- Mouseover fade: Disabled (always visible)
- Show bars 1-4
- Large keybind text for quick reference

**Unit Frames**:
- Player frame: Small, bottom-left corner
- Target frame: Medium, top-left (less important)
- Focus frame: Medium, near target
- **Party Frames**: LARGE, center of screen
  - Enable all party members
  - Show debuffs prominently
  - Enable range fading
  - Display role icons

**Raid Frames**:
- Enable if healing raids
- Configure in `/kori` → **Unit Frames** → **Raid Frames**
- Sort by group or role
- Show incoming heals

**Cooldown Manager**:
- Essential bar: Major healing CDs (Ascendance, Avenging Wrath, etc.)
- Utility bar: CC, dispels
- Defensive bar: Personal defensives, immunities
- **Enable party/raid cooldown tracking** to see other healers' CDs

**Castbars**:
- Player castbar: Prominent, below player frame
- Target castbar: Enabled with interrupt highlighting
- Focus castbar: Enabled

**Buffs/Debuffs**:
- Raid buffs: Show missing buff alerts (fort, int, stam)
- Personal buffs: Healing-specific buffs (Innervate, Power Infusion, etc.)

**Custom Trackers**:
- Track healing cooldowns
- Monitor mana percentage (if applicable)
- Track raid healing buffs (Spirit of Redemption, etc.)

**Mythic+ Timer**:
- Enabled, but less prominent (top-right corner)

### Tank Configuration

**Focus**: Threat management, defensive cooldowns, boss awareness

#### Recommended Settings

**Action Bars**:
- Mouseover fade: Disabled (always visible)
- Show bars 1-4
- Taunt and defensive keybinds highly visible

**Unit Frames**:
- **Player frame**: LARGE, center-bottom
  - Prominent health bar
  - Large absorb shield display
  - Clear resource tracking (rage, etc.)
- Target frame: Large, center-top or center-right
  - Show boss/elite classification
  - Threat indicator enabled
- Focus frame: Medium, for off-target (second boss, add)
- Party frames: Small, to monitor healer health

**Boss Frames**:
- Enable and configure via `/kori` → **Instance Frames**
- Position to the right of screen
- Show castbars for boss abilities

**Cooldown Manager**:
- Essential bar: Taunt, major defensive CDs
- Utility bar: CC, interrupts, grips
- Defensive bar: ALL defensive cooldowns prominently displayed

**Castbars**:
- Player castbar: Below player frame
- Target castbar: Prominent with interrupt highlighting
- Boss castbar: Integrated with boss frames

**Buffs/Debuffs**:
- Personal buffs: Show all active mitigation buffs
- Personal debuffs: LARGE, show all debuffs (especially magic/bleed)
- Target debuffs: Less important, can be smaller

**Custom Trackers**:
- Active mitigation uptime (Shield Block, Ironfur, etc.)
- Defensive cooldown availability
- Taunt cooldown tracker
- Stagger bar (Brewmaster monks)

**Mythic+ Timer**:
- Enabled, prominent top-center position
- Death counter visible (important for tanks)

---

## Advanced Configuration

### Creating Custom Anchors

Anchors allow you to group related UI elements and move them together.

**Example: DPS Cooldown Anchor**

1. Open `/kori` → **Anchoring** tab
2. Click **"Create New Anchor"**
3. Name: "DPSCooldowns"
4. Drag anchor marker to position (e.g., above action bars)
5. Attach elements:
   - CDM Essential Bar
   - Custom Tracker: Bloodlust
   - Custom Tracker: Hero/Major CD
6. Set offsets for each element relative to anchor
7. Save

Now, moving "DPSCooldowns" anchor moves all attached elements together.

### Custom Tracker Examples

#### Example 1: Combo Point Tracker (Rogue/Feral)

1. Open `/kori` → **Custom Trackers**
2. Click **"Create New Tracker"**
3. **Settings**:
   - Name: "Combo Points"
   - Trigger Type: Resource (Combo Points)
   - Unit: Player
   - Display Type: Icon (repeated for each point)
   - Size: 40px
   - Position: Below target frame
4. **Visual**:
   - Active Color: Bright red
   - Inactive Color: Dark gray
   - Glow Effect: On when at max combo points
5. Save and test

#### Example 2: Major Cooldown Tracker (All Classes)

1. Create New Tracker
2. **Settings**:
   - Name: "Hero Cooldown"
   - Trigger Type: Cooldown
   - Spell ID: (your major DPS CD, e.g., 279302 for Frostwyrm's Fury)
   - Unit: Player
   - Display Type: Icon with timer
   - Size: 60px
   - Position: Center screen, slightly above player
3. **Visual**:
   - Show timer text
   - Glow when off cooldown
   - Pulse animation
4. **Visibility**:
   - Show only in combat (optional)
   - Hide when cooldown > 60s (optional)
5. Save and test

### Configuring Raid Buff Tracking

1. Open `/kori` → **Raid Buffs** section
2. **Enable Missing Buff Alerts**:
   - Check "Show Missing Buffs"
3. **Select Buffs to Track**:
   - Flask (required in raids)
   - Food (stat food)
   - Augment Rune (current expansion)
   - Raid buffs: Fort, Int, Stamina, Haste, etc.
4. **Visual Options**:
   - Icon size: 32-40px
   - Position: Top-right corner or near minimap
   - Alert type: Flash or pulse when missing
5. **Mouseover Tooltip**:
   - Enable to show who's missing buffs (raid-wide)
6. Save

### Importing/Exporting Profiles

#### Exporting Your Profile

1. Open `/kori` → **Profiles** tab
2. Select the profile to export
3. Click **"Export Profile"**
4. Profile string automatically copied to clipboard
5. Share string with guildmates or save for backup

#### Importing a Profile

1. Copy profile string from someone else
2. Open `/kori` → **Profiles** tab
3. Click **"Import Profile"**
4. Paste string into text field
5. Click **"Import"**
6. Review settings (optional)
7. Click **"Apply"**
8. `/reload` to apply changes

---

## Profile Management

### Understanding Profiles

Kori UI uses **AceDB** profiles, which allow you to:
- Save multiple configurations
- Switch between profiles easily
- Share profiles across characters
- Backup and restore settings

### Profile Types

1. **Default Profile**
   - Automatically created on first launch
   - Used unless another profile is active

2. **Character Profiles**
   - Unique to each character
   - Best for alts with different playstyles

3. **Class Profiles**
   - Shared across all characters of the same class
   - Best for maintaining consistency

4. **Spec Profiles**
   - Different settings per specialization
   - Auto-switches when you change spec

### Creating a New Profile

1. Open `/kori` → **Profiles** tab
2. Click **"New Profile"**
3. Enter profile name (e.g., "Raid Healing", "M+ Tank")
4. Choose base settings:
   - Start from scratch
   - Copy from Default
   - Copy from another profile
5. Click **"Create"**
6. Configure as desired
7. Save (auto-saves)

### Switching Profiles

**Manual Switch**:
1. Open `/kori` → **Profiles** tab
2. Select profile from dropdown
3. Click **"Activate"**
4. `/reload` to apply

**Auto-Switch**:
1. Enable "Auto-Switch Profiles" in Profiles tab
2. Configure triggers:
   - Spec change
   - Instance type (raid, dungeon, arena, battleground)
   - Group size
3. Assign profiles to each condition
4. Save

### Deleting a Profile

1. Open `/kori` → **Profiles** tab
2. Select profile to delete (must not be active)
3. Click **"Delete Profile"**
4. Confirm deletion (cannot be undone)

---

## Troubleshooting

### Installation Issues

#### Problem: Addon not appearing in addon list
**Solutions**:
- Verify folder is named exactly `KoriUI` (case-sensitive on some systems)
- Check folder location: Must be in `Interface\AddOns\`
- Ensure `.toc` file exists: `KoriUI\KoriUI.toc`
- Try re-extracting the zip file
- Restart WoW completely (close and reopen)

#### Problem: "Interface too old" error
**Solutions**:
- Download the latest version of Kori UI
- Ensure you're playing Retail, not Classic
- Check WoW is fully updated
- Verify interface version in `.toc` file matches current expansion

### Configuration Issues

#### Problem: Settings not saving
**Solutions**:
- Ensure you're not in "Copy From" mode in profiles
- Click "Save" if prompted after making changes
- `/reload` after making changes
- Check file permissions on WoW folder
- Disable read-only attribute on SavedVariables folder

#### Problem: Profile import fails
**Solutions**:
- Verify profile string is complete (very long string)
- Check for extra characters (spaces, line breaks) in string
- Try import again after `/reload`
- Create new profile manually as fallback

### Performance Issues

#### Problem: Low FPS after installing
**Solutions**:
- Apply FPS preset: `/kori` → **Performance** → **Apply Kori FPS Preset**
- Disable unused modules:
  - Turn off Cooldown Manager if not needed
  - Disable custom trackers you're not using
  - Reduce number of visible buffs/debuffs
- Check for conflicting addons (disable other UI addons)
- Update graphics drivers

#### Problem: UI lag or stuttering
**Solutions**:
- Reduce action bar mouseover fade frequency
- Disable combat text if not needed
- Lower buff/debuff update rate
- Use Perfect Pixel: `/kori` → **Performance** → **Apply Perfect Pixel**
- Check CPU usage (close background programs)

### Display Issues

#### Problem: Text/fonts blurry
**Solutions**:
- Apply Perfect Pixel: `/kori` → **Performance** → **Apply Perfect Pixel**
- Check UI scale: Should be 0.64, 0.71, 0.80, or 1.0 for most resolutions
- Verify game resolution matches native monitor resolution
- Disable Blizzard's Resolution Scale (should be 100%)

#### Problem: Elements overlapping
**Solutions**:
- Use Edit Mode to reposition elements
- Check anchoring settings (may have conflicting anchors)
- Reset positions: `/kori` → **Profiles** → **Reset Positions Only**
- Lower UI scale if elements are too large

#### Problem: Missing action bar buttons
**Solutions**:
- Check mouseover fade settings (may be set to 0% opacity)
- Verify bars are enabled in `/kori` → **Actionbars**
- Check Edit Mode: Bars may be moved off-screen
- Reset action bar settings to default

### Module-Specific Issues

#### Problem: Cooldown Manager not showing abilities
**Solutions**:
- Ensure CDM is enabled: `/kori` → **Cooldown Manager** → Enable
- Check filters: May need to add spells manually
- Verify bars are positioned in Edit Mode
- Use `/reload` after enabling
- Test with different specs (some abilities are spec-specific)

#### Problem: Mythic+ timer not appearing
**Solutions**:
- Ensure you're in a Mythic+ dungeon
- Check timer position: May be off-screen
- Verify M+ timer is enabled in settings
- Try `/reload` inside the dungeon
- Check if timer is hidden by another addon

#### Problem: Unit frames not updating health
**Solutions**:
- `/reload` to refresh unit frames
- Check if in Edit Mode (unit frames show fake values in edit mode)
- Verify unit frame module is enabled
- Test in combat (some updates only occur in combat)

### Conflict Resolution

#### Problem: Action bars from another addon showing
**Solutions**:
- Disable conflicting addon (Bartender4, Dominos, etc.)
- Or disable Kori UI action bars: `/kori` → **Actionbars** → Disable module
- Check load order: Kori UI should load after most addons
- `/reload` after disabling conflict

#### Problem: Multiple unit frames appearing
**Solutions**:
- Disable other unit frame addons (Shadowed Unit Frames, ElvUI, etc.)
- Or disable Kori UI unit frames
- Check Edit Mode for duplicate frames
- Reset all frames to default

### Getting Additional Help

If problems persist:

1. **Enable Debug Mode**: `/kori debug`
2. **Check for Error Messages**: Install BugSack addon to capture Lua errors
3. **Disable Conflicting Addons**: Test with only Kori UI enabled
4. **Report Issues**: [GitHub Issues](https://github.com/korivash/KoriUI/issues)
   - Include:
     - WoW version
     - Kori UI version
     - Steps to reproduce
     - Error messages (if any)
     - Other addons installed

---

## Next Steps

After completing setup:

1. **Test in Different Content**:
   - Run a dungeon
   - Enter PvP
   - Join a raid
   - Adjust settings as needed

2. **Refine Your Configuration**:
   - Adjust sizes and positions
   - Create custom trackers for your class
   - Set up multiple profiles for different content

3. **Explore Advanced Features**:
   - Read [FEATURES.md](FEATURES.md) for detailed feature guide
   - Experiment with anchoring system
   - Try importing shared profiles from community

4. **Join the Community**:
   - Discord (if available)
   - GitHub discussions
   - Share your setup!

---

*Installation guide version 2.0.0 - Last updated February 2026*
