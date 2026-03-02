# KoriUI Changelog

## v3.0.7 - World Map Tooltip Taint Hardening (March 2, 2026)

### Fixed
- Avoided `GameTooltip` anchor/owner mutations for World Map-owned tooltip flows to reduce secret-value taint on map hover rewards.
- Removed `SetOwner(..., "ANCHOR_NONE")`/`ClearLines()` path from tooltip default-anchor hook when suppressing visibility.
- Hardened World Map blackout handling to alpha-only updates with combat-safe gating and deferred OnShow reapply timing.

### Changed
- Bumped addon version metadata to `3.0.7`.

---

## v3.0.6 - Managed Frame Taint Hardening (March 1, 2026)

### Fixed
- Hardened Objective Tracker hiding logic to avoid tainting Blizzard managed frame positioning.
- Removed direct `ObjectiveTrackerFrame:Hide()` / `:Show()` control in favor of deferred, non-protected state updates.
- Added combat-safe deferral for tracker state reapplication to reduce `ADDON_ACTION_BLOCKED` chains into `UIParentPanelManager`.

### Changed
- Bumped addon version metadata to `3.0.6`.

---

## v3.0.5 - World Map Hover Taint Fix (February 28, 2026)

### Fixed
- Removed World Map blackout hooks on `BlackoutFrame:Show` and `BlackoutFrame:SetAlpha` that could taint Blizzard map pin hover flows.
- Reduced map-hover taint paths causing `ADDON_ACTION_BLOCKED` on `Button:SetPassThroughButtons()` and `Frame:SetPropagateMouseClicks()`.

### Changed
- Switched blackout persistence to a deferred `WorldMapFrame` `OnShow` refresh and `Blizzard_WorldMap` load reapply path.
- Bumped addon version metadata to `3.0.5`.

---

## v3.0.4 - Taint and Protected Call Hotfix (February 27, 2026)

### Fixed
- Removed protected `SetFrameStrata()` calls on Blizzard buff cooldown viewers that were causing `ADDON_ACTION_BLOCKED`.
- Removed tooltip/money function replacements that tainted Blizzard tooltip/widget execution paths.
- Reduced secret-value taint propagation affecting map tooltip widget layout (`LayoutFrame.lua` / `UIWidgetTemplateTextWithState.lua`).

### Changed
- Bumped addon version metadata to `3.0.4`.

---

## v3.0.3 - Retail 12.0.2 Interface Bump (February 25, 2026)

### Changed
- Updated addon TOC interface version to `120002` for Retail `12.0.2` compatibility.
- Bumped addon version metadata to `3.0.3`.

---

## v3.0.2 - CooldownViewer Secret-Value Taint Hardening (February 17, 2026)

### Fixed
- Fixed additional Retail 12.0.1 taint paths caused by reads/writes to Blizzard CooldownViewer internal fields.
- Removed taint-prone interactions that were surfacing as secret-value compare/boolean errors in `Blizzard_CooldownViewer`.

### Changed
- Refactored cooldown frame ordering to addon-owned stable metadata instead of Blizzard `layoutIndex` / `cooldownID` fields.
- Removed direct writes to Blizzard internal BuffBar layout flags and taint-prone force-layout behavior.

### Notes
- This release targets the recurring secret-value taint errors reported in buff icon and tracked bar viewers.

---

## v3.0.1 - CooldownViewer Taint Hotfix (February 2026)

### Fixed
- Fixed dungeon-instance taint errors originating from KoriUI interaction with Blizzard `CooldownViewer` secret values.
- Prevented taint chain into Blizzard `CooldownViewerItemData` / `TableUtil` code paths.

### Changed
- Added 12.x safety gating for custom CDM glow hooks in `utils/customglows.lua`.
- Added 12.x safety gating for CDM keybind and rotation-helper processing in `utils/keybinds.lua`.

### Notes
- On WoW 12.x, CDM keybind overlays, CDM rotation-helper overlays, and CDM custom glow hooks are now disabled for taint safety.

---

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
