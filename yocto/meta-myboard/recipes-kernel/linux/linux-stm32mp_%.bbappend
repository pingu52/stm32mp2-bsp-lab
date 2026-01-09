FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}/${PV}:"

# source patch DT
SRC_URI:append = " \
  file://0001-arm64-dts-stm32mp257f-dk-add-bme280-on-i2c2-0x76.patch \
  file://0002-arm64-dts-stm32mp257f-dk-wire-bme280-vdda-vddd-to-sc.patch \
"

# config
SRC_URI:append = " \
  file://fragment-bmp280.config \
"

KERNEL_CONFIG_FRAGMENTS:append = " \
  ${WORKDIR}/fragment-bmp280.config \
"

