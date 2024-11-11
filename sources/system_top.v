`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Navvis
// Engineer: Seckin Gezer
//
// Create Date: 11/07/2024 10:52:48 AM
// Design Name:
// Module Name: system_top
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////


module system_top(

    // Visual Ports
    input       DP_HPD          ,
    input       DP_AUX_IN       ,
    output      DP_AUX_OE       ,
    output      DP_AUX_OUT      ,
    // IIC ports for camera
    inout       I2C_SCL         ,
    inout       I2C_SDA         ,
    // MIPI ports
    input       MIPI_CLK_P      ,
    input       MIPI_CLK_N      ,
    input       MIPI_D0_P       ,
    input       MIPI_D0_N       ,
    input       MIPI_D1_P       ,
    input       MIPI_D1_N       ,
    input       MIPI_D2_P       ,
    input       MIPI_D2_N       ,
    input       MIPI_D3_P       ,
    input       MIPI_D3_N       ,
    // GPIO pins
    output      SENSOR_PWDN     ,
    output      SENSOR_SLASEL   ,
    input       SENSOR_STROBE   ,
    input       SENSOR_XVS      
    // Auxilary Ports
   // output      LED0_PL         ,
   // output      LED1_PL         ,
   // output      LED2_PL         ,
   // output      LED3_PL
  );

  wire [31:0] GPIO;
  wire        Clk100;
  wire        Clk50;
  wire        Rst_N;
  wire [3:0]  MIPI_data_N;
  wire [3:0]  MIPI_data_P; 

  // Because of voltage conflict in bank 65, I can not use LEDS. 
  wire LED0_PL; 
  wire LED1_PL;



  Mercury_XU6_wrapper block_design (

  .DP_AUX_IN                (DP_AUX_IN    ),
  .DP_AUX_OE                (DP_AUX_OE    ),
  .DP_AUX_OUT               (DP_AUX_OUT   ),
  .DP_HPD                   (DP_HPD       ),

  .Clk100                   (Clk100       ),
  .Clk50                    (Clk50        ),
  .Rst_N                    (Rst_N        ),

  .GPIO_0_tri_o             (GPIO         ),

  .IIC_USER_scl_io          (I2C_SCL      ),
  .IIC_USER_sda_io          (I2C_SDA      ),

  .sensor_strobe            (SENSOR_STROBE),  
  .sensor_xvs               (SENSOR_XVS   ), 

  .mipi_phy_if_0_clk_n      (MIPI_CLK_N   ),
  .mipi_phy_if_0_clk_p      (MIPI_CLK_P   ),
  .mipi_phy_if_0_data_n     (MIPI_data_N  ),
  .mipi_phy_if_0_data_p     (MIPI_data_P  )
  );



  assign MIPI_D0_P = MIPI_data_P[0];
  assign MIPI_D0_N = MIPI_data_N[0];
  assign MIPI_D1_P = MIPI_data_P[1];
  assign MIPI_D1_N = MIPI_data_N[1];
  assign MIPI_D2_P = MIPI_data_P[2];
  assign MIPI_D2_N = MIPI_data_N[2];
  assign MIPI_D3_P = MIPI_data_P[3];
  assign MIPI_D3_N = MIPI_data_N[3];

  assign SENSOR_PWDN   = GPIO[0];
  assign SENSOR_SLASEL = GPIO[1];

  assign LED0_PL       = !GPIO[0]; // indicates we power up the camera from FPGA side. 
  assign LED1_PL       = !GPIO[1]; // Same but for SLA_SEL

  
  
  
  
  
  
  





endmodule
