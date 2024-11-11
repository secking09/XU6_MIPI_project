# ----------------------------------------------------------------------------------
# Copyright (c) 2022 by Enclustra GmbH, Switzerland.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this hardware, software, firmware, and associated documentation files (the
# "Product"), to deal in the Product without restriction, including without
# limitation the rights to use, copy, modify, merge, publish, distribute,
# sublicense, and/or sell copies of the Product, and to permit persons to whom the
# Product is furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Product.
#
# THE PRODUCT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
# INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
# PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
# HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# PRODUCT OR THE USE OR OTHER DEALINGS IN THE PRODUCT.
# ----------------------------------------------------------------------------------

set_property BITSTREAM.CONFIG.OVERTEMPSHUTDOWN ENABLE [current_design]
 
# ----------------------------------------------------------------------------------
# Important! Do not remove this constraint!
# This property ensures that all unused pins are set to high impedance.
# If the constraint is removed, all unused pins have to be set to HiZ in the top level file.
set_property BITSTREAM.CONFIG.UNUSEDPIN PULLNONE [current_design]
# ----------------------------------------------------------------------------------

# Anios IO
set_property -dict {PACKAGE_PIN AB11  IOSTANDARD LVCMOS18  } [get_ports {IO_D0_P}]
set_property -dict {PACKAGE_PIN AC11  IOSTANDARD LVCMOS18  } [get_ports {IO_D1_N}]
set_property -dict {PACKAGE_PIN AD15  IOSTANDARD LVCMOS18  } [get_ports {IO_D2_P}]
set_property -dict {PACKAGE_PIN AD14  IOSTANDARD LVCMOS18  } [get_ports {IO_D3_N}]
set_property -dict {PACKAGE_PIN AG13  IOSTANDARD LVCMOS18  } [get_ports {IO_D4_P}]
set_property -dict {PACKAGE_PIN AH13  IOSTANDARD LVCMOS18  } [get_ports {IO_D5_N}]
set_property -dict {PACKAGE_PIN AA13  IOSTANDARD LVCMOS18  } [get_ports {IO_D6_P}]
set_property -dict {PACKAGE_PIN AB13  IOSTANDARD LVCMOS18  } [get_ports {IO_D7_N}]
set_property -dict {PACKAGE_PIN AE13  IOSTANDARD LVCMOS18  } [get_ports {IO_D8_P}]
set_property -dict {PACKAGE_PIN AF13  IOSTANDARD LVCMOS18  } [get_ports {IO_D9_N}]
set_property -dict {PACKAGE_PIN AG14  IOSTANDARD LVCMOS18  } [get_ports {IO_D10_P}]
set_property -dict {PACKAGE_PIN AH14  IOSTANDARD LVCMOS18  } [get_ports {IO_D11_N}]
set_property -dict {PACKAGE_PIN AE15  IOSTANDARD LVCMOS18  } [get_ports {IO_D12_P}]
set_property -dict {PACKAGE_PIN AE14  IOSTANDARD LVCMOS18  } [get_ports {IO_D13_N}]
set_property -dict {PACKAGE_PIN Y12   IOSTANDARD LVCMOS18  } [get_ports {IO_D14_P}]
set_property -dict {PACKAGE_PIN AA12  IOSTANDARD LVCMOS18  } [get_ports {IO_D15_N}]
set_property -dict {PACKAGE_PIN W12   IOSTANDARD LVCMOS18  } [get_ports {IO_D16_P}]
set_property -dict {PACKAGE_PIN W11   IOSTANDARD LVCMOS18  } [get_ports {IO_D17_N}]
set_property -dict {PACKAGE_PIN Y14   IOSTANDARD LVCMOS18  } [get_ports {IO_D18_P}]
set_property -dict {PACKAGE_PIN Y13   IOSTANDARD LVCMOS18  } [get_ports {IO_D19_N}]
set_property -dict {PACKAGE_PIN AB15  IOSTANDARD LVCMOS18  } [get_ports {IO_D20_P}]
set_property -dict {PACKAGE_PIN AB14  IOSTANDARD LVCMOS18  } [get_ports {IO_D21_N}]
set_property -dict {PACKAGE_PIN W14   IOSTANDARD LVCMOS18  } [get_ports {IO_D22_P}]
set_property -dict {PACKAGE_PIN W13   IOSTANDARD LVCMOS18  } [get_ports {IO_D23_N}]
set_property -dict {PACKAGE_PIN AC13  IOSTANDARD LVCMOS18  } [get_ports {IO_CLK0_N}]
set_property -dict {PACKAGE_PIN AC14  IOSTANDARD LVCMOS18  } [get_ports {IO_CLK0_P}]

