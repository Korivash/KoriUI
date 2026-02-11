# 📝 Kori UI - Changelog

All notable changes to Kori UI will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [2.0.0] - 2026-02-08

### 🎉 Major Release - Midnight Expansion Support

This major release brings Kori UI to the Midnight expansion (12.0.1) with significant feature additions, performance improvements, and a complete visual overhaul.

### Added
- **Midnight Expansion Compatibility** (Interface 12.0.0 & 12.0.1)
- **Cooldown Manager (CDM)** - Complete cooldown tracking system
  - Essential, utility, and defensive cooldown bars
  - Party/raid cooldown monitoring
  - Custom spell filters and priority system
  - Charge tracking for multi-charge abilities
  - Proc glow effects on cooldown ready
- **Custom Tracker System** - Create custom resource/buff/debuff trackers
  - Icon, bar, numeric, and text display types
  - Conditional visibility options
  - Drag-and-drop positioning
  - Profile-based tracker configurations
- **Advanced Anchoring System** - Create custom anchor points for UI elements
  - Named anchors with relative positioning
  - Attach multiple elements to single anchor
  - Lock/unlock functionality
  - Visual anchor markers for easy positioning
- **Mythic+ Enhancements**
  - Redesigned M+ timer with split timers (+2, +3)
  - Death counter with time penalty display
  - Progress tracking improvements
  - Affix display and warnings
  - Keystone manager with auto-announce
  - Quick dungeon teleport system
- **Skyriding (Dragonriding) Support**
  - Vigor bar around minimap
  - Charge indicators with cooldown timers
  - Custom color options
  - Integration with minimap module
- **Performance Optimization Tools**
  - FPS preset system (58 CVars)
  - One-click graphics optimization
  - Perfect Pixel UI scaling
  - Memory management tools
- **Combat Enhancements**
  - Combat timer with encounter tracking
  - Enhanced combat text (incoming/outgoing)
  - Rotation assist system (basic implementation)
  - Proc tracking and ability suggestions
- **Raid Buff Tracker**
  - Missing buff alerts (flask, food, rune, raid buffs)
  - Raid-wide tracking with mouseover details
  - Configurable alert types (flash, pulse)
- **Enhanced Chat System**
  - URL detection and highlighting
  - Channel abbreviations
  - Timestamps with formatting options
  - Player name class coloring
  - BattleTag display options
- **Improved Tooltips**
  - Item level display on gear
  - Mythic+ rating on players
  - Achievement info and dates
  - Mount/pet source information
  - Spell IDs for developers
- **Quality of Life Features**
  - Quick Salvage system for anima/artifact items
  - Auto-repair at vendors
  - Auto-sell gray items
  - UI Hider with combat visibility controls
  - Blizzard options integration
- **New Crosshair/Reticle System**
  - Multiple styles (dot, ring, solid, thin, thick)
  - Adjustable size, color, and opacity
  - Combat-only visibility option
  - Separate configurations per content type
- **Character Panel Styling**
  - Enhanced character sheet design
  - Item level display on gear slots
  - Stat breakdown improvements
  - Transmog preview enhancements
- **Inspect Frame Styling**
  - Clean inspect window design
  - Shows spec and item level
  - Legendary/tier piece highlighting
  - Enchant and socket display
  - M+ rating integration

### Changed
- **Complete UI Visual Overhaul**
  - Modern dark theme with accent colors
  - Consistent styling across all modules
  - Custom Poppins font integration
  - Improved texture assets
- **Action Bar Improvements**
  - Redesigned icon borders
  - Enhanced proc glow effects
  - Better cooldown swipe animations
  - Improved mouseover fade system
  - Custom range indicators
- **Unit Frame Redesign**
  - Sleeker frame design
  - Improved absorb shield visualization with stripe effects
  - Better health/power bar gradients
  - Enhanced portrait options (2D/3D)
  - Cleaner debuff displays
- **Castbar Enhancements**
  - Better interrupt highlighting
  - Shield indicator for uninterruptible casts
  - Empowered spell stage visualization (Evoker support)
  - Pushback tracking improvements
- **Minimap Redesign**
  - Circular and square shape options
  - Improved button organization
  - Zone text styling improvements
  - Difficulty badge redesign
  - Calendar/clock visual update
- **Buff/Debuff System Overhaul**
  - Better filtering system (whitelist/blacklist)
  - Improved timer displays
  - Weapon enchant tracking
  - Raid buff separation
  - Consolidate option
- **Configuration GUI Rebuild**
  - Modern tabbed interface
  - Better organization of settings
  - Real-time preview for most options
  - Improved color pickers
  - Font selection from LibSharedMedia
- **Profile Management Improvements**
  - Spec-based auto-switching
  - Instance-type based switching
  - Better import/export system
  - Profile backup/restore
- **Performance Optimizations**
  - Reduced memory footprint by ~30%
  - Event-driven updates where possible
  - Efficient frame pooling
  - Optimized combat log parsing
  - Better garbage collection handling

### Fixed
- **Critical Fixes**
  - Fixed memory leak in buff tracking system
  - Resolved frame stacking issues in Edit Mode
  - Corrected cooldown display bugs for some abilities
  - Fixed profile corruption on reload
  - Resolved mouseover fade conflicts
