# Monoarch Refined

A refined Plymouth boot theme based on [Monoarch](https://github.com/farsil/monoarch) - featuring centered layout, responsive design, and a clean password prompt that works across all display types.

![Monoarch Refined Preview](screenshot.png)

## Features

- **Centered Layout** - Logo and spinner perfectly centered with proportional spacing
- **Universal Display Support** - Responsive design adapts to all screen resolutions and aspect ratios
- **Clean Password Prompt** - Minimalist Connect-style bullet input
- **Monochrome Design** - Clean black and white Arch Linux aesthetic
- **Smooth Animations** - Elegant spinner animation and pulsating logo effects

## Modifications from Original

- Centered logo and spinner layout with proportional spacing (5% and 3% of screen height)
- Replaced complex dialog box password prompt with simple bullet-style input
- Added responsive design that scales across different display types
- Optimized for modern displays (1080p, 1440p, 4K, ultrawide, etc.)

## Requirements

- Plymouth
- Arch Linux (or Arch-based distribution)
- No specific font dependencies (uses system default)

Optional for best appearance:
- `cantarell-fonts` or `ttf-dejavu`

## Installation

⚠️ If you haven't installed and set up plymouth. Please [Click here](https://wiki.archlinux.org/title/Plymouth) and follow the arch wiki guide to setup before proceeding further.

### Manual Installation

1. Clone the repository:
```bash
git clone https://github.com/iam-vasanth/monoarch-refined.git
cd monoarch-refined
```

2. Copy the theme to Plymouth themes directory:
```bash
sudo cp -r monoarch-refined /usr/share/plymouth/themes/
```

3. Set as default theme:
```bash
sudo plymouth-set-default-theme monoarch-refined
```

4. Rebuild initramfs:
```bash
sudo mkinitcpio -P
```

5. Reboot to see the theme in action!

### Testing Before Reboot (Optional)

Test the theme without rebooting:
```bash
sudo plymouthd
sudo plymouth --show-splash
```

Test password prompt:
```bash
sudo plymouthd
sudo plymouth --show-splash
sudo plymouth ask-for-password --prompt="Enter Password"
# Type to see bullets appear
sudo plymouth --quit
```

## Uninstallation

1. Switch to another theme:
```bash
sudo plymouth-set-default-theme -R
```

2. Remove the theme:
```bash
sudo rm -rf /usr/share/plymouth/themes/monoarch-refined
```

3. Rebuild initramfs:
```bash
sudo mkinitcpio -P
```

## Display Compatibility

This theme is designed to work seamlessly across:
- Standard displays (16:9, 16:10, 4:3)
- Ultrawide monitors (21:9, 32:9)
- All resolutions (720p, 1080p, 1440p, 4K, 8K)
- HiDPI/Retina displays
- Portrait/vertical displays

The proportional spacing ensures consistent appearance regardless of screen size or aspect ratio.

## Screenshots

### Boot Animation
![Boot Animation](screenshots/boot.png)

### Password Prompt
![Password Prompt](screenshots/password.png)

## Credits

- **Original Theme**: [Monoarch](https://github.com/farsil/monoarch) by Marco Buzzanca 
- **Modified by**: [iam-vasanth](https://github.com/iam-vasanth) (2025)

## License

MIT License - See [LICENSE](LICENSE) file for details

Copyright (c) 2016 Marco Buzzanca  
Modifications Copyright (c) 2025 iam-vasanth
 
## Contributing

Contributions are welcome! Feel free to:
- Report bugs
- Suggest improvements
- Submit pull requests

---

**Note**: If you encounter any issues, please check the [Issues](https://github.com/iam-vasanth/monoarch-refined/issues) page or create a new one. I'll do my best to help!