# Clock Generator
set_property -dict {PACKAGE_PIN AD10  IOSTANDARD LVCMOS18  } [get_ports {OSC_N}]
set_property -dict {PACKAGE_PIN AD11  IOSTANDARD LVCMOS18  } [get_ports {OSC_P}]

# Display Port
set_property -dict {PACKAGE_PIN AH6   IOSTANDARD LVCMOS18  } [get_ports {DP_HPD}]
set_property -dict {PACKAGE_PIN AB5   IOSTANDARD LVCMOS18  } [get_ports {DP_AUX_IN}]
set_property -dict {PACKAGE_PIN AD6   IOSTANDARD LVCMOS18  } [get_ports {DP_AUX_OE}]
set_property -dict {PACKAGE_PIN AE4   IOSTANDARD LVCMOS18  } [get_ports {DP_AUX_OUT}]

##  Benjamin Excel ## 
set_property -dict {PACKAGE_PIN AB8   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA06_P}] ## V1_mipi_D1_fmcK10_ioAB8_b64_P
set_property -dict {PACKAGE_PIN AC8   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA06_N}] ## V1_mipi_D1_fmcK11_ioAC8_b64_N
set_property -dict {PACKAGE_PIN AD7   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA03_P}] ## V1_mipi_CLK_fmcJ6_ioAD7_b64_P
set_property -dict {PACKAGE_PIN AE7   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA03_N}] ## V1_mipi_CLK_fmcJ7_ioAE7_b64_N
set_property -dict {PACKAGE_PIN AB7   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA02_P}] ## V1_mipi_D0_fmcK7_ioAB7_b64_P
set_property -dict {PACKAGE_PIN AC7   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA02_N}] ## V1_mipi_D0_fmcK8_ioAC7_b64_N

set_property -dict {PACKAGE_PIN AG9   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA08_P}]
set_property -dict {PACKAGE_PIN AH9   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA08_N}]

set_property -dict {PACKAGE_PIN AH8   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA19_P}]
set_property -dict {PACKAGE_PIN AH7   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA19_N}]

set_property -dict {PACKAGE_PIN AG5   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA15_N}]
set_property -dict {PACKAGE_PIN AG6   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA15_P}]
# FMC HPC Connector




set_property -dict {PACKAGE_PIN AD9   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA04_N}]
set_property -dict {PACKAGE_PIN AC9   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA04_P}]
set_property -dict {PACKAGE_PIN AC6   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA05_N}]
set_property -dict {PACKAGE_PIN AB6   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA05_P}]


set_property -dict {PACKAGE_PIN AE8   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA07_N}]
set_property -dict {PACKAGE_PIN AE9   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA07_P}]
set_property -dict {PACKAGE_PIN AH9   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA08_N}]

set_property -dict {PACKAGE_PIN AG8   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA09_N}]
set_property -dict {PACKAGE_PIN AF8   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA09_P}]
set_property -dict {PACKAGE_PIN AH4   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA10_N}]
set_property -dict {PACKAGE_PIN AG4   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA10_P}]
set_property -dict {PACKAGE_PIN AD1   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA11_N}]
set_property -dict {PACKAGE_PIN AD2   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA11_P}]
set_property -dict {PACKAGE_PIN AH3   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA12_N}]
set_property -dict {PACKAGE_PIN AG3   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA12_P}]
set_property -dict {PACKAGE_PIN AB3   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA13_N}]
set_property -dict {PACKAGE_PIN AB4   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA13_P}]
set_property -dict {PACKAGE_PIN AF3   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA14_N}]
set_property -dict {PACKAGE_PIN AE3   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA14_P}]

set_property -dict {PACKAGE_PIN AF2   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA16_N}]
set_property -dict {PACKAGE_PIN AE2   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA16_P}]
set_property -dict {PACKAGE_PIN AD4   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA18_N}]
set_property -dict {PACKAGE_PIN AD5   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA18_P}]


