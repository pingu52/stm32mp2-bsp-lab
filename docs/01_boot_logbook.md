# Boot Logbook

## Definition of Done
- Full boot log captured from power-on to login prompt
- Logs saved under `docs/evidence/uart/` with scenario name
- Basic inventory:
  - U-Boot version
  - Linux version
  - Device Tree name loaded
  - Rootfs type (eMMC/SD/NFS)

## Commands
- `dmesg -T | less`
- `cat /proc/cmdline`
- `cat /proc/device-tree/model`
