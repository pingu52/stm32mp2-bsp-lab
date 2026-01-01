# Setup: Windows 11 + WSL2 Ubuntu 24.04 + zsh

## 1) Base packages
Install: git, build-essential, python3, pipx, rsync, unzip, bison/flex, ncurses-dev, etc.

## 2) Serial console
- Prefer STLINK VCP (on-board) if available
- Alternative: CP2102 USB-UART

## 3) Tooling
- `picocom` or `minicom` for UART
- `dtc` for device tree
- `kas` (optional) for Yocto reproducibility

## 4) Workspace
Keep Yocto build dirs OUTSIDE the git repo (e.g., `~/work/stm32mp257/yocto-build/`).