set_property -dict {PACKAGE_PIN AH1   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA20_N}]
set_property -dict {PACKAGE_PIN AH2   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA20_P}]
set_property -dict {PACKAGE_PIN AC2   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA21_N}]
set_property -dict {PACKAGE_PIN AB2   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA21_P}]
set_property -dict {PACKAGE_PIN AG1   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA22_N}]
set_property -dict {PACKAGE_PIN AF1   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA22_P}]
set_property -dict {PACKAGE_PIN AC1   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA23_N}]
set_property -dict {PACKAGE_PIN AB1   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA23_P}]
set_property -dict {PACKAGE_PIN E3    IOSTANDARD LVCMOS18  } [get_ports {FMC_HB01_N}]
set_property -dict {PACKAGE_PIN E4    IOSTANDARD LVCMOS18  } [get_ports {FMC_HB01_P}]
set_property -dict {PACKAGE_PIN T7    IOSTANDARD LVCMOS18  } [get_ports {FMC_HB02_N}]
set_property -dict {PACKAGE_PIN R7    IOSTANDARD LVCMOS18  } [get_ports {FMC_HB02_P}]
set_property -dict {PACKAGE_PIN F3    IOSTANDARD LVCMOS18  } [get_ports {FMC_HB03_N}]
set_property -dict {PACKAGE_PIN G3    IOSTANDARD LVCMOS18  } [get_ports {FMC_HB03_P}]
set_property -dict {PACKAGE_PIN T8    IOSTANDARD LVCMOS18  } [get_ports {FMC_HB04_N}]
set_property -dict {PACKAGE_PIN R8    IOSTANDARD LVCMOS18  } [get_ports {FMC_HB04_P}]
set_property -dict {PACKAGE_PIN N8    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA02_N}]
set_property -dict {PACKAGE_PIN N9    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA02_P}]
set_property -dict {PACKAGE_PIN N6    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA03_N}]
set_property -dict {PACKAGE_PIN N7    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA03_P}]
set_property -dict {PACKAGE_PIN L8    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA04_N}]
set_property -dict {PACKAGE_PIN M8    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA04_P}]
set_property -dict {PACKAGE_PIN J9    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA05_N}]
set_property -dict {PACKAGE_PIN K9    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA05_P}]
set_property -dict {PACKAGE_PIN K7    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA06_N}]
set_property -dict {PACKAGE_PIN K8    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA06_P}]
set_property -dict {PACKAGE_PIN H8    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA07_N}]
set_property -dict {PACKAGE_PIN H9    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA07_P}]
set_property -dict {PACKAGE_PIN H7    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA08_N}]
set_property -dict {PACKAGE_PIN J7    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA08_P}]
set_property -dict {PACKAGE_PIN H6    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA09_N}]
set_property -dict {PACKAGE_PIN J6    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA09_P}]
set_property -dict {PACKAGE_PIN J4    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA10_N}]
set_property -dict {PACKAGE_PIN J5    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA10_P}]
set_property -dict {PACKAGE_PIN H3    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA11_N}]
set_property -dict {PACKAGE_PIN H4    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA11_P}]
set_property -dict {PACKAGE_PIN P6    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA12_N}]
set_property -dict {PACKAGE_PIN P7    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA12_P}]
set_property -dict {PACKAGE_PIN J2    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA13_N}]
set_property -dict {PACKAGE_PIN K2    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA13_P}]
set_property -dict {PACKAGE_PIN H1    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA14_N}]
set_property -dict {PACKAGE_PIN J1    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA14_P}]
set_property -dict {PACKAGE_PIN K1    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA15_N}]
set_property -dict {PACKAGE_PIN L1    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA15_P}]
set_property -dict {PACKAGE_PIN T6    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA16_N}]
set_property -dict {PACKAGE_PIN R6    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA16_P}]
set_property -dict {PACKAGE_PIN F6    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA19_N}]
set_property -dict {PACKAGE_PIN G6    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA19_P}]
set_property -dict {PACKAGE_PIN F7    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA20_N}]
set_property -dict {PACKAGE_PIN G8    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA20_P}]
set_property -dict {PACKAGE_PIN E8    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA21_N}]
set_property -dict {PACKAGE_PIN F8    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA21_P}]
set_property -dict {PACKAGE_PIN D9    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA22_N}]
set_property -dict {PACKAGE_PIN E9    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA22_P}]
set_property -dict {PACKAGE_PIN B9    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA23_N}]
set_property -dict {PACKAGE_PIN C9    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA23_P}]
set_property -dict {PACKAGE_PIN B8    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA24_N}]
set_property -dict {PACKAGE_PIN C8    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA24_P}]
set_property -dict {PACKAGE_PIN A8    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA25_N}]
set_property -dict {PACKAGE_PIN A9    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA25_P}]
set_property -dict {PACKAGE_PIN A6    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA26_N}]
set_property -dict {PACKAGE_PIN A7    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA26_P}]
set_property -dict {PACKAGE_PIN B6    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA27_N}]
set_property -dict {PACKAGE_PIN C6    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA27_P}]
set_property -dict {PACKAGE_PIN A5    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA28_N}]
set_property -dict {PACKAGE_PIN B5    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA28_P}]
set_property -dict {PACKAGE_PIN A4    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA29_N}]
set_property -dict {PACKAGE_PIN B4    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA29_P}]
set_property -dict {PACKAGE_PIN A3    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA30_N}]
set_property -dict {PACKAGE_PIN B3    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA30_P}]
set_property -dict {PACKAGE_PIN A1    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA31_N}]
set_property -dict {PACKAGE_PIN A2    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA31_P}]
set_property -dict {PACKAGE_PIN F5    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA32_N}]
set_property -dict {PACKAGE_PIN G5    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA32_P}]
set_property -dict {PACKAGE_PIN B1    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA33_N}]
set_property -dict {PACKAGE_PIN C1    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA33_P}]
set_property -dict {PACKAGE_PIN AF5   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA00_CC_N}]
set_property -dict {PACKAGE_PIN AE5   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA00_CC_P}]
set_property -dict {PACKAGE_PIN AF6   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA01_CC_N}]
set_property -dict {PACKAGE_PIN AF7   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA01_CC_P}]
set_property -dict {PACKAGE_PIN AC3   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA17_CC_N}]
set_property -dict {PACKAGE_PIN AC4   IOSTANDARD LVCMOS18  } [get_ports {FMC_HA17_CC_P}]
set_property -dict {PACKAGE_PIN L5    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA00_CC_N}]
set_property -dict {PACKAGE_PIN M6    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA00_CC_P}]
set_property -dict {PACKAGE_PIN L6    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA01_CC_N}]
set_property -dict {PACKAGE_PIN L7    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA01_CC_P}]
set_property -dict {PACKAGE_PIN D5    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA17_CC_N}]
set_property -dict {PACKAGE_PIN E5    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA17_CC_P}]
set_property -dict {PACKAGE_PIN D6    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA18_CC_N}]
set_property -dict {PACKAGE_PIN D7    IOSTANDARD LVCMOS18  } [get_ports {FMC_LA18_CC_P}]
set_property -dict {PACKAGE_PIN L2    IOSTANDARD LVCMOS18  } [get_ports {FMC_CLK0_M2C_N}]
set_property -dict {PACKAGE_PIN L3    IOSTANDARD LVCMOS18  } [get_ports {FMC_CLK0_M2C_P}]
set_property -dict {PACKAGE_PIN C2    IOSTANDARD LVCMOS18  } [get_ports {FMC_CLK1_M2C_N}]
set_property -dict {PACKAGE_PIN C3    IOSTANDARD LVCMOS18  } [get_ports {FMC_CLK1_M2C_P}]

