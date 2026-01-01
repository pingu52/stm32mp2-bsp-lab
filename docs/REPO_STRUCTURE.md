# Repository Structure

This repo is organized to resemble real BSP work:

- `docs/`  
  Human-readable procedures, decisions, and evidence (logs, screenshots).
- `hardware/`  
  Wiring diagrams, pinouts, Logic Analyzer exports, photos (small).
- `patches/`  
  Versioned patch sets for U-Boot / Linux / (optionally) OP-TEE/TF-A.
- `yocto/`  
  Reproducible build entrypoint: `kas/` (optional) + `meta-myboard/` layer.
- `scripts/`  
  Automation: flashing, log capture helpers, DT rebuild, packaging.
- `tests/`  
  Smoke tests & verification checklists (boot, I2C, sensor, networking).

## Naming rules
- Patches: `patches/<component>/<version>/NNNN-description.patch`
- Docs: `docs/NN_topic.md` with stable numbering
- Evidence files:
  - UART logs: `docs/evidence/uart/YYYY-MM-DD_<scenario>.log`
  - LA exports: `hardware/logic_analyzer/exports/YYYY-MM-DD_<scenario>.(csv|png|sal)`

## Branching
- `main`: always buildable and documented
- `wip/<topic>`: experiments
- Release tags: `v0.1-bringup`, `v0.2-bme280`, `v0.3-yocto-layer`
