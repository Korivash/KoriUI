<div align="center">

# 🌸 Since Quazii Quit i am trying to maintain his project - i hope he comes back!

[![Support Discord](https://img.shields.io/badge/Support%20Discord-Join%20Now-5865F2?logo=discord&logoColor=white)](https://discord.gg/JbQQTbH4hR)

**A Premium World of Warcraft Interface Addon**

[![Version](https://img.shields.io/badge/version-2.0.0-1E90FF.svg)](https://github.com/korivash/KoriUI)
[![Interface](https://img.shields.io/badge/interface-12.0.0%20|%2012.0.1-orange.svg)](https://github.com/korivash/KoriUI)
[![License](https://img.shields.io/badge/license-GPLv3-blue.svg)](LICENSE)
[![Made by](https://img.shields.io/badge/made%20by-Korivash-FF69B4.svg)](https://korivash.com)

*Elevate your World of Warcraft experience with a sleek, modern, and highly customizable interface*

[Features](#-features) • [Installation](#-installation) • [Configuration](#%EF%B8%8F-configuration) • [Commands](#-slash-commands) • [Support](#-support)

</div>

---

## 📖 Overview

**Kori UI** is a comprehensive World of Warcraft interface replacement addon designed for players who demand both aesthetics and functionality. Built from the ground up with performance in mind, Kori UI transforms the default WoW interface into a modern, streamlined experience without sacrificing the game's identity.

Perfect for raiders, mythic+ pushers, PvPers, and casual players alike, Kori UI offers an extensive suite of features that enhance every aspect of gameplay while maintaining the flexibility to customize every element to your preferences.

### 🎯 Design Philosophy

- **Modern & Clean**: Contemporary design that doesn't overwhelm
- **Performance First**: Optimized code with minimal performance impact
- **Highly Customizable**: Deep configuration options for every feature
- **Raid Ready**: Built-in tools for competitive PvE and PvP content
- **User Friendly**: Intuitive interface with helpful defaults

---

## ✨ Features

### 🎨 Visual Enhancements

#### **Action Bars**
- Complete action bar overhaul with custom styling
- Icon border effects and proc glows
- Cooldown animations and custom swipe textures
- Mouseover fade options for clean screen space
- Keybind display and custom range indicators
- Support for all default bars (Action Bar, Pet Bar, Stance Bar, Extra Action)

#### **Unit Frames**
- Modern, sleek unit frame design
- Customizable player, target, focus, and party frames
- Advanced health/power bar configurations
- Absorb shield tracking with custom stripe effects
- Class-colored elements and custom fonts
- Portrait options and debuff tracking

#### **Minimap**
- Circular or square minimap with custom borders
- Clean button integration and organization
- Difficulty badge display
- Skyriding vigor tracking
- Coordin display and calendar/clock customization
- Zone text and mail notification styling

#### **Castbars**
- Player, target, and focus castbars
- Interrupt highlighting and pushback tracking
- Icon support with custom positioning
- Channeling and empowered spell visualization
- Shield indicator for uninterruptible casts

#### **Buff & Debuff Bars**
- Customizable buff/debuff tracking
- Separate bars for personal and raid buffs
- Timer overlays and custom filtering
- Weapon enchant tracking
- Consolidate or separate display modes

### 🛠️ Gameplay Enhancements

#### **Mythic+ Timer**
- Advanced dungeon timer with death counter
- Progress tracking and objective updates
- Split timers for chest levels (+2, +3)
- Boss and trash count displays
- Affix warnings and seasonal mechanics tracking

#### **Keystone Manager**
- Quick keystone level tracking
- Auto-announce key in chat
- Visual keystone display on UI
- Integration with dungeon teleport system

#### **Combat Features**
- Combat timer with engagement tracking
- Combat text enhancements (incoming/outgoing damage)
- Rotation assist with cooldown tracking
- Proc glow animations
- Ready check alerts with custom styling

#### **Cooldown Manager (CDM)**
- Comprehensive cooldown tracking system
- Essential, utility, and defensive cooldown bars
- Customizable icon sizes and arrangements
- Anchor system for precise positioning
- Party/raid cooldown monitoring

#### **Custom Trackers**
- Create custom resource trackers for any spell/buff
- Configurable positions and appearance
- Multiple tracker profiles
- Icon-based or bar-based displays
- Smart visibility conditions

### 🎮 Quality of Life

#### **Enhanced Chat**
- Custom chat styling and colors
- URL highlighting and clickability
- Channel abbreviations
- Timestamps and battle.net tag formatting
- Copy chat functionality

#### **Improved Tooltips**
- Item level display on gear tooltips
- Spec and item level on player inspect
- Achievement and mount source information
- Spell ID display for addon development
- Mythic+ rating and keystone info

#### **Quick Salvage**
- One-click salvage for anima/artifact items
- Automatic item quality detection
- Safe confirmation for valuable items
- Bulk processing support

#### **Dungeon Teleports**
- Quick teleport to any dungeon entrance
- Season-aware dungeon list
- Mythic+ portal integration
- Party leader controls

#### **UI Hider**
- Hide specific UI elements during combat
- Mouseover reveal options
- Custom fade animations
- Per-element visibility controls

### 🎯 Targeting & Combat

#### **Custom Crosshair/Reticle**
- Multiple crosshair styles (dot, ring, solid, thin, thick)
- Adjustable size, color, and opacity
- Combat-only visibility option
- Separate configurations for different content types

#### **Objective Tracker Styling**
- Clean quest tracker design
- Progress bar customization
- Achievement tracker integration
- Dungeon/scenario objective highlighting

#### **Instance Frames**
- Custom styling for raid frames
- Arena frame enhancements
- Boss frame redesign with better visuals
- Enemy nameplate improvements

### ⚙️ Performance Optimization

#### **FPS Preset System**
- One-click FPS optimization
- Pre-configured graphics settings (58 CVars)
- Balanced quality vs performance
- Competitive gaming optimizations
- DirectX 12 configuration

#### **Perfect Pixel**
- Automatic UI scaling for crisp visuals
- Resolution-based adjustments
- Prevents blurry textures and fonts

#### **Resource Bar Optimization**
- Class-specific resource tracking
- Combo points, runes, holy power, soul shards
- Stagger bar for brewmasters
- Essence displays for evokers

---

## 📥 Installation

### Method 1: Manual Installation

1. **Download** the latest release from the [Releases](https://github.com/korivash/KoriUI/releases) page
2. **Extract** the `KoriUI` folder
3. **Navigate** to your World of Warcraft installation directory:
   ```
   World of Warcraft\_retail_\Interface\AddOns\
   ```
4. **Copy** the `KoriUI` folder into the `AddOns` directory
5. **Restart** World of Warcraft
6. At the character selection screen, click **"AddOns"** and ensure KoriUI is enabled

### Method 2: CurseForge Client

1. Open the **CurseForge** or **WoWUp** client
2. Search for **"Kori UI"**
3. Click **Install**
4. Launch World of Warcraft

### First Launch

On your first login with Kori UI enabled, you'll see the setup wizard. This will guide you through:

- Initial profile setup (DPS/Healer/Tank)
- Action bar configuration
- Unit frame positioning
- Cooldown Manager setup

Use `/kori` to open the configuration panel at any time.

---

## 🖱️ Slash Commands

| Command | Description |
|---------|-------------|
| `/kori` | Open the main configuration GUI |
| `/koriui` | Alias for `/kori` |
| `/rl` | Quick reload UI (queues if in combat) |
| `/kb` | Toggle quick keybind mode |
| `/cdm` | Open Cooldown Manager settings |
| `/kori editmode` | Toggle unit frame edit mode |
| `/kori debug` | Enable debug mode and reload |

---

## ⚙️ Configuration

### Opening the Config Panel

Type `/kori` in chat or click the **Kori UI** button in the AddOns compartment (near minimap).

### Configuration Tabs

#### **🎨 Appearance**
- **Action Bars**: Visibility, fade options, keybinds, icon borders
- **Unit Frames**: Health/power colors, portraits, fonts
- **Minimap**: Shape, size, buttons, zone text
- **Castbars**: Position, colors, interrupt highlighting

#### **🛠️ Gameplay Enhancement**
- **Cooldown Manager**: Enable/disable, positioning, filtering
- **Combat Text**: Damage/healing numbers, animations
- **Buff Bars**: Tracking modes, timers, filtering
- **Custom Trackers**: Create resource tracking displays

#### **🎯 Mythic+ & Raiding**
- **M+ Timer**: Position, split timers, death counter
- **Keystone Manager**: Auto-announce, quick teleports
- **Raid Buffs**: Missing buff alerts, tracker positioning

#### **🖼️ Cosmetic**
- **Crosshair/Reticle**: Style, size, combat visibility
- **UI Hider**: Element visibility, fade animations
- **Anchoring System**: Custom anchor points for floating elements

#### **⚡ Performance**
- **FPS Preset**: One-click graphics optimization
- **Perfect Pixel**: UI scaling adjustments

#### **💬 Chat & Social**
- **Chat Styling**: Colors, timestamps, URL detection
- **Tooltips**: Info display, formatting options

---

## 🔧 Advanced Features

### Profile Management

Kori UI uses **AceDB** for profile management, allowing you to:

- Create character-specific profiles
- Share profiles across characters
- Import/export profile strings
- Reset to default settings

Access profile management via `/kori` → **Profiles** tab.

### Anchoring System

The anchoring system allows you to create custom anchor points for various UI elements:

1. Open `/kori` → **Anchoring** tab
2. Click **"Create New Anchor"**
3. Name your anchor and set base position
4. Assign UI elements to the anchor
5. Elements will move relative to the anchor

Perfect for maintaining consistent layouts across resolution changes.

### Edit Mode Integration

Kori UI integrates with Blizzard's Edit Mode:

1. Press `ESC` → **Edit Mode**
2. Position unit frames, action bars, and other native elements
3. Use `/kori editmode` for Kori UI-specific frame positioning
4. Click **Save** to preserve your layout

### Cooldown Manager (CDM)

The CDM is a powerful tool for tracking cooldowns:

**Setup:**
1. Enable CDM in `/kori` → **Gameplay Enhancement** → **Cooldown Manager**
2. Enter Edit Mode to position the CDM bars
3. Use 100% icon size for best results
4. Configure filters for essential/utility/defensive spells

**Features:**
- Automatic cooldown detection for your class
- Party/raid cooldown monitoring
- Custom spell filters
- Proc glow effects
- Charge tracking

---

## 🎨 Customization Examples

### DPS Profile
- Action bars: Visible, keybinds on
- Cooldown Manager: Essential abilities only
- Buff Bars: Personal buffs prominent
- Crosshair: Combat-only, thin ring style

### Healer Profile
- Unit frames: Large party frames with HoT timers
- Cooldown Manager: All cooldowns visible
- Raid buffs: Missing buff alerts enabled
- Castbars: Interrupt highlighting maximal

### Tank Profile
- Large player health bar
- Defensive cooldown tracking
- Taunt and mitigation timers
- Boss frame positioning for swap tracking

---

## 🆘 Support

### Getting Help

- **Discord**: Join the [Korivash Discord](https://discord.gg/JbQQTbH4hR) (if available)
- **GitHub Issues**: [Report bugs or request features](https://github.com/korivash/KoriUI/issues)
- **Website**: Visit [korivash.com](https://korivash.com) for updates and guides

### Known Issues

Check the [Issues](https://github.com/korivash/KoriUI/issues) page for current known issues and workarounds.

### FAQ

**Q: Does Kori UI work with other addons?**  
A: Yes! Kori UI is designed to be compatible with most popular addons. However, other UI replacement addons may conflict.

**Q: How do I reset to default settings?**  
A: Type `/kori` → **Profiles** tab → **Reset to Default**.

**Q: Can I use Kori UI for classic WoW?**  
A: Currently, Kori UI is designed for Retail (Midnight expansion). Classic support may come in the future.

**Q: Is Kori UI allowed in rated content?**  
A: Yes! All features comply with Blizzard's addon policies and are safe for competitive play.

---

## 🤝 Contributing

Contributions are welcome! If you'd like to contribute:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

Please ensure your code follows the existing style and includes appropriate comments.

---

## 📜 License

This project is licensed under the **GNU General Public License v3.0**. See the [LICENSE](LICENSE) file for details.

---

## 💖 Credits

**Created by**: [Korivash](https://korivash.com)

**Libraries Used**:
- Ace3 (AceAddon, AceDB, AceEvent, AceConsole, etc.)
- LibSharedMedia-3.0
- LibCustomGlow-1.0
- LibKeyBound-1.0
- LibDualSpec-1.0
- LibOpenRaid
- LibDeflate

**Special Thanks**:
- The WoW addon development community
- All users who provided feedback and bug reports
- Contributors to the open-source libraries

---

## 🌟 Show Your Support

If you enjoy using Kori UI, consider:

- ⭐ **Starring** this repository
- 🐛 **Reporting bugs** to help improve the addon
- 💡 **Suggesting features** you'd like to see
- 📢 **Sharing** with your friends and guildmates

---

<div align="center">

**Made with 💜 by Korivash**

[Website](https://korivash.com) • [Discord](https://discord.gg/korivash) • [GitHub](https://github.com/korivash)

*Transform your World of Warcraft experience*

</div>