# Firefly
set_property -dict {PACKAGE_PIN AE12  IOSTANDARD LVCMOS18  } [get_ports {FF_DIO0_P}]
set_property -dict {PACKAGE_PIN AF12  IOSTANDARD LVCMOS18  } [get_ports {FF_DIO0_N}]
set_property -dict {PACKAGE_PIN AB10  IOSTANDARD LVCMOS18  } [get_ports {FF_DIO1_P}]
set_property -dict {PACKAGE_PIN AB9   IOSTANDARD LVCMOS18  } [get_ports {FF_DIO1_N}]
set_property -dict {PACKAGE_PIN AF11  IOSTANDARD LVCMOS18  } [get_ports {FF_DIO2_P}]
set_property -dict {PACKAGE_PIN AG11  IOSTANDARD LVCMOS18  } [get_ports {FF_DIO2_N}]
set_property -dict {PACKAGE_PIN AH12  IOSTANDARD LVCMOS18  } [get_ports {FF_DIO3_P}]
set_property -dict {PACKAGE_PIN AH11  IOSTANDARD LVCMOS18  } [get_ports {FF_DIO3_N}]

# HDMI
set_property -dict {PACKAGE_PIN AF10  IOSTANDARD LVCMOS18  } [get_ports {HDMI_CEC}]
set_property -dict {PACKAGE_PIN AE10  IOSTANDARD LVCMOS18  } [get_ports {HDMI_HPD}]

