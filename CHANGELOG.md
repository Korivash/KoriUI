# KoriUI Changelog

All notable changes to KoriUI will be documented in this file.

## [2.0.0] - 2025-01-23 - "The Korivash Era Begins"

### 🎉 Major Changes
- **Complete Rebranding**: QuaziiUI → KoriUI
  - All code references updated
  - All UI elements rebranded
  - New developer: Korivash
  - New color scheme: Black and Blue

### 🎨 Visual Overhaul
- Changed primary color scheme from green to blue
  - Primary: Dodger Blue (#1E90FF)
  - Secondary: Royal Blue (#4169E1) 
  - Accent: Bright Blue (#0080FF)
- Updated all color references throughout the codebase
- Renamed all logo and branding assets
- Refreshed theme for modern aesthetic

### 🔧 Technical Updates
- **Commands Updated**:
  - `/qui` → `/kori`
  - `/quaziiui` → `/koriui`
  - Maintained: `/kb`, `/cdm`, `/rl`
- **Saved Variables**: `QuaziiUI_DB` → `KoriUI_DB`
- **Addon Metadata**: Updated TOC file for Korivash
- **Website**: Updated to https://korivash.com
- **Version**: Bumped to 2.0.0 to mark new era

### 📦 Midnight Pre-Patch Compatibility
- ✅ Verified compatibility with Interface 120000, 120001
- ✅ All modules tested and working
- ✅ No breaking changes from Midnight pre-patch
- Ready for full Midnight expansion

### 📚 Documentation
- Added comprehensive README.md
- Created MIGRATION.md guide for existing users
- Added detailed changelog (this file)
- Updated all inline documentation
- Removed Quazii references from comments

### 🔄 Module Updates
All modules updated with new branding:
- `quicore_*.lua` → `koricore_*.lua` (file references)
- `qui_*.lua` → `kori_*.lua` (file references)
- All function names updated
- All variable names updated
- All localization strings updated

### 🌐 Localization
Updated all language files:
- English (enUS)
- German (deDE)
- Spanish (esES, esMX)
- French (frFR)
- Italian (itIT)
- Korean (koKR)
- Portuguese (ptBR)
- Russian (ruRU)
- Chinese Simplified (zhCN)
- Chinese Traditional (zhTW)

### 🛠️ Asset Updates
- Renamed all Quazii logo files to Kori logos
- Updated icon texture paths in TOC
- Maintained all font files
- Preserved all cursor assets
- Updated iconskin references

### 🎯 Feature Preservation
All original QuaziiUI features maintained:
- ✅ Cooldown Manager
- ✅ Action Bars
- ✅ Unit Frames
- ✅ Cast Bar
- ✅ Buff Bar
- ✅ M+ Timer
- ✅ Keystone Tracker
- ✅ Dungeon Teleporter
- ✅ Combat Timer
- ✅ Rotation Assist
- ✅ Custom Trackers
- ✅ Tooltips
- ✅ Chat Enhancements
- ✅ Minimap
- ✅ Data Panels
- ✅ All QoL features

### 🐛 Bug Fixes
- Fixed any lingering green color references
- Corrected all command registrations
- Updated compartment menu functions
- Fixed intro message branding

### 📈 Performance
- No performance changes (maintained original optimization)
- Same memory footprint
- Identical load times

### 🔐 License & Credits
- Maintained GPLv3 license
- Added Korivash as maintainer
- Credited Quazii for original development
- Updated contributor information

---

## [1.99B] - 2024 (Legacy) - "Final Quazii Release"

*This was the last version maintained by Quazii before the project was taken over by Korivash.*

### Features
- Full Dragonflight and War Within compatibility
- Complete UI overhaul system
- Integrated Cooldown Manager
- Comprehensive action bar system
- Custom unit frames
- M+ enhancements
- Quality of life improvements

### Known Issues from 1.99B
- Some users reported green theme not matching all UI elements
- Minor positioning issues with certain frames
- CDM required manual enabling on first load

---

## Legacy Versions (Pre-2.0)

All versions prior to 2.0.0 were developed and maintained by Quazii. For historical changelog information, refer to Quazii's original documentation.

---

## Migration Notes

### From 1.99B → 2.0.0
Users upgrading from QuaziiUI 1.99B should:
1. Read MIGRATION.md for detailed upgrade instructions
2. Backup saved variables before upgrading
3. Be aware of command changes (/qui → /kori)
4. Expect new blue color theme
5. Reconfigure or convert saved variables

---

## Future Roadmap

### Planned for 2.x Series
- [ ] Continue Midnight expansion compatibility
- [ ] Community-requested features
- [ ] Performance optimizations
- [ ] Additional customization options
- [ ] Enhanced profile system
- [ ] Better integration with popular addons
- [ ] New mini-modules for common tasks

### Under Consideration
- WeakAura import system
- Preset profiles for different roles
- Streaming mode features
- Advanced combat analytics
- Guild utility features
- Enhanced M+ features

---

## Version Numbering

KoriUI uses semantic versioning (MAJOR.MINOR.PATCH):
- **MAJOR**: Significant changes, potential breaking changes
- **MINOR**: New features, non-breaking changes  
- **PATCH**: Bug fixes, minor tweaks

### Current: 2.0.0
- **2**: New major version (rebranding)
- **0**: Initial release under new brand
- **0**: First build of 2.0 series

---

## Contributing

Want to contribute to KoriUI? Here's how:

1. **Bug Reports**: Submit detailed bug reports with:
   - WoW version
   - KoriUI version
   - Steps to reproduce
   - Error messages (use /bugsack)

2. **Feature Requests**: Suggest new features with:
   - Clear description
   - Use case
   - Mockups if applicable

3. **Code Contributions**: 
   - Follow existing code style
   - Test thoroughly
   - Document changes
   - Submit pull requests

---

## Acknowledgments

### Special Thanks
- **Quazii**: For creating the original amazing UI that this is based on
- **Community**: For testing and feedback
- **Library Authors**: For the excellent libraries used in this addon

### Development Team
- **Lead Developer**: Korivash
- **Original Creator**: Quazii

---

## Support & Contact

- **Website**: https://korivash.com
- **Twitch**: twitch.tv/korivash
- **Discord**: [Your Discord Link]
- **Issues**: [Your Issue Tracker]

---

*Last Updated: January 23, 2025*
*Current Version: 2.0.0*
*Compatibility: WoW Midnight Pre-Patch (12.0.0, 12.0.1)*
