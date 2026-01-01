# BME280 Bring-up (I2C8 on CN5)

## Wiring (CN5)
- 3V3, GND, I2C8_SDA, I2C8_SCL

## Evidence-first debug checklist
1) Logic Analyzer: confirm START → address (0x76/0x77) → ACK
2) `i2cdetect -y <bus>`
3) Confirm DT node with `compatible = "bosch,bme280"`
4) Confirm driver loads (dmesg) and IIO entries exist

## Outputs to attach
- UART log snippet showing probe success
- LA capture screenshot
- `ls -l /sys/bus/iio/devices/` results