# I2C MGMT
set_property -dict {PACKAGE_PIN C7    IOSTANDARD LVCMOS18  } [get_ports {I2C_MGMT_SCL}]
set_property -dict {PACKAGE_PIN D2    IOSTANDARD LVCMOS18  } [get_ports {I2C_MGMT_SDA}]

# I2C USER
set_property SLEW SLOW [get_ports I2C_USER_SDA]
set_property SLEW SLOW [get_ports I2C_USER_SCL]
set_property -dict {PACKAGE_PIN AA11  IOSTANDARD LVCMOS18  } [get_ports {I2C_USER_INT_N}]
set_property -dict {PACKAGE_PIN AG10  IOSTANDARD LVCMOS18  } [get_ports {I2C_USER_SCL}]
set_property -dict {PACKAGE_PIN AH10  IOSTANDARD LVCMOS18  } [get_ports {I2C_USER_SDA}]

# LED
set_property -dict {PACKAGE_PIN E7    IOSTANDARD LVCMOS18  } [get_ports {LED0_PL_N}]
set_property -dict {PACKAGE_PIN H2    IOSTANDARD LVCMOS18  } [get_ports {LED1_PL_N}]
set_property -dict {PACKAGE_PIN P9    IOSTANDARD LVCMOS18  } [get_ports {LED2_PL_N}]
set_property -dict {PACKAGE_PIN K5    IOSTANDARD LVCMOS18  } [get_ports {LED3_PL_N}]

# MGT Group 2
set_property -dict {PACKAGE_PIN C14   IOSTANDARD LVCMOS18  } [get_ports {MGT_TX8_P}]
set_property -dict {PACKAGE_PIN C13   IOSTANDARD LVCMOS18  } [get_ports {MGT_TX8_N}]
set_property -dict {PACKAGE_PIN B13   IOSTANDARD LVCMOS18  } [get_ports {MGT_TX9_P}]
set_property -dict {PACKAGE_PIN A13   IOSTANDARD LVCMOS18  } [get_ports {MGT_TX9_N}]
set_property -dict {PACKAGE_PIN B14   IOSTANDARD LVCMOS18  } [get_ports {MGT_TX10_P}]
set_property -dict {PACKAGE_PIN A14   IOSTANDARD LVCMOS18  } [get_ports {MGT_TX10_N}]
set_property -dict {PACKAGE_PIN F12   IOSTANDARD LVCMOS18  } [get_ports {MGT_TX11_P}]
set_property -dict {PACKAGE_PIN F11   IOSTANDARD LVCMOS18  } [get_ports {MGT_TX11_N}]
set_property -dict {PACKAGE_PIN G15   IOSTANDARD LVCMOS18  } [get_ports {MGT_RX8_P}]
set_property -dict {PACKAGE_PIN G14   IOSTANDARD LVCMOS18  } [get_ports {MGT_RX8_N}]
set_property -dict {PACKAGE_PIN H14   IOSTANDARD LVCMOS18  } [get_ports {MGT_RX9_P}]
set_property -dict {PACKAGE_PIN H13   IOSTANDARD LVCMOS18  } [get_ports {MGT_RX9_N}]
set_property -dict {PACKAGE_PIN K14   IOSTANDARD LVCMOS18  } [get_ports {MGT_RX10_P}]
set_property -dict {PACKAGE_PIN J14   IOSTANDARD LVCMOS18  } [get_ports {MGT_RX10_N}]
set_property -dict {PACKAGE_PIN E12   IOSTANDARD LVCMOS18  } [get_ports {MGT_RX11_P}]
set_property -dict {PACKAGE_PIN D11   IOSTANDARD LVCMOS18  } [get_ports {MGT_RX11_N}]

