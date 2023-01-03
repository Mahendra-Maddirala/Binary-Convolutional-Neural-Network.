/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : P-2019.03-SP1
// Date      : Thu Jul 28 02:06:58 2022
/////////////////////////////////////////////////////////////


module MyDesign ( dut_run, dut_busy, reset_b, clk, dut_sram_write_address, 
        dut_sram_write_data, dut_sram_write_enable, dut_sram_read_address, 
        sram_dut_read_data, dut_wmem_read_address, wmem_dut_read_data );
  output [11:0] dut_sram_write_address;
  output [15:0] dut_sram_write_data;
  output [11:0] dut_sram_read_address;
  input [15:0] sram_dut_read_data;
  output [11:0] dut_wmem_read_address;
  input [15:0] wmem_dut_read_data;
  input dut_run, reset_b, clk;
  output dut_busy, dut_sram_write_enable;
  wire   current_state, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31,
         n32, n33, n34, n35, n36, n37, n74, n75, n76, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397,
         n398, n399, n400, n401, n402, n403, n404, n405, n406, n407, n409,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434;
  wire   [8:0] weight_matrix;
  wire   [15:0] input_matrix;
  wire   [3:0] output_row;

  DFFR_X1 weight_matrix_reg_8_ ( .D(wmem_dut_read_data[8]), .CK(clk), .RN(n432), .Q(weight_matrix[8]) );
  DFFR_X1 weight_matrix_reg_7_ ( .D(wmem_dut_read_data[7]), .CK(clk), .RN(n432), .Q(weight_matrix[7]) );
  DFFR_X1 weight_matrix_reg_4_ ( .D(wmem_dut_read_data[4]), .CK(clk), .RN(n433), .Q(weight_matrix[4]) );
  DFFR_X1 dut_sram_write_data_reg_3_ ( .D(output_row[3]), .CK(clk), .RN(n433), 
        .QN(n202) );
  DFF_X1 input_matrix_reg_15_ ( .D(n36), .CK(clk), .Q(input_matrix[15]), .QN(
        n423) );
  DFF_X1 input_matrix_reg_14_ ( .D(n35), .CK(clk), .Q(input_matrix[14]), .QN(
        n419) );
  DFF_X1 input_matrix_reg_13_ ( .D(n34), .CK(clk), .Q(input_matrix[13]), .QN(
        n434) );
  DFF_X1 input_matrix_reg_12_ ( .D(n33), .CK(clk), .QN(n425) );
  DFF_X1 input_matrix_reg_11_ ( .D(n32), .CK(clk), .Q(input_matrix[11]), .QN(
        n418) );
  DFF_X1 input_matrix_reg_10_ ( .D(n31), .CK(clk), .Q(input_matrix[10]), .QN(
        n414) );
  DFF_X1 input_matrix_reg_9_ ( .D(n30), .CK(clk), .Q(input_matrix[9]), .QN(
        n431) );
  DFF_X1 input_matrix_reg_8_ ( .D(n29), .CK(clk), .Q(input_matrix[8]), .QN(
        n430) );
  DFF_X1 input_matrix_reg_7_ ( .D(n28), .CK(clk), .Q(input_matrix[7]), .QN(
        n429) );
  DFF_X1 input_matrix_reg_6_ ( .D(n27), .CK(clk), .Q(input_matrix[6]), .QN(
        n427) );
  DFF_X1 input_matrix_reg_5_ ( .D(n26), .CK(clk), .Q(input_matrix[5]), .QN(
        n413) );
  DFF_X1 input_matrix_reg_4_ ( .D(n25), .CK(clk), .Q(input_matrix[4]), .QN(
        n415) );
  DFF_X1 input_matrix_reg_3_ ( .D(n24), .CK(clk), .Q(input_matrix[3]), .QN(
        n422) );
  DFF_X1 input_matrix_reg_2_ ( .D(n23), .CK(clk), .Q(input_matrix[2]), .QN(
        n416) );
  DFF_X1 input_matrix_reg_1_ ( .D(n22), .CK(clk), .Q(input_matrix[1]), .QN(
        n417) );
  SDFF_X1 input_matrix_reg_0_ ( .D(n21), .SI(1'b0), .SE(1'b0), .CK(clk), .Q(
        input_matrix[0]), .QN(n421) );
  DFFS_X2 weight_matrix_reg_5_ ( .D(n409), .CK(clk), .SN(n433), .QN(
        weight_matrix[5]) );
  DFFR_X2 weight_matrix_reg_0_ ( .D(wmem_dut_read_data[0]), .CK(clk), .RN(n433), .Q(weight_matrix[0]), .QN(n207) );
  SDFFR_X2 dut_busy_reg ( .D(n37), .SI(1'b0), .SE(1'b0), .CK(clk), .RN(n433), 
        .Q(dut_busy) );
  DFFRS_X2 dut_sram_write_data_reg_2_ ( .D(output_row[2]), .CK(clk), .RN(n433), 
        .SN(1'b1), .Q(dut_sram_write_data[2]) );
  DFFR_X2 dut_sram_write_data_reg_0_ ( .D(output_row[0]), .CK(clk), .RN(n432), 
        .Q(dut_sram_write_data[0]) );
  DFFR_X2 dut_sram_write_enable_reg ( .D(current_state), .CK(clk), .RN(n433), 
        .Q(dut_sram_write_enable) );
  DFFR_X2 dut_sram_write_data_reg_1_ ( .D(output_row[1]), .CK(clk), .RN(n433), 
        .Q(dut_sram_write_data[1]) );
  DFFR_X1 weight_matrix_reg_3_ ( .D(wmem_dut_read_data[3]), .CK(clk), .RN(n433), .Q(weight_matrix[3]), .QN(n426) );
  DFFR_X2 weight_matrix_reg_2_ ( .D(wmem_dut_read_data[2]), .CK(clk), .RN(n433), .Q(weight_matrix[2]), .QN(n428) );
  DFFR_X1 current_state_reg ( .D(n420), .CK(clk), .RN(n432), .Q(current_state), 
        .QN(n412) );
  DFFR_X2 weight_matrix_reg_1_ ( .D(wmem_dut_read_data[1]), .CK(clk), .RN(n433), .Q(weight_matrix[1]), .QN(n206) );
  DFFS_X2 weight_matrix_reg_6_ ( .D(n407), .CK(clk), .SN(n433), .QN(n424) );
  CLKBUF_X3 U82 ( .A(reset_b), .Z(n432) );
  BUF_X1 U83 ( .A(n388), .Z(n74) );
  INV_X4 U84 ( .A(1'b1), .ZN(dut_wmem_read_address[0]) );
  INV_X4 U85 ( .A(1'b1), .ZN(dut_wmem_read_address[1]) );
  INV_X4 U86 ( .A(1'b1), .ZN(dut_wmem_read_address[2]) );
  INV_X1 U87 ( .A(n428), .ZN(n193) );
  BUF_X4 U88 ( .A(n183), .Z(n75) );
  INV_X1 U89 ( .A(n198), .ZN(n199) );
  AOI21_X1 U90 ( .B1(n224), .B2(n249), .A(n247), .ZN(n223) );
  NAND3_X1 U91 ( .A1(n203), .A2(n221), .A3(n220), .ZN(output_row[3]) );
  XNOR2_X2 U92 ( .A(n234), .B(n275), .ZN(n233) );
  NOR2_X1 U93 ( .A1(n329), .A2(n328), .ZN(n247) );
  XNOR2_X1 U94 ( .A(n338), .B(n339), .ZN(n214) );
  INV_X1 U95 ( .A(n173), .ZN(n175) );
  INV_X1 U96 ( .A(input_matrix[0]), .ZN(n195) );
  AOI21_X2 U97 ( .B1(n209), .B2(n223), .A(n412), .ZN(output_row[1]) );
  NAND2_X1 U98 ( .A1(n188), .A2(n244), .ZN(n187) );
  NAND2_X1 U99 ( .A1(n200), .A2(current_state), .ZN(n220) );
  NAND3_X1 U100 ( .A1(n241), .A2(n245), .A3(current_state), .ZN(n221) );
  NAND3_X1 U101 ( .A1(n389), .A2(n246), .A3(n402), .ZN(n188) );
  NAND2_X1 U102 ( .A1(n174), .A2(n343), .ZN(n346) );
  NAND2_X1 U103 ( .A1(n176), .A2(n175), .ZN(n174) );
  XNOR2_X1 U104 ( .A(n214), .B(n352), .ZN(n362) );
  NAND2_X1 U105 ( .A1(n180), .A2(n308), .ZN(n311) );
  NAND2_X1 U106 ( .A1(n182), .A2(n181), .ZN(n180) );
  INV_X1 U107 ( .A(n205), .ZN(n215) );
  INV_X1 U108 ( .A(n309), .ZN(n182) );
  INV_X2 U109 ( .A(n201), .ZN(n76) );
  XNOR2_X1 U110 ( .A(n381), .B(n380), .ZN(n189) );
  INV_X2 U111 ( .A(n196), .ZN(n338) );
  INV_X2 U112 ( .A(n206), .ZN(n194) );
  INV_X2 U113 ( .A(n202), .ZN(dut_sram_write_data[3]) );
  INV_X2 U114 ( .A(n428), .ZN(n374) );
  INV_X2 U115 ( .A(n426), .ZN(n219) );
  INV_X2 U116 ( .A(input_matrix[8]), .ZN(n192) );
  INV_X2 U117 ( .A(1'b1), .ZN(dut_sram_write_address[11]) );
  INV_X2 U118 ( .A(1'b1), .ZN(dut_sram_write_address[10]) );
  INV_X2 U119 ( .A(1'b1), .ZN(dut_sram_write_address[9]) );
  INV_X2 U120 ( .A(1'b1), .ZN(dut_sram_write_address[8]) );
  INV_X2 U121 ( .A(1'b1), .ZN(dut_sram_write_address[7]) );
  INV_X2 U122 ( .A(1'b1), .ZN(dut_sram_write_address[6]) );
  INV_X2 U123 ( .A(1'b1), .ZN(dut_sram_write_address[5]) );
  INV_X2 U124 ( .A(1'b1), .ZN(dut_sram_write_address[4]) );
  INV_X2 U125 ( .A(1'b1), .ZN(dut_sram_write_address[3]) );
  INV_X2 U126 ( .A(1'b1), .ZN(dut_sram_write_address[2]) );
  INV_X2 U127 ( .A(1'b1), .ZN(dut_sram_write_address[1]) );
  INV_X2 U128 ( .A(1'b1), .ZN(dut_sram_write_address[0]) );
  INV_X2 U129 ( .A(1'b1), .ZN(dut_sram_write_data[15]) );
  INV_X2 U130 ( .A(1'b1), .ZN(dut_sram_write_data[14]) );
  INV_X2 U131 ( .A(1'b1), .ZN(dut_sram_write_data[13]) );
  INV_X2 U132 ( .A(1'b1), .ZN(dut_sram_write_data[12]) );
  INV_X2 U133 ( .A(1'b1), .ZN(dut_sram_write_data[11]) );
  INV_X2 U134 ( .A(1'b1), .ZN(dut_sram_write_data[10]) );
  INV_X2 U135 ( .A(1'b1), .ZN(dut_sram_write_data[9]) );
  INV_X2 U136 ( .A(1'b1), .ZN(dut_sram_write_data[8]) );
  INV_X2 U137 ( .A(1'b1), .ZN(dut_sram_write_data[7]) );
  INV_X2 U138 ( .A(1'b1), .ZN(dut_sram_write_data[6]) );
  INV_X2 U139 ( .A(1'b1), .ZN(dut_sram_write_data[5]) );
  INV_X2 U140 ( .A(1'b1), .ZN(dut_sram_write_data[4]) );
  INV_X2 U141 ( .A(1'b1), .ZN(dut_sram_read_address[11]) );
  INV_X2 U142 ( .A(1'b1), .ZN(dut_sram_read_address[10]) );
  INV_X2 U143 ( .A(1'b1), .ZN(dut_sram_read_address[9]) );
  INV_X2 U144 ( .A(1'b1), .ZN(dut_sram_read_address[8]) );
  INV_X2 U145 ( .A(1'b1), .ZN(dut_sram_read_address[7]) );
  INV_X2 U146 ( .A(1'b1), .ZN(dut_sram_read_address[6]) );
  INV_X2 U147 ( .A(1'b1), .ZN(dut_sram_read_address[5]) );
  INV_X2 U148 ( .A(1'b1), .ZN(dut_sram_read_address[4]) );
  INV_X2 U149 ( .A(1'b1), .ZN(dut_sram_read_address[3]) );
  INV_X2 U150 ( .A(1'b1), .ZN(dut_sram_read_address[2]) );
  INV_X2 U151 ( .A(1'b1), .ZN(dut_sram_read_address[1]) );
  INV_X2 U152 ( .A(1'b1), .ZN(dut_sram_read_address[0]) );
  INV_X2 U153 ( .A(1'b1), .ZN(dut_wmem_read_address[11]) );
  INV_X2 U154 ( .A(1'b1), .ZN(dut_wmem_read_address[10]) );
  INV_X2 U155 ( .A(1'b1), .ZN(dut_wmem_read_address[9]) );
  INV_X2 U156 ( .A(1'b1), .ZN(dut_wmem_read_address[8]) );
  INV_X2 U157 ( .A(1'b1), .ZN(dut_wmem_read_address[7]) );
  INV_X2 U158 ( .A(1'b1), .ZN(dut_wmem_read_address[6]) );
  INV_X2 U159 ( .A(1'b1), .ZN(dut_wmem_read_address[5]) );
  INV_X2 U160 ( .A(1'b1), .ZN(dut_wmem_read_address[4]) );
  INV_X2 U161 ( .A(1'b1), .ZN(dut_wmem_read_address[3]) );
  XNOR2_X2 U210 ( .A(input_matrix[10]), .B(weight_matrix[5]), .ZN(n173) );
  NAND2_X1 U211 ( .A1(n344), .A2(n173), .ZN(n345) );
  XNOR2_X2 U212 ( .A(n344), .B(n173), .ZN(n191) );
  INV_X1 U213 ( .A(n344), .ZN(n176) );
  XNOR2_X2 U214 ( .A(n178), .B(n253), .ZN(n234) );
  XNOR2_X2 U215 ( .A(n177), .B(n281), .ZN(n253) );
  XNOR2_X2 U216 ( .A(weight_matrix[8]), .B(input_matrix[10]), .ZN(n281) );
  XNOR2_X2 U217 ( .A(n76), .B(n205), .ZN(n177) );
  XNOR2_X2 U218 ( .A(n194), .B(n417), .ZN(n205) );
  XNOR2_X2 U219 ( .A(n179), .B(n272), .ZN(n178) );
  XNOR2_X2 U220 ( .A(n270), .B(n271), .ZN(n179) );
  XNOR2_X2 U221 ( .A(input_matrix[6]), .B(weight_matrix[5]), .ZN(n271) );
  XNOR2_X2 U222 ( .A(n219), .B(input_matrix[4]), .ZN(n270) );
  NAND2_X1 U223 ( .A1(n309), .A2(n75), .ZN(n310) );
  INV_X1 U224 ( .A(n75), .ZN(n181) );
  XNOR2_X2 U225 ( .A(n183), .B(n309), .ZN(n218) );
  XNOR2_X2 U226 ( .A(weight_matrix[3]), .B(input_matrix[5]), .ZN(n183) );
  NAND3_X2 U227 ( .A1(n187), .A2(n184), .A3(current_state), .ZN(n203) );
  XNOR2_X2 U228 ( .A(n185), .B(n246), .ZN(n184) );
  XNOR2_X2 U229 ( .A(n402), .B(n186), .ZN(n185) );
  XNOR2_X2 U230 ( .A(n373), .B(n387), .ZN(n186) );
  XNOR2_X2 U231 ( .A(n375), .B(n391), .ZN(n402) );
  XNOR2_X2 U232 ( .A(n189), .B(n394), .ZN(n246) );
  INV_X2 U233 ( .A(n190), .ZN(n266) );
  XOR2_X2 U234 ( .A(weight_matrix[2]), .B(input_matrix[2]), .Z(n190) );
  XNOR2_X2 U235 ( .A(n343), .B(n191), .ZN(n334) );
  XNOR2_X2 U236 ( .A(n192), .B(n426), .ZN(n344) );
  XNOR2_X2 U237 ( .A(n304), .B(n305), .ZN(n216) );
  XNOR2_X2 U238 ( .A(n296), .B(n431), .ZN(n305) );
  XNOR2_X2 U239 ( .A(input_matrix[3]), .B(n193), .ZN(n304) );
  XNOR2_X2 U240 ( .A(n195), .B(n207), .ZN(n201) );
  XOR2_X2 U241 ( .A(n207), .B(n415), .Z(n196) );
  INV_X1 U242 ( .A(n206), .ZN(n197) );
  INV_X1 U243 ( .A(n362), .ZN(n198) );
  XNOR2_X2 U244 ( .A(n335), .B(n199), .ZN(n370) );
  NOR2_X1 U245 ( .A1(n361), .A2(n362), .ZN(n367) );
  XNOR2_X1 U246 ( .A(weight_matrix[4]), .B(input_matrix[10]), .ZN(n391) );
  XNOR2_X1 U247 ( .A(n235), .B(n278), .ZN(n275) );
  XNOR2_X1 U248 ( .A(n264), .B(n265), .ZN(n235) );
  NAND2_X1 U249 ( .A1(n237), .A2(n236), .ZN(n403) );
  NAND2_X1 U250 ( .A1(n74), .A2(n386), .ZN(n236) );
  NAND2_X1 U251 ( .A1(n238), .A2(n387), .ZN(n237) );
  NAND2_X1 U252 ( .A1(n240), .A2(n239), .ZN(n238) );
  INV_X1 U253 ( .A(n305), .ZN(n298) );
  INV_X1 U254 ( .A(n304), .ZN(n299) );
  AND2_X1 U255 ( .A1(n288), .A2(n290), .ZN(n292) );
  NAND4_X1 U256 ( .A1(n222), .A2(n342), .A3(n351), .A4(n354), .ZN(n348) );
  NAND2_X1 U257 ( .A1(n355), .A2(n352), .ZN(n222) );
  NAND2_X1 U258 ( .A1(n211), .A2(n248), .ZN(n210) );
  INV_X1 U259 ( .A(n249), .ZN(n248) );
  OR2_X1 U260 ( .A1(n314), .A2(n327), .ZN(n313) );
  NAND2_X1 U261 ( .A1(n232), .A2(n292), .ZN(n231) );
  NAND3_X1 U262 ( .A1(n253), .A2(n276), .A3(n275), .ZN(n232) );
  OR2_X1 U263 ( .A1(n277), .A2(n289), .ZN(n276) );
  INV_X1 U264 ( .A(n292), .ZN(n252) );
  NAND2_X1 U265 ( .A1(n229), .A2(n251), .ZN(n228) );
  INV_X1 U266 ( .A(n253), .ZN(n229) );
  INV_X1 U267 ( .A(n245), .ZN(n244) );
  OR2_X1 U268 ( .A1(n390), .A2(n403), .ZN(n389) );
  AND2_X1 U269 ( .A1(dut_run), .A2(n412), .ZN(n420) );
  INV_X1 U270 ( .A(n266), .ZN(n264) );
  INV_X1 U271 ( .A(n267), .ZN(n265) );
  XNOR2_X1 U272 ( .A(n424), .B(n425), .ZN(n336) );
  XNOR2_X1 U273 ( .A(n374), .B(n427), .ZN(n204) );
  INV_X1 U274 ( .A(n204), .ZN(n341) );
  INV_X1 U275 ( .A(n377), .ZN(n383) );
  XNOR2_X1 U276 ( .A(weight_matrix[1]), .B(input_matrix[6]), .ZN(n381) );
  INV_X1 U277 ( .A(n386), .ZN(n239) );
  INV_X1 U278 ( .A(n74), .ZN(n240) );
  XNOR2_X1 U279 ( .A(weight_matrix[4]), .B(input_matrix[6]), .ZN(n315) );
  NAND2_X1 U280 ( .A1(n337), .A2(n196), .ZN(n355) );
  NAND2_X1 U281 ( .A1(n226), .A2(n225), .ZN(n224) );
  INV_X1 U282 ( .A(n312), .ZN(n226) );
  NAND2_X1 U283 ( .A1(n325), .A2(n328), .ZN(n249) );
  OR2_X1 U284 ( .A1(n348), .A2(n363), .ZN(n347) );
  AND2_X1 U285 ( .A1(n359), .A2(n364), .ZN(n366) );
  NAND2_X1 U286 ( .A1(n348), .A2(n363), .ZN(n359) );
  NAND2_X1 U287 ( .A1(n401), .A2(n404), .ZN(n245) );
  NAND2_X1 U288 ( .A1(n243), .A2(n242), .ZN(n241) );
  AOI21_X1 U289 ( .B1(n228), .B2(n252), .A(n250), .ZN(n227) );
  NOR2_X1 U290 ( .A1(n291), .A2(n290), .ZN(n250) );
  INV_X1 U291 ( .A(wmem_dut_read_data[5]), .ZN(n409) );
  NOR2_X1 U292 ( .A1(n404), .A2(n405), .ZN(n200) );
  XNOR2_X2 U293 ( .A(n296), .B(n434), .ZN(n382) );
  AOI21_X2 U294 ( .B1(n230), .B2(n227), .A(n412), .ZN(output_row[0]) );
  NAND2_X2 U295 ( .A1(n233), .A2(n231), .ZN(n230) );
  INV_X1 U296 ( .A(n326), .ZN(n225) );
  INV_X4 U297 ( .A(n254), .ZN(n433) );
  NAND2_X2 U298 ( .A1(n212), .A2(n210), .ZN(n209) );
  NAND3_X1 U299 ( .A1(n313), .A2(n312), .A3(n326), .ZN(n211) );
  XNOR2_X2 U300 ( .A(n213), .B(n326), .ZN(n212) );
  XNOR2_X2 U301 ( .A(n297), .B(n318), .ZN(n326) );
  XNOR2_X2 U302 ( .A(n217), .B(n312), .ZN(n213) );
  XNOR2_X2 U303 ( .A(n197), .B(input_matrix[5]), .ZN(n339) );
  NAND2_X1 U304 ( .A1(n201), .A2(n215), .ZN(n283) );
  XNOR2_X2 U305 ( .A(n216), .B(n315), .ZN(n312) );
  XNOR2_X2 U306 ( .A(n218), .B(n308), .ZN(n217) );
  XNOR2_X2 U307 ( .A(input_matrix[7]), .B(weight_matrix[5]), .ZN(n309) );
  XNOR2_X2 U308 ( .A(n219), .B(input_matrix[9]), .ZN(n386) );
  INV_X1 U309 ( .A(n402), .ZN(n242) );
  INV_X1 U310 ( .A(n246), .ZN(n243) );
  INV_X1 U311 ( .A(n275), .ZN(n251) );
  AOI21_X2 U312 ( .B1(n370), .B2(n369), .A(n368), .ZN(n371) );
  XNOR2_X2 U313 ( .A(n333), .B(n349), .ZN(n361) );
  NOR2_X2 U314 ( .A1(n371), .A2(n412), .ZN(output_row[2]) );
  XNOR2_X2 U315 ( .A(n341), .B(n340), .ZN(n333) );
  XNOR2_X2 U316 ( .A(weight_matrix[5]), .B(input_matrix[11]), .ZN(n388) );
  XNOR2_X2 U317 ( .A(n383), .B(n382), .ZN(n375) );
  XNOR2_X2 U318 ( .A(n334), .B(n361), .ZN(n335) );
  XNOR2_X2 U319 ( .A(n386), .B(n388), .ZN(n373) );
  INV_X2 U320 ( .A(n336), .ZN(n340) );
  INV_X1 U321 ( .A(wmem_dut_read_data[6]), .ZN(n407) );
  INV_X1 U325 ( .A(n432), .ZN(n254) );
  NAND2_X1 U326 ( .A1(n432), .A2(sram_dut_read_data[9]), .ZN(n255) );
  OAI21_X1 U327 ( .B1(n432), .B2(n431), .A(n255), .ZN(n30) );
  NAND2_X1 U328 ( .A1(n432), .A2(sram_dut_read_data[4]), .ZN(n256) );
  OAI21_X1 U329 ( .B1(n432), .B2(n415), .A(n256), .ZN(n25) );
  NAND2_X1 U330 ( .A1(n432), .A2(sram_dut_read_data[6]), .ZN(n257) );
  OAI21_X1 U331 ( .B1(n432), .B2(n427), .A(n257), .ZN(n27) );
  NAND2_X1 U332 ( .A1(n432), .A2(sram_dut_read_data[5]), .ZN(n258) );
  OAI21_X1 U333 ( .B1(n432), .B2(n413), .A(n258), .ZN(n26) );
  NAND2_X1 U334 ( .A1(n432), .A2(sram_dut_read_data[2]), .ZN(n259) );
  OAI21_X1 U335 ( .B1(n432), .B2(n416), .A(n259), .ZN(n23) );
  NAND2_X1 U336 ( .A1(n432), .A2(sram_dut_read_data[8]), .ZN(n260) );
  OAI21_X1 U337 ( .B1(n432), .B2(n430), .A(n260), .ZN(n29) );
  NAND2_X1 U338 ( .A1(n432), .A2(sram_dut_read_data[10]), .ZN(n261) );
  OAI21_X1 U339 ( .B1(n432), .B2(n414), .A(n261), .ZN(n31) );
  NAND2_X1 U340 ( .A1(n432), .A2(sram_dut_read_data[1]), .ZN(n262) );
  OAI21_X1 U341 ( .B1(n432), .B2(n417), .A(n262), .ZN(n22) );
  NAND2_X1 U342 ( .A1(n432), .A2(sram_dut_read_data[0]), .ZN(n263) );
  OAI21_X1 U343 ( .B1(n432), .B2(n421), .A(n263), .ZN(n21) );
  INV_X4 U344 ( .A(n424), .ZN(n296) );
  XNOR2_X1 U345 ( .A(n296), .B(n430), .ZN(n267) );
  XNOR2_X1 U346 ( .A(weight_matrix[4]), .B(input_matrix[5]), .ZN(n278) );
  XNOR2_X1 U347 ( .A(weight_matrix[7]), .B(input_matrix[9]), .ZN(n272) );
  NAND2_X1 U348 ( .A1(n265), .A2(n264), .ZN(n285) );
  NAND2_X1 U349 ( .A1(n285), .A2(n278), .ZN(n269) );
  NAND2_X1 U350 ( .A1(n205), .A2(n76), .ZN(n284) );
  NAND2_X1 U351 ( .A1(n284), .A2(n281), .ZN(n268) );
  NAND2_X1 U352 ( .A1(n267), .A2(n266), .ZN(n280) );
  NAND4_X1 U353 ( .A1(n269), .A2(n268), .A3(n283), .A4(n280), .ZN(n277) );
  OAI21_X1 U354 ( .B1(n270), .B2(n271), .A(n272), .ZN(n274) );
  NAND2_X1 U355 ( .A1(n270), .A2(n271), .ZN(n273) );
  NAND2_X1 U356 ( .A1(n274), .A2(n273), .ZN(n289) );
  NAND2_X1 U357 ( .A1(n277), .A2(n289), .ZN(n288) );
  INV_X1 U358 ( .A(n278), .ZN(n279) );
  NAND2_X1 U359 ( .A1(n280), .A2(n279), .ZN(n287) );
  INV_X1 U360 ( .A(n281), .ZN(n282) );
  NAND2_X1 U361 ( .A1(n283), .A2(n282), .ZN(n286) );
  NAND4_X1 U362 ( .A1(n287), .A2(n286), .A3(n285), .A4(n284), .ZN(n290) );
  INV_X1 U363 ( .A(n289), .ZN(n291) );
  NAND2_X1 U364 ( .A1(n432), .A2(sram_dut_read_data[7]), .ZN(n293) );
  OAI21_X1 U365 ( .B1(n432), .B2(n429), .A(n293), .ZN(n28) );
  NAND2_X1 U366 ( .A1(n432), .A2(sram_dut_read_data[3]), .ZN(n294) );
  OAI21_X1 U367 ( .B1(n432), .B2(n422), .A(n294), .ZN(n24) );
  NAND2_X1 U368 ( .A1(n432), .A2(sram_dut_read_data[11]), .ZN(n295) );
  OAI21_X1 U369 ( .B1(n432), .B2(n418), .A(n295), .ZN(n32) );
  XNOR2_X1 U370 ( .A(weight_matrix[7]), .B(input_matrix[10]), .ZN(n308) );
  XNOR2_X1 U371 ( .A(weight_matrix[1]), .B(input_matrix[2]), .ZN(n303) );
  XNOR2_X1 U372 ( .A(weight_matrix[0]), .B(input_matrix[1]), .ZN(n302) );
  XNOR2_X1 U373 ( .A(n303), .B(n302), .ZN(n297) );
  XNOR2_X1 U374 ( .A(weight_matrix[8]), .B(input_matrix[11]), .ZN(n318) );
  NAND2_X1 U375 ( .A1(n298), .A2(n299), .ZN(n322) );
  NAND2_X1 U376 ( .A1(n322), .A2(n315), .ZN(n307) );
  INV_X1 U377 ( .A(n303), .ZN(n301) );
  INV_X1 U378 ( .A(n302), .ZN(n300) );
  NAND2_X1 U379 ( .A1(n301), .A2(n300), .ZN(n321) );
  NAND2_X1 U380 ( .A1(n321), .A2(n318), .ZN(n306) );
  NAND2_X1 U381 ( .A1(n303), .A2(n302), .ZN(n320) );
  NAND2_X1 U382 ( .A1(n305), .A2(n304), .ZN(n317) );
  NAND4_X1 U383 ( .A1(n307), .A2(n306), .A3(n320), .A4(n317), .ZN(n314) );
  NAND2_X1 U384 ( .A1(n311), .A2(n310), .ZN(n327) );
  NAND2_X1 U385 ( .A1(n314), .A2(n327), .ZN(n325) );
  INV_X1 U386 ( .A(n315), .ZN(n316) );
  NAND2_X1 U387 ( .A1(n317), .A2(n316), .ZN(n324) );
  INV_X1 U388 ( .A(n318), .ZN(n319) );
  NAND2_X1 U389 ( .A1(n320), .A2(n319), .ZN(n323) );
  NAND4_X1 U390 ( .A1(n324), .A2(n323), .A3(n322), .A4(n321), .ZN(n328) );
  INV_X1 U391 ( .A(n327), .ZN(n329) );
  NAND2_X1 U392 ( .A1(n432), .A2(sram_dut_read_data[13]), .ZN(n330) );
  OAI21_X1 U393 ( .B1(n432), .B2(n434), .A(n330), .ZN(n34) );
  NAND2_X1 U394 ( .A1(n432), .A2(sram_dut_read_data[12]), .ZN(n331) );
  OAI21_X1 U395 ( .B1(n432), .B2(n425), .A(n331), .ZN(n33) );
  NAND2_X1 U396 ( .A1(n432), .A2(sram_dut_read_data[14]), .ZN(n332) );
  OAI21_X1 U397 ( .B1(n432), .B2(n419), .A(n332), .ZN(n35) );
  XNOR2_X1 U398 ( .A(weight_matrix[7]), .B(input_matrix[13]), .ZN(n343) );
  XNOR2_X1 U399 ( .A(weight_matrix[4]), .B(input_matrix[9]), .ZN(n349) );
  XNOR2_X1 U400 ( .A(weight_matrix[8]), .B(input_matrix[14]), .ZN(n352) );
  NAND2_X1 U401 ( .A1(n204), .A2(n336), .ZN(n356) );
  NAND2_X1 U402 ( .A1(n356), .A2(n349), .ZN(n342) );
  INV_X1 U403 ( .A(n339), .ZN(n337) );
  NAND2_X1 U404 ( .A1(n339), .A2(n338), .ZN(n354) );
  NAND2_X1 U405 ( .A1(n341), .A2(n340), .ZN(n351) );
  NAND2_X1 U406 ( .A1(n346), .A2(n345), .ZN(n363) );
  NAND3_X1 U407 ( .A1(n361), .A2(n199), .A3(n347), .ZN(n360) );
  INV_X1 U408 ( .A(n349), .ZN(n350) );
  NAND2_X1 U409 ( .A1(n351), .A2(n350), .ZN(n358) );
  INV_X1 U410 ( .A(n352), .ZN(n353) );
  NAND2_X1 U411 ( .A1(n354), .A2(n353), .ZN(n357) );
  NAND4_X1 U412 ( .A1(n358), .A2(n357), .A3(n356), .A4(n355), .ZN(n364) );
  NAND2_X1 U413 ( .A1(n360), .A2(n366), .ZN(n369) );
  INV_X1 U414 ( .A(n363), .ZN(n365) );
  OAI22_X1 U415 ( .A1(n367), .A2(n366), .B1(n365), .B2(n364), .ZN(n368) );
  NAND2_X1 U416 ( .A1(n432), .A2(sram_dut_read_data[15]), .ZN(n372) );
  OAI21_X1 U417 ( .B1(n432), .B2(n423), .A(n372), .ZN(n36) );
  XNOR2_X1 U418 ( .A(weight_matrix[7]), .B(input_matrix[14]), .ZN(n387) );
  XNOR2_X1 U419 ( .A(n374), .B(n429), .ZN(n377) );
  XNOR2_X1 U420 ( .A(weight_matrix[0]), .B(input_matrix[5]), .ZN(n380) );
  XNOR2_X1 U421 ( .A(weight_matrix[8]), .B(input_matrix[15]), .ZN(n394) );
  INV_X1 U422 ( .A(n382), .ZN(n376) );
  NAND2_X1 U423 ( .A1(n377), .A2(n376), .ZN(n398) );
  NAND2_X1 U424 ( .A1(n398), .A2(n391), .ZN(n385) );
  INV_X1 U425 ( .A(n381), .ZN(n379) );
  INV_X1 U426 ( .A(n380), .ZN(n378) );
  NAND2_X1 U427 ( .A1(n379), .A2(n378), .ZN(n397) );
  NAND2_X1 U428 ( .A1(n397), .A2(n394), .ZN(n384) );
  NAND2_X1 U429 ( .A1(n381), .A2(n380), .ZN(n396) );
  NAND2_X1 U430 ( .A1(n383), .A2(n382), .ZN(n393) );
  NAND4_X1 U431 ( .A1(n385), .A2(n384), .A3(n396), .A4(n393), .ZN(n390) );
  NAND2_X1 U432 ( .A1(n390), .A2(n403), .ZN(n401) );
  INV_X1 U433 ( .A(n391), .ZN(n392) );
  NAND2_X1 U434 ( .A1(n393), .A2(n392), .ZN(n400) );
  INV_X1 U435 ( .A(n394), .ZN(n395) );
  NAND2_X1 U436 ( .A1(n396), .A2(n395), .ZN(n399) );
  NAND4_X1 U437 ( .A1(n400), .A2(n399), .A3(n398), .A4(n397), .ZN(n404) );
  INV_X1 U438 ( .A(n403), .ZN(n405) );
  NOR2_X1 U439 ( .A1(dut_busy), .A2(dut_run), .ZN(n406) );
  NOR2_X1 U440 ( .A1(n406), .A2(current_state), .ZN(n37) );
endmodule

