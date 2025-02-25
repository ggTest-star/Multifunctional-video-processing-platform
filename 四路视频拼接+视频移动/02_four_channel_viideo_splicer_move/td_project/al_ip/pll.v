/************************************************************\
 **  Copyright (c) 2012-2024 Anlogic Inc.
 **  All Right Reserved.\
\************************************************************/
/************************************************************\
 ** Log	:	This file is generated by Anlogic IP Generator.
 ** File	:	C:/HIT/personal_learn/open_source/01_four_channel_viideo_splicer/td_project/al_ip/pll.v
 ** Date	:	2024 12 07
 ** TD version	:	6.0.117864
\************************************************************/

///////////////////////////////////////////////////////////////////////////////
//	Input frequency:                25.000000MHz
//	Clock multiplication factor: 3
//	Clock division factor:       1
//	Clock information:
//		Clock name	| Frequency 	| Phase shift
//		C0        	| 75.000000 MHZ	| 0.0000  DEG  
//		C1        	| 375.000000MHZ	| 0.0000  DEG  
///////////////////////////////////////////////////////////////////////////////
`timescale 1 ns / 100 fs

module pll (
  refclk,
  reset,
  lock,
  clk0_out,
  clk1_out 
);

  input refclk;
  input reset;
  output lock;
  output clk0_out;
  output clk1_out;

  wire clk0_buf;

  PH1_LOGIC_BUFG bufg_feedback (
    .i(clk0_buf),
    .o(clk0_out) 
  );

  PH1_PHY_PLL #(
    .DYN_PHASE_PATH_SEL("DISABLE"),
    .DYN_FPHASE_EN("DISABLE"),
    .MPHASE_ENABLE("DISABLE"),
    .FIN("25.000000"),
    .FEEDBK_MODE("NORMAL"),
    .FBKCLK("CLKC0_EXT"),
    .PLL_FEED_TYPE("EXTERNAL"),
    .PLL_USR_RST("ENABLE"),
    .GMC_GAIN(1),
    .ICP_CUR(11),
    .LPF_CAP(2),
    .LPF_RES(3),
    .REFCLK_DIV(1),
    .FBCLK_DIV(3),
    .CLKC0_ENABLE("ENABLE"),
    .CLKC0_DIV(15),
    .CLKC0_CPHASE(14),
    .CLKC0_FPHASE(0),
    .CLKC0_FPHASE_RSTSEL(0),
    .CLKC0_DUTY_INT(8),
    .CLKC0_DUTY50("ENABLE"),
    .CLKC1_ENABLE("ENABLE"),
    .CLKC1_DIV(3),
    .CLKC1_CPHASE(2),
    .CLKC1_FPHASE(0),
    .CLKC1_FPHASE_RSTSEL(0),
    .CLKC1_DUTY_INT(2),
    .CLKC1_DUTY50("ENABLE"),
    .INTPI(1),
    .HIGH_SPEED_EN("DISABLE"),
    .SSC_ENABLE("DISABLE"),
    .SSC_MODE("CENTER"),
    .SSC_AMP(0.0000),
    .SSC_FREQ_DIV(0),
    .SSC_RNGE(0),
    .FRAC_ENABLE("DISABLE"),
    .DITHER_ENABLE("DISABLE"),
    .SDM_FRAC(0) 
  ) pll_inst (
    .refclk(refclk),
    .pllreset(reset),
    .lock(lock),
    .pllpd(1'b0),
    .refclk_rst(1'b0),
    .wakeup(1'b0),
    .psclk(1'b0),
    .psdown(1'b0),
    .psstep(1'b0),
    .psclksel(3'b000),
    .psdone(pll_open0),
    .cps_step(2'b00),
    .drp_clk(1'b0),
    .drp_rstn(1'b1),
    .drp_sel(1'b0),
    .drp_rd(1'b0),
    .drp_wr(1'b0),
    .drp_addr(8'b00000000),
    .drp_wdata(8'b00000000),
    .drp_err(pll_open1),
    .drp_rdy(pll_open2),
    .drp_rdata({pll_open10, pll_open9, pll_open8, pll_open7, pll_open6, pll_open5, pll_open4, pll_open3}),
    .fbclk(clk0_out),
    .clkc({pll_open23, pll_open21, pll_open19, pll_open17, pll_open15, pll_open13, clk1_out, clk0_buf}),
    .clkcb({pll_open24, pll_open22, pll_open20, pll_open18, pll_open16, pll_open14, pll_open12, pll_open11}),
    .clkc_en({8'b00000011}),
    .clkc_rst(2'b00),
    .ext_freq_mod_clk(1'b0),
    .ext_freq_mod_en(1'b0),
    .ext_freq_mod_val(17'b00000000000000000),
    .ssc_en(1'b0) 
  );

endmodule