# MGT Group 3
set_property -dict {PACKAGE_PIN J11   IOSTANDARD LVCMOS18  } [get_ports {MGT_TX12_P}]
set_property -dict {PACKAGE_PIN J10   IOSTANDARD LVCMOS18  } [get_ports {MGT_TX12_N}]
set_property -dict {PACKAGE_PIN K13   IOSTANDARD LVCMOS18  } [get_ports {MGT_TX13_P}]
set_property -dict {PACKAGE_PIN K12   IOSTANDARD LVCMOS18  } [get_ports {MGT_TX13_N}]
set_property -dict {PACKAGE_PIN H11   IOSTANDARD LVCMOS18  } [get_ports {MGT_TX14_P}]
set_property -dict {PACKAGE_PIN G10   IOSTANDARD LVCMOS18  } [get_ports {MGT_TX14_N}]
set_property -dict {PACKAGE_PIN J12   IOSTANDARD LVCMOS18  } [get_ports {MGT_TX15_P}]
set_property -dict {PACKAGE_PIN H12   IOSTANDARD LVCMOS18  } [get_ports {MGT_TX15_N}]
set_property -dict {PACKAGE_PIN D12   IOSTANDARD LVCMOS18  } [get_ports {MGT_RX12_P}]
set_property -dict {PACKAGE_PIN C12   IOSTANDARD LVCMOS18  } [get_ports {MGT_RX12_N}]
set_property -dict {PACKAGE_PIN A12   IOSTANDARD LVCMOS18  } [get_ports {MGT_RX13_P}]
set_property -dict {PACKAGE_PIN A11   IOSTANDARD LVCMOS18  } [get_ports {MGT_RX13_N}]
set_property -dict {PACKAGE_PIN B11   IOSTANDARD LVCMOS18  } [get_ports {MGT_RX14_P}]
set_property -dict {PACKAGE_PIN A10   IOSTANDARD LVCMOS18  } [get_ports {MGT_RX14_N}]
set_property -dict {PACKAGE_PIN C11   IOSTANDARD LVCMOS18  } [get_ports {MGT_RX15_P}]
set_property -dict {PACKAGE_PIN B10   IOSTANDARD LVCMOS18  } [get_ports {MGT_RX15_N}]

# MGT Group 4
set_property -dict {PACKAGE_PIN G1    IOSTANDARD LVCMOS18  } [get_ports {MGT_TX16_P}]
set_property -dict {PACKAGE_PIN F1    IOSTANDARD LVCMOS18  } [get_ports {MGT_TX16_N}]
set_property -dict {PACKAGE_PIN E1    IOSTANDARD LVCMOS18  } [get_ports {MGT_TX17_P}]
set_property -dict {PACKAGE_PIN D1    IOSTANDARD LVCMOS18  } [get_ports {MGT_TX17_N}]
set_property -dict {PACKAGE_PIN F2    IOSTANDARD LVCMOS18  } [get_ports {MGT_TX18_P}]
set_property -dict {PACKAGE_PIN E2    IOSTANDARD LVCMOS18  } [get_ports {MGT_TX18_N}]
set_property -dict {PACKAGE_PIN D4    IOSTANDARD LVCMOS18  } [get_ports {MGT_TX19_P}]
set_property -dict {PACKAGE_PIN C4    IOSTANDARD LVCMOS18  } [get_ports {MGT_TX19_N}]
set_property -dict {PACKAGE_PIN W8    IOSTANDARD LVCMOS18  } [get_ports {MGT_RX16_P}]
set_property -dict {PACKAGE_PIN Y8    IOSTANDARD LVCMOS18  } [get_ports {MGT_RX16_N}]
set_property -dict {PACKAGE_PIN U9    IOSTANDARD LVCMOS18  } [get_ports {MGT_RX17_P}]
set_property -dict {PACKAGE_PIN V9    IOSTANDARD LVCMOS18  } [get_ports {MGT_RX17_N}]
set_property -dict {PACKAGE_PIN K4    IOSTANDARD LVCMOS18  } [get_ports {MGT_RX18_P}]
set_property -dict {PACKAGE_PIN K3    IOSTANDARD LVCMOS18  } [get_ports {MGT_RX18_N}]
set_property -dict {PACKAGE_PIN U8    IOSTANDARD LVCMOS18  } [get_ports {MGT_RX19_P}]
set_property -dict {PACKAGE_PIN V8    IOSTANDARD LVCMOS18  } [get_ports {MGT_RX19_N}]

# Clock Generator MGT RefClk4
set_property -dict {PACKAGE_PIN F13   IOSTANDARD LVCMOS18  } [get_ports {MGT_REFCLK4_N}]
set_property -dict {PACKAGE_PIN G13   IOSTANDARD LVCMOS18  } [get_ports {MGT_REFCLK4_P}]

