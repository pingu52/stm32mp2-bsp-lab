FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}/${PV}:"

# source patch DT
SRC_URI:append = " \
  file://0001-stm32mp257f-dk-add-bme280-i2c0-0x76.patch \
"

# config
SRC_URI:append = " \
  file://fragment-bmp280.config \
"

KERNEL_CONFIG_FRAGMENTS:append = " \
  ${WORKDIR}/fragment-bmp280.config \
"

