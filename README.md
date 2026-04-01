# OpenWorkSpace-OS

Core build scripts and Cubic configuration for OpenWorkSpace OS.

A custom Ubuntu 26.04 LTS (Resolute Raccoon) with Linux Kernel 7.0 and a clean, simple Windows-like desktop experience.

### Key Features
- Based on latest Ubuntu 26.04 LTS daily/Beta with automatic upgrade to newest Kernel 7.0 during build
- Cubic-powered custom ISO remastering
- Minimal pre-installed applications (clean desktop)
- Modular post-install scripts pulled online during first boot (Office, Nextcloud, etc.)
- Easy USB installer with unattended mode
- Fully open source (GPLv3)

### Repository Structure
- `themes/openworkspace-win11/`     → Our custom GTK/shell theme (Windows 11 inspired)
- `icons/openworkspace-win11/`      → Custom icon set
- `extensions/openworkspace-taskbar/` → Windows-style taskbar and desktop extensions
- `scripts/`                        → All build, desktop setup and post-install scripts
- `config/`                         → Preseed, cloud-init and first-boot configuration
- `docs/`                           → Build instructions and Cubic guide

License: GPLv3
