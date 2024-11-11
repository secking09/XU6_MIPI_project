
# I2C Ports, They are routed to FMC.
set_property -dict {PACKAGE_PIN AG11 IOSTANDARD LVCMOS18} [get_ports I2C_SDA]
set_property -dict {PACKAGE_PIN AG10 IOSTANDARD LVCMOS18} [get_ports I2C_SCL]

# Differential Data Ports
set_property -dict {PACKAGE_PIN N9 IOSTANDARD MIPI_DPHY_DCI} [get_ports MIPI_D0_P]
set_property -dict {PACKAGE_PIN N8 IOSTANDARD MIPI_DPHY_DCI} [get_ports MIPI_D0_N]
set_property -dict {PACKAGE_PIN N7 IOSTANDARD MIPI_DPHY_DCI} [get_ports MIPI_D1_P]
set_property -dict {PACKAGE_PIN N6 IOSTANDARD MIPI_DPHY_DCI} [get_ports MIPI_D1_N]
set_property -dict {PACKAGE_PIN M6 IOSTANDARD MIPI_DPHY_DCI} [get_ports MIPI_D2_P]
set_property -dict {PACKAGE_PIN L5 IOSTANDARD MIPI_DPHY_DCI} [get_ports MIPI_D2_N]
set_property -dict {PACKAGE_PIN M8 IOSTANDARD MIPI_DPHY_DCI} [get_ports MIPI_D3_P]
set_property -dict {PACKAGE_PIN L8 IOSTANDARD MIPI_DPHY_DCI} [get_ports MIPI_D3_N]

# Differential Clock Ports
set_property -dict {PACKAGE_PIN P7 IOSTANDARD MIPI_DPHY_DCI} [get_ports MIPI_CLK_P]
set_property -dict {PACKAGE_PIN P6 IOSTANDARD MIPI_DPHY_DCI} [get_ports MIPI_CLK_N]
# Display Port
set_property -dict {PACKAGE_PIN AH6 IOSTANDARD LVCMOS18} [get_ports DP_HPD]
set_property -dict {PACKAGE_PIN AB5 IOSTANDARD LVCMOS18} [get_ports DP_AUX_IN]
set_property -dict {PACKAGE_PIN AD6 IOSTANDARD LVCMOS18} [get_ports DP_AUX_OE]
set_property -dict {PACKAGE_PIN AE4 IOSTANDARD LVCMOS18} [get_ports DP_AUX_OUT]

## Auxilaries
set_property -dict {PACKAGE_PIN F3 IOSTANDARD LVCMOS18} [get_ports SENSOR_STROBE]
set_property -dict {PACKAGE_PIN G3 IOSTANDARD LVCMOS18} [get_ports SENSOR_XVS]
set_property -dict {PACKAGE_PIN D6 IOSTANDARD LVCMOS18} [get_ports SENSOR_PWDN]
set_property -dict {PACKAGE_PIN D7 IOSTANDARD LVCMOS18} [get_ports SENSOR_SLASEL]

## LED
#set_property -dict {PACKAGE_PIN E7    IOSTANDARD LVCMOS18  } [get_ports {LED0_PL}]
#set_property -dict {PACKAGE_PIN H2    IOSTANDARD LVCMOS18  } [get_ports {LED1_PL}]
#set_property -dict {PACKAGE_PIN P9    IOSTANDARD LVCMOS18  } [get_ports {LED2_PL}]
#set_property -dict {PACKAGE_PIN K5    IOSTANDARD LVCMOS18  } [get_ports {LED3_PL}]






set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
