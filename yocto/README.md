# Yocto workspace (recommended)

Keep Yocto build artifacts outside the git repo.

This repo stores:
- `meta-myboard/` : your custom layer (bbappend, recipes, configs)
- optional: `kas/` : reproducible configuration

## Suggested external layout
- `~/work/stm32mp257/yocto/` : OpenSTLinux checkout
- `~/work/stm32mp257/build/` : build directory (tmp, sstate, dl)
- this repo: `~/work/stm32mp257/stm32mp257f-bsp-lab/`

Then add your layer path into bblayers.conf (or via kas).
