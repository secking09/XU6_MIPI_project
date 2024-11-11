---------------------------------------------------------------------------------------------------
-- Copyright (c) 2022 by Enclustra GmbH, Switzerland.
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy of
-- this hardware, software, firmware, and associated documentation files (the
-- "Product"), to deal in the Product without restriction, including without
-- limitation the rights to use, copy, modify, merge, publish, distribute,
-- sublicense, and/or sell copies of the Product, and to permit persons to whom the
-- Product is furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Product.
--
-- THE PRODUCT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
-- INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
-- PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
-- HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
-- OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
-- PRODUCT OR THE USE OR OTHER DEALINGS IN THE PRODUCT.
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- libraries
---------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

---------------------------------------------------------------------------------------------------
-- entity declaration
---------------------------------------------------------------------------------------------------
entity Mercury_XU6_PE3 is
  
  port (
    
    -- Anios IO
    IO_D0_P                        : inout   std_logic;
    IO_D1_N                        : inout   std_logic;
    IO_D2_P                        : inout   std_logic;
    IO_D3_N                        : inout   std_logic;
    IO_D4_P                        : inout   std_logic;
    IO_D5_N                        : inout   std_logic;
    IO_D6_P                        : inout   std_logic;
    IO_D7_N                        : inout   std_logic;
    IO_D8_P                        : inout   std_logic;
    IO_D9_N                        : inout   std_logic;
    IO_D10_P                       : inout   std_logic;
    IO_D11_N                       : inout   std_logic;
    IO_D12_P                       : inout   std_logic;
    IO_D13_N                       : inout   std_logic;
    IO_D14_P                       : inout   std_logic;
    IO_D15_N                       : inout   std_logic;
    IO_D16_P                       : inout   std_logic;
    IO_D17_N                       : inout   std_logic;
    IO_D18_P                       : inout   std_logic;
    IO_D19_N                       : inout   std_logic;
    IO_D20_P                       : inout   std_logic;
    IO_D21_N                       : inout   std_logic;
    IO_D22_P                       : inout   std_logic;
    IO_D23_N                       : inout   std_logic;
    IO_CLK0_N                      : inout   std_logic;
    IO_CLK0_P                      : inout   std_logic;
    
    -- Clock Generator
    OSC_N                          : in      std_logic;
    OSC_P                          : in      std_logic;
    
    -- Display Port
    DP_HPD                         : in      std_logic;
    DP_AUX_IN                      : in      std_logic;
    DP_AUX_OE                      : out     std_logic;
    DP_AUX_OUT                     : out     std_logic;
    
    -- FMC HPC Connector
    FMC_HA02_N                     : inout   std_logic;
    FMC_HA02_P                     : inout   std_logic;
    FMC_HA03_N                     : inout   std_logic;
    FMC_HA03_P                     : inout   std_logic;
    FMC_HA04_N                     : inout   std_logic;
    FMC_HA04_P                     : inout   std_logic;
    FMC_HA05_N                     : inout   std_logic;
    FMC_HA05_P                     : inout   std_logic;
    FMC_HA06_N                     : inout   std_logic;
    FMC_HA06_P                     : inout   std_logic;
    FMC_HA07_N                     : inout   std_logic;
    FMC_HA07_P                     : inout   std_logic;
    FMC_HA08_N                     : inout   std_logic;
    FMC_HA08_P                     : inout   std_logic;
    FMC_HA09_N                     : inout   std_logic;
    FMC_HA09_P                     : inout   std_logic;
    FMC_HA10_N                     : inout   std_logic;
    FMC_HA10_P                     : inout   std_logic;
    FMC_HA11_N                     : inout   std_logic;
    FMC_HA11_P                     : inout   std_logic;
    FMC_HA12_N                     : inout   std_logic;
    FMC_HA12_P                     : inout   std_logic;
    FMC_HA13_N                     : inout   std_logic;
    FMC_HA13_P                     : inout   std_logic;
    FMC_HA14_N                     : inout   std_logic;
    FMC_HA14_P                     : inout   std_logic;
    FMC_HA15_N                     : inout   std_logic;
    FMC_HA15_P                     : inout   std_logic;
    FMC_HA16_N                     : inout   std_logic;
    FMC_HA16_P                     : inout   std_logic;
    FMC_HA18_N                     : inout   std_logic;
    FMC_HA18_P                     : inout   std_logic;
    FMC_HA19_N                     : inout   std_logic;
    FMC_HA19_P                     : inout   std_logic;
    FMC_HA20_N                     : inout   std_logic;
    FMC_HA20_P                     : inout   std_logic;
    FMC_HA21_N                     : inout   std_logic;
    FMC_HA21_P                     : inout   std_logic;
    FMC_HA22_N                     : inout   std_logic;
    FMC_HA22_P                     : inout   std_logic;
    FMC_HA23_N                     : inout   std_logic;
    FMC_HA23_P                     : inout   std_logic;
    FMC_HB01_N                     : inout   std_logic;
    FMC_HB01_P                     : inout   std_logic;
    FMC_HB02_N                     : inout   std_logic;
    FMC_HB02_P                     : inout   std_logic;
    FMC_HB03_N                     : inout   std_logic;
    FMC_HB03_P                     : inout   std_logic;
    FMC_HB04_N                     : inout   std_logic;
    FMC_HB04_P                     : inout   std_logic;
    FMC_LA02_N                     : inout   std_logic;
    FMC_LA02_P                     : inout   std_logic;
    FMC_LA03_N                     : inout   std_logic;
    FMC_LA03_P                     : inout   std_logic;
    FMC_LA04_N                     : inout   std_logic;
    FMC_LA04_P                     : inout   std_logic;
    FMC_LA05_N                     : inout   std_logic;
    FMC_LA05_P                     : inout   std_logic;
    FMC_LA06_N                     : inout   std_logic;
    FMC_LA06_P                     : inout   std_logic;
    FMC_LA07_N                     : inout   std_logic;
    FMC_LA07_P                     : inout   std_logic;
    FMC_LA08_N                     : inout   std_logic;
    FMC_LA08_P                     : inout   std_logic;
    FMC_LA09_N                     : inout   std_logic;
    FMC_LA09_P                     : inout   std_logic;
    FMC_LA10_N                     : inout   std_logic;
    FMC_LA10_P                     : inout   std_logic;
    FMC_LA11_N                     : inout   std_logic;
    FMC_LA11_P                     : inout   std_logic;
    FMC_LA12_N                     : inout   std_logic;
    FMC_LA12_P                     : inout   std_logic;
    FMC_LA13_N                     : inout   std_logic;
    FMC_LA13_P                     : inout   std_logic;
    FMC_LA14_N                     : inout   std_logic;
    FMC_LA14_P                     : inout   std_logic;
    FMC_LA15_N                     : inout   std_logic;
    FMC_LA15_P                     : inout   std_logic;
    FMC_LA16_N                     : inout   std_logic;
    FMC_LA16_P                     : inout   std_logic;
    FMC_LA19_N                     : inout   std_logic;
    FMC_LA19_P                     : inout   std_logic;
    FMC_LA20_N                     : inout   std_logic;
    FMC_LA20_P                     : inout   std_logic;
    FMC_LA21_N                     : inout   std_logic;
    FMC_LA21_P                     : inout   std_logic;
    FMC_LA22_N                     : inout   std_logic;
    FMC_LA22_P                     : inout   std_logic;
    FMC_LA23_N                     : inout   std_logic;
    FMC_LA23_P                     : inout   std_logic;
    FMC_LA24_N                     : inout   std_logic;
    FMC_LA24_P                     : inout   std_logic;
    FMC_LA25_N                     : inout   std_logic;
    FMC_LA25_P                     : inout   std_logic;
    FMC_LA26_N                     : inout   std_logic;
    FMC_LA26_P                     : inout   std_logic;
    FMC_LA27_N                     : inout   std_logic;
    FMC_LA27_P                     : inout   std_logic;
    FMC_LA28_N                     : inout   std_logic;
    FMC_LA28_P                     : inout   std_logic;
    FMC_LA29_N                     : inout   std_logic;
    FMC_LA29_P                     : inout   std_logic;
    FMC_LA30_N                     : inout   std_logic;
    FMC_LA30_P                     : inout   std_logic;
    FMC_LA31_N                     : inout   std_logic;
    FMC_LA31_P                     : inout   std_logic;
    FMC_LA32_N                     : inout   std_logic;
    FMC_LA32_P                     : inout   std_logic;
    FMC_LA33_N                     : inout   std_logic;
    FMC_LA33_P                     : inout   std_logic;
    FMC_HA00_CC_N                  : inout   std_logic;
    FMC_HA00_CC_P                  : inout   std_logic;
    FMC_HA01_CC_N                  : inout   std_logic;
    FMC_HA01_CC_P                  : inout   std_logic;
    FMC_HA17_CC_N                  : inout   std_logic;
    FMC_HA17_CC_P                  : inout   std_logic;
    FMC_LA00_CC_N                  : inout   std_logic;
    FMC_LA00_CC_P                  : inout   std_logic;
    FMC_LA01_CC_N                  : inout   std_logic;
    FMC_LA01_CC_P                  : inout   std_logic;
    FMC_LA17_CC_N                  : inout   std_logic;
    FMC_LA17_CC_P                  : inout   std_logic;
    FMC_LA18_CC_N                  : inout   std_logic;
    FMC_LA18_CC_P                  : inout   std_logic;
    FMC_CLK0_M2C_N                 : inout   std_logic;
    FMC_CLK0_M2C_P                 : inout   std_logic;
    FMC_CLK1_M2C_N                 : inout   std_logic;
    FMC_CLK1_M2C_P                 : inout   std_logic;
    
    -- Firefly
    FF_DIO0_P                      : inout   std_logic;
    FF_DIO0_N                      : inout   std_logic;
    FF_DIO1_P                      : inout   std_logic;
    FF_DIO1_N                      : inout   std_logic;
    FF_DIO2_P                      : inout   std_logic;
    FF_DIO2_N                      : inout   std_logic;
    FF_DIO3_P                      : inout   std_logic;
    FF_DIO3_N                      : inout   std_logic;
    
    -- HDMI
    HDMI_CEC                       : inout   std_logic;
    HDMI_HPD                       : in      std_logic;
    
    -- I2C MGMT
    I2C_MGMT_SCL                   : inout   std_logic;
    I2C_MGMT_SDA                   : inout   std_logic;
    
    -- I2C USER
    I2C_USER_INT_N                 : in      std_logic;
    I2C_USER_SCL                   : inout   std_logic;
    I2C_USER_SDA                   : inout   std_logic;
    
    -- LED
    LED0_PL_N                      : out     std_logic;
    LED1_PL_N                      : out     std_logic;
    LED2_PL_N                      : out     std_logic;
    LED3_PL_N                      : out     std_logic;
    
    -- MGT Group 2
    MGT_TX8_P                      : inout   std_logic;
    MGT_TX8_N                      : inout   std_logic;
    MGT_TX9_P                      : inout   std_logic;
    MGT_TX9_N                      : inout   std_logic;
    MGT_TX10_P                     : inout   std_logic;
    MGT_TX10_N                     : inout   std_logic;
    MGT_TX11_P                     : inout   std_logic;
    MGT_TX11_N                     : inout   std_logic;
    MGT_RX8_P                      : inout   std_logic;
    MGT_RX8_N                      : inout   std_logic;
    MGT_RX9_P                      : inout   std_logic;
    MGT_RX9_N                      : inout   std_logic;
    MGT_RX10_P                     : inout   std_logic;
    MGT_RX10_N                     : inout   std_logic;
    MGT_RX11_P                     : inout   std_logic;
    MGT_RX11_N                     : inout   std_logic;
    
    -- MGT Group 3
    MGT_TX12_P                     : inout   std_logic;
    MGT_TX12_N                     : inout   std_logic;
    MGT_TX13_P                     : inout   std_logic;
    MGT_TX13_N                     : inout   std_logic;
    MGT_TX14_P                     : inout   std_logic;
    MGT_TX14_N                     : inout   std_logic;
    MGT_TX15_P                     : inout   std_logic;
    MGT_TX15_N                     : inout   std_logic;
    MGT_RX12_P                     : inout   std_logic;
    MGT_RX12_N                     : inout   std_logic;
    MGT_RX13_P                     : inout   std_logic;
    MGT_RX13_N                     : inout   std_logic;
    MGT_RX14_P                     : inout   std_logic;
    MGT_RX14_N                     : inout   std_logic;
    MGT_RX15_P                     : inout   std_logic;
    MGT_RX15_N                     : inout   std_logic;
    
    -- MGT Group 4
    MGT_TX16_P                     : inout   std_logic;
    MGT_TX16_N                     : inout   std_logic;
    MGT_TX17_P                     : inout   std_logic;
    MGT_TX17_N                     : inout   std_logic;
    MGT_TX18_P                     : inout   std_logic;
    MGT_TX18_N                     : inout   std_logic;
    MGT_TX19_P                     : inout   std_logic;
    MGT_TX19_N                     : inout   std_logic;
    MGT_RX16_P                     : inout   std_logic;
    MGT_RX16_N                     : inout   std_logic;
    MGT_RX17_P                     : inout   std_logic;
    MGT_RX17_N                     : inout   std_logic;
    MGT_RX18_P                     : inout   std_logic;
    MGT_RX18_N                     : inout   std_logic;
    MGT_RX19_P                     : inout   std_logic;
    MGT_RX19_N                     : inout   std_logic;
    
    -- Clock Generator MGT RefClk4
    MGT_REFCLK4_N                  : in      std_logic;
    MGT_REFCLK4_P                  : in      std_logic;
    
    -- Clock Generator MGT RefClk5
    MGT_REFCLK5_N                  : in      std_logic;
    MGT_REFCLK5_P                  : in      std_logic;
    
    -- Clock Generator MGT RefClk6
    MGT_REFCLK6_N                  : in      std_logic;
    MGT_REFCLK6_P                  : in      std_logic;
    
    -- Clock Generator MGT RefClk7
    MGT_REFCLK7_N                  : in      std_logic;
    MGT_REFCLK7_P                  : in      std_logic;
    
    -- Clock Generator MGT RefClk8
    MGT_REFCLK8_N                  : in      std_logic;
    MGT_REFCLK8_P                  : in      std_logic;
    
    -- Clock Generator MGT RefClk9
    MGT_REFCLK9_N                  : in      std_logic;
    MGT_REFCLK9_P                  : in      std_logic;
    
    -- Oscillator 100 MHz
    CALIB_CLK                      : in      std_logic;
    
    -- PE3 LED
    PE3_LED0_N                     : out     std_logic;
    PE3_LED1_N                     : out     std_logic;
    DII_LED_N                      : out     std_logic;
    DIO_LED_N                      : out     std_logic;
    
    -- USER INPUT
    BTN_N                          : in      std_logic;
    DIP_N                          : in      std_logic
  );
