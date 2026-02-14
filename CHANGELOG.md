# KoriUI Changelog

## v3.0.0 - Command Deck Rebuild (February 2026)

### Added
- New KoriUI Command Deck options shell with rebuilt frame architecture.
- New left-side module directory navigation and action footer buttons.
- Header version display in the options UI.
- Discord link in the options header: `https://discord.gg/JbQQTbH4hR`.
- Drag support from the header bar.
- Bottom-right resize handle for live UI resizing.
- Persistent Command Deck width/height saving in profile settings.

### Changed
- Rebranded addon metadata for team ownership:
  - Title updated to `KoriUI Command Deck`.
  - Author and contributor labels updated to `KoriUI Team`.
  - Version bumped to `3.0.0`.
- Updated startup message text to Command Deck branding.
- Renamed top-level options tabs to clearer module names.
- Renamed action buttons for better clarity.

### Fixed
- Brewmaster Stagger bar white border/frame removed.
- Fixed nil version concatenation error in `kori_rebuild.lua`.
- Fixed resize API compatibility by avoiding unsupported `SetMinResize`/`SetMaxResize` calls.

### Internal
- Added `utils/kori_rebuild.lua` and loaded it in `utils/utils.xml`.
- Kept existing module/page logic intact while replacing only the options shell layer.

---

## v2.2.0 - Midnight Compatibility Update (February 2026)

### Major Fix: WoW 12.0.1 (Midnight Pre-Patch) Compatibility
- Replaced forbidden `_G["FrameName"]` access with safe `rawget(_G, "FrameName")`.
- Added safer aura handling patterns for protected/secret aura fields.
- Added safer Blizzard frame interactions in protected contexts.
- Improved defaults and compatibility across multiple modules.

---

## Previous Versions

See repository releases for older entries.