# Clock Generator MGT RefClk5
set_property -dict {PACKAGE_PIN E15   IOSTANDARD LVCMOS18  } [get_ports {MGT_REFCLK5_N}]
set_property -dict {PACKAGE_PIN F15   IOSTANDARD LVCMOS18  } [get_ports {MGT_REFCLK5_P}]

# Clock Generator MGT RefClk6
set_property -dict {PACKAGE_PIN D14   IOSTANDARD LVCMOS18  } [get_ports {MGT_REFCLK6_N}]
set_property -dict {PACKAGE_PIN D15   IOSTANDARD LVCMOS18  } [get_ports {MGT_REFCLK6_P}]

# Clock Generator MGT RefClk7
set_property -dict {PACKAGE_PIN E13   IOSTANDARD LVCMOS18  } [get_ports {MGT_REFCLK7_N}]
set_property -dict {PACKAGE_PIN E14   IOSTANDARD LVCMOS18  } [get_ports {MGT_REFCLK7_P}]

# Clock Generator MGT RefClk8
set_property -dict {PACKAGE_PIN F10   IOSTANDARD LVCMOS18  } [get_ports {MGT_REFCLK8_N}]
set_property -dict {PACKAGE_PIN G11   IOSTANDARD LVCMOS18  } [get_ports {MGT_REFCLK8_P}]

# Clock Generator MGT RefClk9
set_property -dict {PACKAGE_PIN D10   IOSTANDARD LVCMOS18  } [get_ports {MGT_REFCLK9_N}]
set_property -dict {PACKAGE_PIN E10   IOSTANDARD LVCMOS18  } [get_ports {MGT_REFCLK9_P}]

# Oscillator 100 MHz
set_property -dict {PACKAGE_PIN AA10  IOSTANDARD LVCMOS18  } [get_ports {CALIB_CLK}]

# PE3 LED
set_property -dict {PACKAGE_PIN Y9    IOSTANDARD LVCMOS18  } [get_ports {PE3_LED0_N}]
set_property -dict {PACKAGE_PIN AA8   IOSTANDARD LVCMOS18  } [get_ports {PE3_LED1_N}]
set_property -dict {PACKAGE_PIN AC12  IOSTANDARD LVCMOS18  } [get_ports {DII_LED_N}]
set_property -dict {PACKAGE_PIN AD12  IOSTANDARD LVCMOS18  } [get_ports {DIO_LED_N}]

# USER INPUT
set_property -dict {PACKAGE_PIN W10   IOSTANDARD LVCMOS18  } [get_ports {BTN_N}]
set_property -dict {PACKAGE_PIN Y10   IOSTANDARD LVCMOS18  } [get_ports {DIP_N}]



# I2C Ports, They are routed to FMC.
set_property -dict {PACKAGE_PIN B6 IOSTANDARD LVCMOS18}  [get_ports I2C_SDA]
set_property -dict {PACKAGE_PIN C6 IOSTANDARD LVCMOS18}  [get_ports I2C_SCL]

# Differential Data Ports
set_property -dict {PACKAGE_PIN N9   IOSTANDARD LVCMOS12  } [get_ports {MIPI_D0_P}]
set_property -dict {PACKAGE_PIN N8   IOSTANDARD LVCMOS12  } [get_ports {MIPI_D0_N}]
set_property -dict {PACKAGE_PIN N7   IOSTANDARD LVCMOS12  } [get_ports {MIPI_D1_P}]
set_property -dict {PACKAGE_PIN N6   IOSTANDARD LVCMOS12  } [get_ports {MIPI_D1_N}]
set_property -dict {PACKAGE_PIN M6   IOSTANDARD LVCMOS12  } [get_ports {MIPI_D2_P}]
set_property -dict {PACKAGE_PIN L5   IOSTANDARD LVCMOS12  } [get_ports {MIPI_D2_N}]
set_property -dict {PACKAGE_PIN M8   IOSTANDARD LVCMOS12  } [get_ports {MIPI_D3_P}]
set_property -dict {PACKAGE_PIN L8   IOSTANDARD LVCMOS12  } [get_ports {MIPI_D3_N}]

# Differential Clock Ports
set_property -dict {PACKAGE_PIN P7   IOSTANDARD LVCMOS12  } [get_ports {MIPI_CLK_P}]
set_property -dict {PACKAGE_PIN P6   IOSTANDARD LVCMOS12  } [get_ports {MIPI_CLK_N}]
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

