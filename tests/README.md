# Tests

Keep tests small and deterministic.

- `smoke/` : boot, network, storage, i2c visibility
- `sensor/` : BME280 readout sanity checks

Each test should include:
- prerequisites
- commands
- expected output
- artifacts to attach
