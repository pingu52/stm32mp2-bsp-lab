# stm32mp257f-bsp-lab

Practical Embedded Linux BSP bring-up lab for **STM32MP257F-DK** using **OpenSTLinux (Yocto)**.

## Goals (portfolio-ready)
- Reproducible bring-up: flash → boot → log capture
- Source builds: U-Boot / Linux kernel (+ DT)
- Peripheral bring-up: I2C8 + **BME280** (IIO)
- Yocto integration: custom layer + bbappend + image build
- Evidence-driven debugging: UART logs + Logic Analyzer captures

## Repository layout
See [`docs/REPO_STRUCTURE.md`](docs/REPO_STRUCTURE.md).

## Quick start
1. Follow `docs/00_setup_windows_wsl2.md`
2. Capture boot logs: `docs/01_boot_logbook.md`
3. Bring up I2C8 + BME280: `docs/20_bme280_bringup.md`

## Conventions
- Patch files go to `patches/` (grouped by component/version)
- Build artifacts are **not committed**
- Large binary captures: prefer Git LFS or release assets

## License
MIT (adjust as needed).