end Mercury_XU6_PE3;

architecture rtl of Mercury_XU6_PE3 is

  ---------------------------------------------------------------------------------------------------
  -- component declarations
  ---------------------------------------------------------------------------------------------------
  component Mercury_XU6 is
    port (
      DP_AUX_OUT          : out    std_logic;
      DP_AUX_OE           : out    std_logic;
      DP_AUX_IN           : in     std_logic;
      DP_HPD              : in     std_logic;
      Clk100              : out    std_logic;
      Clk50               : out    std_logic;
      Rst_N               : out    std_logic;
      IIC_USER_sda_i      : in     std_logic;
      IIC_USER_sda_o      : out    std_logic;
      IIC_USER_sda_t      : out    std_logic;
      IIC_USER_scl_i      : in     std_logic;
      IIC_USER_scl_o      : out    std_logic;
      IIC_USER_scl_t      : out    std_logic;
      LED_N               : out    std_logic_vector(2 downto 0)
    );
    
  end component Mercury_XU6;
  
  component IOBUF is
    port (
      I : in STD_LOGIC;
      O : out STD_LOGIC;
      T : in STD_LOGIC;
      IO : inout STD_LOGIC
    );
  end component IOBUF;

  ---------------------------------------------------------------------------------------------------
  -- signal declarations
  ---------------------------------------------------------------------------------------------------
  signal Clk100           : std_logic;
  signal Clk50            : std_logic;
  signal Rst_N            : std_logic;
  signal IIC_USER_sda_i   : std_logic;
  signal IIC_USER_sda_o   : std_logic;
  signal IIC_USER_sda_t   : std_logic;
  signal IIC_USER_scl_i   : std_logic;
  signal IIC_USER_scl_o   : std_logic;
  signal IIC_USER_scl_t   : std_logic;
  signal LED_N            : std_logic_vector(2 downto 0);
  signal dp_aux_data_oe_n : std_logic;
  signal LedCount         : unsigned(23 downto 0);

