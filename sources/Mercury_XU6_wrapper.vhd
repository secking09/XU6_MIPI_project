--Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
--Date        : Mon Nov 11 10:07:15 2024
--Host        : nv00240 running 64-bit Ubuntu 22.04.4 LTS
--Command     : generate_target Mercury_XU6_wrapper.bd
--Design      : Mercury_XU6_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mercury_XU6_wrapper is
  port (
    Clk100 : out STD_LOGIC;
    Clk50 : out STD_LOGIC;
    DP_AUX_IN : in STD_LOGIC;
    DP_AUX_OE : out STD_LOGIC;
    DP_AUX_OUT : out STD_LOGIC;
    DP_HPD : in STD_LOGIC;
    GPIO_0_tri_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    IIC_USER_scl_io : inout STD_LOGIC;
    IIC_USER_sda_io : inout STD_LOGIC;
    Rst_N : out STD_LOGIC;
    mipi_phy_if_0_clk_n : in STD_LOGIC;
    mipi_phy_if_0_clk_p : in STD_LOGIC;
    mipi_phy_if_0_data_n : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mipi_phy_if_0_data_p : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sensor_strobe : in STD_LOGIC;
    sensor_xvs : in STD_LOGIC
  );
end Mercury_XU6_wrapper;

architecture STRUCTURE of Mercury_XU6_wrapper is
  component Mercury_XU6 is
  port (
    Clk50 : out STD_LOGIC;
    Clk100 : out STD_LOGIC;
    DP_AUX_IN : in STD_LOGIC;
    DP_AUX_OE : out STD_LOGIC;
    DP_AUX_OUT : out STD_LOGIC;
    DP_HPD : in STD_LOGIC;
    Rst_N : out STD_LOGIC;
    sensor_strobe : in STD_LOGIC;
    sensor_xvs : in STD_LOGIC;
    GPIO_0_tri_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mipi_phy_if_0_clk_n : in STD_LOGIC;
    mipi_phy_if_0_clk_p : in STD_LOGIC;
    mipi_phy_if_0_data_n : in STD_LOGIC_VECTOR ( 3 downto 0 );
    mipi_phy_if_0_data_p : in STD_LOGIC_VECTOR ( 3 downto 0 );
    IIC_USER_scl_i : in STD_LOGIC;
    IIC_USER_scl_o : out STD_LOGIC;
    IIC_USER_scl_t : out STD_LOGIC;
    IIC_USER_sda_i : in STD_LOGIC;
    IIC_USER_sda_o : out STD_LOGIC;
    IIC_USER_sda_t : out STD_LOGIC
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
  signal IIC_USER_scl_i : STD_LOGIC;
  signal IIC_USER_scl_o : STD_LOGIC;
  signal IIC_USER_scl_t : STD_LOGIC;
  signal IIC_USER_sda_i : STD_LOGIC;
  signal IIC_USER_sda_o : STD_LOGIC;
  signal IIC_USER_sda_t : STD_LOGIC;
begin
IIC_USER_scl_iobuf: component IOBUF
     port map (
      I => IIC_USER_scl_o,
      IO => IIC_USER_scl_io,
      O => IIC_USER_scl_i,
      T => IIC_USER_scl_t
    );
IIC_USER_sda_iobuf: component IOBUF
     port map (
      I => IIC_USER_sda_o,
      IO => IIC_USER_sda_io,
      O => IIC_USER_sda_i,
      T => IIC_USER_sda_t
    );
Mercury_XU6_i: component Mercury_XU6
     port map (
      Clk100 => Clk100,
      Clk50 => Clk50,
      DP_AUX_IN => DP_AUX_IN,
      DP_AUX_OE => DP_AUX_OE,
      DP_AUX_OUT => DP_AUX_OUT,
      DP_HPD => DP_HPD,
      GPIO_0_tri_o(31 downto 0) => GPIO_0_tri_o(31 downto 0),
      IIC_USER_scl_i => IIC_USER_scl_i,
      IIC_USER_scl_o => IIC_USER_scl_o,
      IIC_USER_scl_t => IIC_USER_scl_t,
      IIC_USER_sda_i => IIC_USER_sda_i,
      IIC_USER_sda_o => IIC_USER_sda_o,
      IIC_USER_sda_t => IIC_USER_sda_t,
      Rst_N => Rst_N,
      mipi_phy_if_0_clk_n => mipi_phy_if_0_clk_n,
      mipi_phy_if_0_clk_p => mipi_phy_if_0_clk_p,
      mipi_phy_if_0_data_n(3 downto 0) => mipi_phy_if_0_data_n(3 downto 0),
      mipi_phy_if_0_data_p(3 downto 0) => mipi_phy_if_0_data_p(3 downto 0),
      sensor_strobe => sensor_strobe,
      sensor_xvs => sensor_xvs
    );
end STRUCTURE;
