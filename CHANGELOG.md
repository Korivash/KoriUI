# KoriUI Changelog

## v2.2.0 - Midnight Compatibility Update (February 2026)

### 🎉 Major Fix: WoW 12.0.1 (Midnight Pre-Patch) Compatibility

This release fully updates KoriUI for the Midnight expansion pre-patch, addressing the "addon apocalypse" API changes introduced in Patch 12.0.1.

### What Was Fixed

**Forbidden Table Access**
- Replaced all `_G["FrameName"]` bracket notation with `rawget(_G, "FrameName")` across the entire addon
- This affects 20+ files including unit frames, skinning modules, keybinds, chat, character panel, and more
- Blizzard removed many legacy global variables from direct `_G` table access to prevent addon tainting

**Aura API Changes**
- Wrapped all `C_UnitAuras` API calls and property access in `pcall()` for combat safety
- Aura data fields (like `auraInstanceID`, `icon`, `duration`) can now be "secret values" that error on direct access
- Implemented safe property extraction pattern for all aura-related code

**Blizzard Frame Hiding**
- Fixed `PlayerCastingBarFrame:SetUnit(nil)` causing "attempted to iterate a forbidden table" error
- Wrapped all Blizzard frame hiding operations in `pcall()` for protection
- Added `SafeGetChild()` helper for accessing child frames that may be forbidden

**Unit Frame Defaults**
- Fixed target frame not loading when `enabled` was `nil` in saved variables
- Unit frames now default to enabled unless explicitly set to `false`

### Files Modified

- `init.lua` - DetailsFramework lookup, debug error handler
- `utils/kori_unitframes.lua` - Complete overhaul of Blizzard frame hiding and aura handling
- `utils/kori_spellscanner.lua` - Safe aura property extraction
- `utils/kori_customtrackers.lua` - Safe aura property extraction
- `utils/kori_raidbuffs.lua` - Safe aura field access
- `utils/keybinds.lua` - rawget for button lookups
- `utils/kori_ncdm.lua` - rawget for viewer lookups
- `utils/kori_chat.lua` - rawget for chat frame lookups
- `utils/kori_character.lua` - rawget for slot and stat lookups
- `utils/kori_actionbars.lua` - rawget for bag slot lookups
- `utils/koricore_main.lua` - rawget for various frame lookups
- `utils/koricore_nudge.lua` - rawget for viewer lookups
- `utils/koricore_resourcebars.lua` - rawget for resource bar lookups
- `utils/cooldowneffects.lua` - rawget for viewer lookups
- `utils/customglows.lua` - rawget for viewer lookups
- `utils/kori_inspect.lua` - rawget for slot frame lookups
- `utils/kori_qol.lua` - rawget for popup lookups
- `utils/kori_options.lua` - rawget for scrollbar lookups
- `skinning/instanceframes.lua` - rawget for PVE tabs and role buttons
- `skinning/objectivetracker.lua` - rawget for tracker lookups
- `skinning/loot.lua` - rawget for loot frame lookups
- `skinning/inspect.lua` - rawget for model frame backgrounds

### Technical Details

The Midnight pre-patch introduced strict protections on accessing certain Blizzard frames and data:

1. **Global table restrictions**: Frames like `PlayerFrame`, `TargetFrame`, `ChatFrame1`, etc. can no longer be accessed via `_G["FrameName"]` syntax - this now throws "attempted to index a forbidden table"

2. **Aura data protection**: `C_UnitAuras` functions may return tables where property access throws errors, even after a successful API call

3. **Frame iteration restrictions**: Some internal Blizzard frame operations (like `CastingBarFrame:SetUnit()`) now iterate over protected tables

### Compatibility

- **Interface Version**: 120001
- **WoW Version**: 12.0.1 (Midnight Pre-Patch)
- **Backwards Compatible**: Should still work on 11.x (The War Within) clients

---

## Previous Versions

See GitHub releases for older changelog entries.