begin
  
  ---------------------------------------------------------------------------------------------------
  -- processor system instance
  ---------------------------------------------------------------------------------------------------
  Mercury_XU6_i: component Mercury_XU6
    port map (
      DP_AUX_OUT           => DP_AUX_OUT,
      DP_AUX_OE            => dp_aux_data_oe_n,
      DP_AUX_IN            => DP_AUX_IN,
      DP_HPD               => DP_HPD,
      Clk100               => Clk100,
      Clk50                => Clk50,
      Rst_N                => Rst_N,
      IIC_USER_sda_i       => IIC_USER_sda_i,
      IIC_USER_sda_o       => IIC_USER_sda_o,
      IIC_USER_sda_t       => IIC_USER_sda_t,
      IIC_USER_scl_i       => IIC_USER_scl_i,
      IIC_USER_scl_o       => IIC_USER_scl_o,
      IIC_USER_scl_t       => IIC_USER_scl_t,
      LED_N                => LED_N
    );
  
  DP_AUX_OE <= not dp_aux_data_oe_n;
  
  IIC_USER_sda_iobuf: component IOBUF
    port map (
    I => IIC_USER_sda_o,
    IO => I2C_USER_SDA,
    O => IIC_USER_sda_i,
    T => IIC_USER_sda_t
  );
  
  IIC_USER_scl_iobuf: component IOBUF
    port map (
    I => IIC_USER_scl_o,
    IO => I2C_USER_SCL,
    O => IIC_USER_scl_i,
    T => IIC_USER_scl_t
  );
  
  process (Clk50)
  begin
    if rising_edge (Clk50) then
      if Rst_N = '0' then
        LedCount    <= (others => '0');
      else
        LedCount    <= LedCount + 1;
      end if;
    end if;
  end process;
  Led0_PL_N <= '0' when LedCount(LedCount'high) = '0' else 'Z';
  Led1_PL_N <= '0' when LED_N(0) = '0' else 'Z';
  Led2_PL_N <= '0' when LED_N(1) = '0' else 'Z';
  Led3_PL_N <= '0' when LED_N(2) = '0' else 'Z';
  
end rtl;