- **Action Bar Fixes**
  - Fixed keybind display overlapping icon text
  - Resolved action bar visibility issues in pet battles
  - Fixed stance bar not updating correctly
  - Corrected extra action button positioning
- **Unit Frame Fixes**
  - Fixed target frame not updating health in some scenarios
  - Resolved portrait not showing for some NPCs
  - Fixed party frame range fading
  - Corrected debuff filtering issues
- **Castbar Fixes**
  - Fixed castbar not showing for some spells
  - Resolved channel bar color not applying
  - Fixed interrupt highlighting staying active
  - Corrected pushback tracking for delayed casts
- **Minimap Fixes**
  - Fixed minimap buttons not organizing correctly
  - Resolved difficulty badge not updating
  - Fixed zone text overlapping minimap border
  - Corrected clock display in 12-hour format
- **Cooldown Manager Fixes**
  - Fixed CDM bars not showing after reload
  - Resolved charge tracking for some abilities
  - Fixed proc glow animation stuttering
  - Corrected party cooldown detection
- **General Fixes**
  - Fixed Lua errors when entering/exiting combat
  - Resolved tooltip anchoring issues
  - Fixed custom tracker positioning bugs
  - Corrected anchor system offset calculations
  - Fixed FPS preset not applying some CVars
  - Resolved Perfect Pixel scaling issues on ultra-wide monitors

### Deprecated
- Old anchor system (replaced with new advanced anchoring)
- Legacy profile format (auto-converts on first load)
- Deprecated cooldown tracking methods (replaced by CDM)

### Removed
- Removed deprecated AceConfig options
- Removed unused texture assets (~5MB saved)
- Removed old keybind system (replaced by LibKeyBound)

### Security
- No security-related changes in this version

---

## [1.42] - 2025-11-15

### Added
- Initial release for The War Within (11.0.5)
- Basic action bar replacement
- Unit frame system (player, target, focus, party)
- Castbar implementation
- Minimap redesign
- Buff/debuff bars
- Basic M+ timer
- Chat enhancements
- Tooltip improvements

### Changed
- N/A (initial release)

### Fixed
- N/A (initial release)

---

## [1.0.0] - 2025-09-01

### Added
- Beta release for The War Within (11.0.2)
- Core addon framework using Ace3
- AceDB profile system
- LibSharedMedia integration
- Basic action bars
- Simple unit frames
- Minimap adjustments

---

## Versioning

Kori UI follows Semantic Versioning:
- **Major (X.0.0)**: Breaking changes, major feature additions, expansion updates
- **Minor (1.X.0)**: New features, non-breaking changes
- **Patch (1.0.X)**: Bug fixes, minor tweaks

---

## Upgrade Notes

### Upgrading from 1.x to 2.0

**Important**: Version 2.0 includes significant changes. Please follow these steps:

1. **Backup Your Settings**:
   - Export your current profile via `/kori` → **Profiles** → **Export**
   - Save the string somewhere safe

2. **Clean Install Recommended**:
   - Delete old `KoriUI` folder
   - Install version 2.0 fresh
   - Your settings will automatically migrate on first login

3. **Post-Upgrade Checklist**:
   - Verify action bars are positioned correctly
   - Check unit frame positions (use Edit Mode)
   - Re-enable Cooldown Manager (disabled by default)
   - Review custom trackers (may need repositioning)
   - Test performance with new FPS preset

4. **Known Migration Issues**:
   - Custom anchors from 1.x may need to be recreated
   - Some keybinds may reset (use `/kb` to re-bind)
   - Minimap button positions will reset

---

## Development Roadmap

### Planned for 2.1.0
- **WeakAuras Integration** - Better compatibility and shared anchors
- **Raid Frame Enhancements** - More customization options
- **Boss Mod Integration** - Deeper DBM/BigWigs integration
- **Arena Frame Improvements** - Better DR tracking
- **Voice Chat Indicators** - Show who's speaking in party/raid
- **Achievement Tracker** - In-game achievement tracking
- **Quest Helper** - Quest objective improvements

### Planned for 2.2.0
- **Setup Wizard** - Initial configuration wizard for new users
- **Profile Templates** - Pre-made profiles for common roles
- **Advanced Filtering** - More buff/debuff filter options
- **Action Bar Profiles** - Per-spec action bar layouts
- **Bag Integration** - Optional bag addon integration

### Planned for 3.0.0
- **Nameplate System** - Complete nameplate replacement
- **Grid-Style Raid Frames** - Alternative raid frame style
- **Power Auras** - Built-in power aura system (WeakAuras alternative)
- **Advanced Scripting** - Lua API for custom modules
- **Theme System** - User-created themes

---

## Support

For bug reports, feature requests, or questions:

- **GitHub Issues**: [Report bugs](https://github.com/korivash/KoriUI/issues)
- **Discord**: Join the community (link TBD)
- **Website**: [korivash.com](https://korivash.com)

---

*This changelog is maintained by Korivash. Last updated: February 8, 2026*
