// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.7.0.96.1
// Netlist written on Thu May 05 22:09:29 2016
//
// Verilog Description of module Default_w_standby_top
//

module Default_w_standby_top (stdby_in, stdby1, osc_clk, led0, led1, 
            led2, led3, led4, led5, led6, led7, red, green, 
            blue, extclock, dataEnable, colorR) /* synthesis syn_module_defined=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(1[8:29])
    input stdby_in;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(3[7:15])
    output stdby1;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(6[8:14])
    output osc_clk;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(6[16:23])
    output led0;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(7[8:12])
    output led1;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(7[14:18])
    output led2;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(7[20:24])
    output led3;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(7[26:30])
    output led4;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(7[32:36])
    output led5;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(7[38:42])
    output led6;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(7[44:48])
    output led7;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(7[50:54])
    output red;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(9[8:11])
    output green;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(9[13:18])
    output blue;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(9[20:24])
    input extclock;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(3[17:25])
    input dataEnable;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(3[27:37])
    input colorR;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(4[7:13])
    
    wire extclock_c /* synthesis is_clock=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(3[17:25])
    wire extclock_N_19 /* synthesis is_inv_clock=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(14[13:21])
    
    wire GND_net, VCC_net, stdby_in_c, dataEnable_c, colorR_c, stdby1_c, 
        osc_clk_c, led2_c, led6_c, blue_c;
    wire [16:0]xCounter;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(14[13:21])
    wire [16:0]yCounter;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(15[13:21])
    wire [16:0]leds;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(17[13:17])
    wire [16:0]deLowCounter;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(19[13:25])
    
    wire clearX, clearY;
    wire [31:0]clearX_N_77;
    
    wire n991, n1007, n997, n993, extclock_N_19_enable_8, n4, n1202, 
        n1484, n1387, n1367, n1194, n82, n81, n80, n79, n78, 
        n77, n76, n75, n74, n1207, n626, n1470, n1482, extclock_N_19_enable_2, 
        n22, n20, n1375, n18, n1374, n1373, n1386, n90, n89, 
        n88, n87, n86, n85, n84, n83, n1364, n985, n1385, 
        n1011, n1013, n1015, n14, n1009, n999, n1450, n20_adj_221, 
        extclock_N_19_enable_1, n995, n1005, n1001, n18_adj_222, extclock_N_19_enable_5, 
        n16, n1380, n973, n1035, n987, n5, n6, n1019, clearY_N_63, 
        n1379, n1378, n886, n1365, n874, n1389, n1003, n4_adj_223, 
        n28, n989, n10, n27, n1459, n26, n24, n74_adj_224, n75_adj_225, 
        n76_adj_226, n77_adj_227, n78_adj_228, n79_adj_229, n80_adj_230, 
        n81_adj_231, n82_adj_232, n83_adj_233, n84_adj_234, n85_adj_235, 
        n86_adj_236, n87_adj_237, n88_adj_238, n89_adj_239, n90_adj_240, 
        n1384, n1370, n1377, n1366, n1369, n1388, n1376, n1383, 
        n1382, n20_adj_241, n1368, n12, n1371, n14_adj_242, n1458, 
        extclock_N_19_enable_16, n1415, n1580, extclock_N_19_enable_22, 
        n10_adj_243;
    
    VHI i2 (.Z(VCC_net));
    INV i1054 (.A(extclock_c), .Z(extclock_N_19));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(3[17:25])
    OB osc_clk_pad (.I(osc_clk_c), .O(osc_clk));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(6[16:23])
    LUT4 i1020_2_lut_2_lut_4_lut_4_lut (.A(clearX), .B(clearY), .C(dataEnable_c), 
         .D(n1194), .Z(n1458)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B+(D)))) */ ;
    defparam i1020_2_lut_2_lut_4_lut_4_lut.init = 16'h003b;
    OB stdby1_pad (.I(stdby1_c), .O(stdby1));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(6[8:14])
    LUT4 i562_4_lut (.A(clearX_N_77[1]), .B(deLowCounter[1]), .C(dataEnable_c), 
         .D(n626), .Z(n1003)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam i562_4_lut.init = 16'h0aca;
    CCU2D add_171_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(deLowCounter[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1364), .S1(clearX_N_77[0]));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(64[18:34])
    defparam add_171_1.INIT0 = 16'hF000;
    defparam add_171_1.INIT1 = 16'h5555;
    defparam add_171_1.INJECT1_0 = "NO";
    defparam add_171_1.INJECT1_1 = "NO";
    CCU2D xCounter_235_add_4_5 (.A0(xCounter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(xCounter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1374), .COUT(n1375), .S0(n87), .S1(n86));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235_add_4_5.INIT0 = 16'hfaaa;
    defparam xCounter_235_add_4_5.INIT1 = 16'hfaaa;
    defparam xCounter_235_add_4_5.INJECT1_0 = "NO";
    defparam xCounter_235_add_4_5.INJECT1_1 = "NO";
    OSCH OSCH_inst (.STDBY(stdby1_c), .OSC(osc_clk_c)) /* synthesis syn_instantiated=1 */ ;
    defparam OSCH_inst.NOM_FREQ = "133.00";
    LUT4 i2_4_lut (.A(n1450), .B(clearX), .C(n1415), .D(dataEnable_c), 
         .Z(extclock_N_19_enable_16)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i2_4_lut.init = 16'h0100;
    FD1P3IX yCounter_234__i2 (.D(n88_adj_238), .SP(dataEnable_c), .CD(n1019), 
            .CK(extclock_N_19), .Q(yCounter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234__i2.GSR = "ENABLED";
    LUT4 i6_4_lut (.A(n1484), .B(n12), .C(yCounter[8]), .D(xCounter[1]), 
         .Z(n1450)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i6_4_lut.init = 16'hfffd;
    LUT4 i552_4_lut (.A(clearX_N_77[14]), .B(deLowCounter[14]), .C(dataEnable_c), 
         .D(n626), .Z(n993)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam i552_4_lut.init = 16'h0aca;
    CCU2D xCounter_235_add_4_15 (.A0(xCounter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(xCounter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1379), .COUT(n1380), .S0(n77), .S1(n76));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235_add_4_15.INIT0 = 16'hfaaa;
    defparam xCounter_235_add_4_15.INIT1 = 16'hfaaa;
    defparam xCounter_235_add_4_15.INJECT1_0 = "NO";
    defparam xCounter_235_add_4_15.INJECT1_1 = "NO";
    LUT4 i4_4_lut (.A(xCounter[4]), .B(n1482), .C(xCounter[3]), .D(n6), 
         .Z(n1202)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i4_4_lut.init = 16'hfffb;
    LUT4 i1006_4_lut (.A(xCounter[1]), .B(xCounter[5]), .C(xCounter[0]), 
         .D(xCounter[6]), .Z(n1482)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1006_4_lut.init = 16'h8000;
    LUT4 i1008_4_lut (.A(yCounter[0]), .B(xCounter[4]), .C(yCounter[3]), 
         .D(n1470), .Z(n1484)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1008_4_lut.init = 16'h8000;
    CCU2D add_171_7 (.A0(deLowCounter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(deLowCounter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1366), .COUT(n1367), .S0(clearX_N_77[5]), 
          .S1(clearX_N_77[6]));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(64[18:34])
    defparam add_171_7.INIT0 = 16'h5aaa;
    defparam add_171_7.INIT1 = 16'h5aaa;
    defparam add_171_7.INJECT1_0 = "NO";
    defparam add_171_7.INJECT1_1 = "NO";
    CCU2D xCounter_235_add_4_3 (.A0(xCounter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(xCounter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1373), .COUT(n1374), .S0(n89), .S1(n88));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235_add_4_3.INIT0 = 16'hfaaa;
    defparam xCounter_235_add_4_3.INIT1 = 16'hfaaa;
    defparam xCounter_235_add_4_3.INJECT1_0 = "NO";
    defparam xCounter_235_add_4_3.INJECT1_1 = "NO";
    CCU2D xCounter_235_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(xCounter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1373), .S1(n90));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235_add_4_1.INIT0 = 16'hF000;
    defparam xCounter_235_add_4_1.INIT1 = 16'h0555;
    defparam xCounter_235_add_4_1.INJECT1_0 = "NO";
    defparam xCounter_235_add_4_1.INJECT1_1 = "NO";
    FD1P3AX leds_4__140 (.D(n1459), .SP(extclock_N_19_enable_1), .CK(extclock_N_19), 
            .Q(leds[4]));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam leds_4__140.GSR = "ENABLED";
    FD1S3AX deLowCounter_i0 (.D(n1001), .CK(extclock_N_19), .Q(deLowCounter[0])) /* synthesis lse_init_val=0 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam deLowCounter_i0.GSR = "ENABLED";
    FD1P3AX clearY_130 (.D(clearY_N_63), .SP(extclock_N_19_enable_2), .CK(extclock_N_19), 
            .Q(clearY)) /* synthesis lse_init_val=0 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam clearY_130.GSR = "ENABLED";
    FD1P3IX xCounter_235__i1 (.D(n89), .SP(extclock_N_19_enable_22), .CD(n1035), 
            .CK(extclock_N_19), .Q(xCounter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(clearX), .B(clearY), .C(n886), .Z(n6)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(117[16:48])
    defparam i1_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i554_4_lut (.A(clearX_N_77[13]), .B(deLowCounter[13]), .C(dataEnable_c), 
         .D(n626), .Z(n995)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam i554_4_lut.init = 16'h0aca;
    FD1P3IX xCounter_235__i2 (.D(n88), .SP(extclock_N_19_enable_22), .CD(n1035), 
            .CK(extclock_N_19), .Q(xCounter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235__i2.GSR = "ENABLED";
    FD1P3AX clearX_131 (.D(clearY_N_63), .SP(extclock_N_19_enable_5), .CK(extclock_N_19), 
            .Q(clearX)) /* synthesis lse_init_val=0 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam clearX_131.GSR = "ENABLED";
    FD1P3IX yCounter_234__i3 (.D(n87_adj_237), .SP(dataEnable_c), .CD(n1019), 
            .CK(extclock_N_19), .Q(yCounter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234__i3.GSR = "ENABLED";
    FD1P3IX xCounter_235__i3 (.D(n87), .SP(extclock_N_19_enable_22), .CD(n1035), 
            .CK(extclock_N_19), .Q(xCounter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235__i3.GSR = "ENABLED";
    LUT4 i556_4_lut (.A(clearX_N_77[12]), .B(deLowCounter[12]), .C(dataEnable_c), 
         .D(n626), .Z(n997)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam i556_4_lut.init = 16'h0aca;
    LUT4 i5_4_lut (.A(yCounter[2]), .B(xCounter[0]), .C(xCounter[6]), 
         .D(xCounter[5]), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i532_4_lut (.A(clearX_N_77[11]), .B(deLowCounter[11]), .C(dataEnable_c), 
         .D(n626), .Z(n973)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam i532_4_lut.init = 16'h0aca;
    LUT4 i574_4_lut (.A(clearX_N_77[10]), .B(deLowCounter[10]), .C(dataEnable_c), 
         .D(n626), .Z(n1015)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam i574_4_lut.init = 16'h0aca;
    FD1P3IX xCounter_235__i4 (.D(n86), .SP(extclock_N_19_enable_22), .CD(n1035), 
            .CK(extclock_N_19), .Q(xCounter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235__i4.GSR = "ENABLED";
    FD1P3AX leds_1__143 (.D(n1458), .SP(extclock_N_19_enable_8), .CK(extclock_N_19), 
            .Q(leds[1]));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam leds_1__143.GSR = "ENABLED";
    LUT4 i570_4_lut (.A(clearX_N_77[9]), .B(deLowCounter[9]), .C(dataEnable_c), 
         .D(n626), .Z(n1011)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam i570_4_lut.init = 16'h0aca;
    FD1P3IX xCounter_235__i5 (.D(n85), .SP(extclock_N_19_enable_22), .CD(n1035), 
            .CK(extclock_N_19), .Q(xCounter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235__i5.GSR = "ENABLED";
    LUT4 i546_4_lut (.A(clearX_N_77[8]), .B(deLowCounter[8]), .C(dataEnable_c), 
         .D(n626), .Z(n987)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam i546_4_lut.init = 16'h0aca;
    FD1P3IX xCounter_235__i6 (.D(n84), .SP(extclock_N_19_enable_22), .CD(n1035), 
            .CK(extclock_N_19), .Q(xCounter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235__i6.GSR = "ENABLED";
    LUT4 i550_4_lut (.A(clearX_N_77[7]), .B(deLowCounter[7]), .C(dataEnable_c), 
         .D(n626), .Z(n991)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam i550_4_lut.init = 16'h0aca;
    FD1P3IX xCounter_235__i7 (.D(n83), .SP(extclock_N_19_enable_22), .CD(n1035), 
            .CK(extclock_N_19), .Q(xCounter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235__i7.GSR = "ENABLED";
    FD1P3IX xCounter_235__i8 (.D(n82), .SP(extclock_N_19_enable_22), .CD(n1035), 
            .CK(extclock_N_19), .Q(xCounter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235__i8.GSR = "ENABLED";
    LUT4 i544_4_lut (.A(clearX_N_77[6]), .B(deLowCounter[6]), .C(dataEnable_c), 
         .D(n626), .Z(n985)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam i544_4_lut.init = 16'h0aca;
    CCU2D add_171_5 (.A0(deLowCounter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(deLowCounter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1365), .COUT(n1366), .S0(clearX_N_77[3]), 
          .S1(clearX_N_77[4]));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(64[18:34])
    defparam add_171_5.INIT0 = 16'h5aaa;
    defparam add_171_5.INIT1 = 16'h5aaa;
    defparam add_171_5.INJECT1_0 = "NO";
    defparam add_171_5.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(VCC_net));
    FD1P3IX xCounter_235__i9 (.D(n81), .SP(extclock_N_19_enable_22), .CD(n1035), 
            .CK(extclock_N_19), .Q(xCounter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235__i9.GSR = "ENABLED";
    LUT4 i566_4_lut (.A(clearX_N_77[5]), .B(deLowCounter[5]), .C(dataEnable_c), 
         .D(n626), .Z(n1007)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam i566_4_lut.init = 16'h0aca;
    LUT4 i1022_3_lut_rep_18_4_lut_3_lut (.A(clearX), .B(clearY), .C(dataEnable_c), 
         .Z(extclock_N_19_enable_22)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(99[16:48])
    defparam i1022_3_lut_rep_18_4_lut_3_lut.init = 16'hb0b0;
    LUT4 i994_2_lut (.A(xCounter[3]), .B(yCounter[4]), .Z(n1470)) /* synthesis lut_function=(A (B)) */ ;
    defparam i994_2_lut.init = 16'h8888;
    LUT4 leds_1__I_0_1_lut (.A(leds[1]), .Z(led6_c)) /* synthesis lut_function=(!(A)) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(190[15:30])
    defparam leds_1__I_0_1_lut.init = 16'h5555;
    CCU2D xCounter_235_add_4_13 (.A0(xCounter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(xCounter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1378), .COUT(n1379), .S0(n79), .S1(n78));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235_add_4_13.INIT0 = 16'hfaaa;
    defparam xCounter_235_add_4_13.INIT1 = 16'hfaaa;
    defparam xCounter_235_add_4_13.INJECT1_0 = "NO";
    defparam xCounter_235_add_4_13.INJECT1_1 = "NO";
    CCU2D yCounter_234_add_4_11 (.A0(yCounter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(yCounter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1386), .COUT(n1387), .S0(n81_adj_231), 
          .S1(n80_adj_230));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234_add_4_11.INIT0 = 16'hfaaa;
    defparam yCounter_234_add_4_11.INIT1 = 16'hfaaa;
    defparam yCounter_234_add_4_11.INJECT1_0 = "NO";
    defparam yCounter_234_add_4_11.INJECT1_1 = "NO";
    FD1P3IX xCounter_235__i10 (.D(n80), .SP(extclock_N_19_enable_22), .CD(n1035), 
            .CK(extclock_N_19), .Q(xCounter[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235__i10.GSR = "ENABLED";
    CCU2D yCounter_234_add_4_9 (.A0(yCounter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(yCounter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1385), .COUT(n1386), .S0(n83_adj_233), 
          .S1(n82_adj_232));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234_add_4_9.INIT0 = 16'hfaaa;
    defparam yCounter_234_add_4_9.INIT1 = 16'hfaaa;
    defparam yCounter_234_add_4_9.INJECT1_0 = "NO";
    defparam yCounter_234_add_4_9.INJECT1_1 = "NO";
    OB led0_pad (.I(led2_c), .O(led0));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(7[8:12])
    LUT4 i564_4_lut (.A(clearX_N_77[4]), .B(deLowCounter[4]), .C(dataEnable_c), 
         .D(n626), .Z(n1005)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam i564_4_lut.init = 16'h0aca;
    LUT4 i12_4_lut (.A(deLowCounter[9]), .B(n24), .C(deLowCounter[0]), 
         .D(deLowCounter[6]), .Z(n27)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(68[11:29])
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i10_4_lut (.A(xCounter[15]), .B(n20_adj_221), .C(n16), .D(xCounter[10]), 
         .Z(n886)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(154[8:23])
    defparam i10_4_lut.init = 16'hfffe;
    pwr_cntrllr pcm1 (.stdby_in_c(stdby_in_c), .GND_net(GND_net), .stdby1_c(stdby1_c)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(35[13] 36[42])
    LUT4 i2_3_lut_4_lut (.A(clearX), .B(clearY), .C(n886), .D(n874), 
         .Z(n1415)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(99[16:48])
    defparam i2_3_lut_4_lut.init = 16'hfff4;
    LUT4 i9_4_lut (.A(xCounter[9]), .B(n18_adj_222), .C(xCounter[13]), 
         .D(xCounter[16]), .Z(n20_adj_221)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(154[8:23])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i572_4_lut (.A(clearX_N_77[3]), .B(deLowCounter[3]), .C(dataEnable_c), 
         .D(n626), .Z(n1013)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam i572_4_lut.init = 16'h0aca;
    LUT4 i568_4_lut (.A(clearX_N_77[2]), .B(deLowCounter[2]), .C(dataEnable_c), 
         .D(n626), .Z(n1009)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam i568_4_lut.init = 16'h0aca;
    LUT4 i592_2_lut (.A(dataEnable_c), .B(clearY), .Z(n1019)) /* synthesis lut_function=(A (B)) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam i592_2_lut.init = 16'h8888;
    LUT4 i5_2_lut (.A(xCounter[12]), .B(xCounter[8]), .Z(n16)) /* synthesis lut_function=(A+(B)) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(154[8:23])
    defparam i5_2_lut.init = 16'heeee;
    CCU2D add_171_17 (.A0(deLowCounter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(deLowCounter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1371), .S0(clearX_N_77[15]), .S1(clearX_N_77[16]));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(64[18:34])
    defparam add_171_17.INIT0 = 16'h5aaa;
    defparam add_171_17.INIT1 = 16'h5aaa;
    defparam add_171_17.INJECT1_0 = "NO";
    defparam add_171_17.INJECT1_1 = "NO";
    CCU2D yCounter_234_add_4_7 (.A0(yCounter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(yCounter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1384), .COUT(n1385), .S0(n85_adj_235), 
          .S1(n84_adj_234));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234_add_4_7.INIT0 = 16'hfaaa;
    defparam yCounter_234_add_4_7.INIT1 = 16'hfaaa;
    defparam yCounter_234_add_4_7.INJECT1_0 = "NO";
    defparam yCounter_234_add_4_7.INJECT1_1 = "NO";
    CCU2D yCounter_234_add_4_5 (.A0(yCounter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(yCounter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1383), .COUT(n1384), .S0(n87_adj_237), 
          .S1(n86_adj_236));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234_add_4_5.INIT0 = 16'hfaaa;
    defparam yCounter_234_add_4_5.INIT1 = 16'hfaaa;
    defparam yCounter_234_add_4_5.INJECT1_0 = "NO";
    defparam yCounter_234_add_4_5.INJECT1_1 = "NO";
    CCU2D add_171_15 (.A0(deLowCounter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(deLowCounter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1370), .COUT(n1371), .S0(clearX_N_77[13]), 
          .S1(clearX_N_77[14]));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(64[18:34])
    defparam add_171_15.INIT0 = 16'h5aaa;
    defparam add_171_15.INIT1 = 16'h5aaa;
    defparam add_171_15.INJECT1_0 = "NO";
    defparam add_171_15.INJECT1_1 = "NO";
    LUT4 i7_4_lut (.A(xCounter[7]), .B(xCounter[2]), .C(xCounter[11]), 
         .D(xCounter[14]), .Z(n18_adj_222)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(154[8:23])
    defparam i7_4_lut.init = 16'hfffe;
    CCU2D add_171_13 (.A0(deLowCounter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(deLowCounter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1369), .COUT(n1370), .S0(clearX_N_77[11]), 
          .S1(clearX_N_77[12]));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(64[18:34])
    defparam add_171_13.INIT0 = 16'h5aaa;
    defparam add_171_13.INIT1 = 16'h5aaa;
    defparam add_171_13.INJECT1_0 = "NO";
    defparam add_171_13.INJECT1_1 = "NO";
    CCU2D yCounter_234_add_4_3 (.A0(yCounter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(yCounter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1382), .COUT(n1383), .S0(n89_adj_239), 
          .S1(n88_adj_238));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234_add_4_3.INIT0 = 16'hfaaa;
    defparam yCounter_234_add_4_3.INIT1 = 16'hfaaa;
    defparam yCounter_234_add_4_3.INJECT1_0 = "NO";
    defparam yCounter_234_add_4_3.INJECT1_1 = "NO";
    CCU2D xCounter_235_add_4_11 (.A0(xCounter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(xCounter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1377), .COUT(n1378), .S0(n81), .S1(n80));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235_add_4_11.INIT0 = 16'hfaaa;
    defparam xCounter_235_add_4_11.INIT1 = 16'hfaaa;
    defparam xCounter_235_add_4_11.INJECT1_0 = "NO";
    defparam xCounter_235_add_4_11.INJECT1_1 = "NO";
    LUT4 i560_4_lut (.A(clearX_N_77[0]), .B(deLowCounter[0]), .C(dataEnable_c), 
         .D(n626), .Z(n1001)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam i560_4_lut.init = 16'h0aca;
    LUT4 i793_3_lut (.A(n1202), .B(dataEnable_c), .C(clearY), .Z(extclock_N_19_enable_1)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;
    defparam i793_3_lut.init = 16'hc4c4;
    LUT4 i214_1_lut (.A(dataEnable_c), .Z(clearY_N_63)) /* synthesis lut_function=(!(A)) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(3[27:37])
    defparam i214_1_lut.init = 16'h5555;
    LUT4 i2_2_lut (.A(clearY), .B(clearX), .Z(n626)) /* synthesis lut_function=(A+(B)) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(99[12] 168[6])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i7_4_lut_adj_43 (.A(clearX_N_77[11]), .B(n14_adj_242), .C(n10_adj_243), 
         .D(dataEnable_c), .Z(extclock_N_19_enable_2)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i7_4_lut_adj_43.init = 16'hfffe;
    LUT4 i6_4_lut_adj_44 (.A(clearX_N_77[13]), .B(clearX_N_77[16]), .C(clearX_N_77[14]), 
         .D(clearX_N_77[12]), .Z(n14_adj_242)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut_adj_44.init = 16'hfffe;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1_4_lut (.A(n27), .B(dataEnable_c), .C(n1207), .D(n28), .Z(extclock_N_19_enable_5)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;
    defparam i1_4_lut.init = 16'hccdc;
    LUT4 i765_2_lut (.A(deLowCounter[5]), .B(deLowCounter[3]), .Z(n1207)) /* synthesis lut_function=(A (B)) */ ;
    defparam i765_2_lut.init = 16'h8888;
    LUT4 i13_4_lut (.A(deLowCounter[13]), .B(n26), .C(n20_adj_241), .D(deLowCounter[14]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(68[11:29])
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i9_4_lut_adj_45 (.A(deLowCounter[1]), .B(deLowCounter[8]), .C(deLowCounter[4]), 
         .D(deLowCounter[7]), .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(68[11:29])
    defparam i9_4_lut_adj_45.init = 16'hfffe;
    LUT4 i11_4_lut (.A(deLowCounter[2]), .B(deLowCounter[15]), .C(deLowCounter[16]), 
         .D(deLowCounter[11]), .Z(n26)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(68[11:29])
    defparam i11_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut_adj_46 (.A(clearX_N_77[15]), .B(n5), .C(clearX_N_77[10]), 
         .D(clearX_N_77[8]), .Z(n10_adj_243)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i2_4_lut_adj_46.init = 16'heaaa;
    CCU2D add_171_11 (.A0(deLowCounter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(deLowCounter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1368), .COUT(n1369), .S0(clearX_N_77[9]), 
          .S1(clearX_N_77[10]));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(64[18:34])
    defparam add_171_11.INIT0 = 16'h5aaa;
    defparam add_171_11.INIT1 = 16'h5aaa;
    defparam add_171_11.INJECT1_0 = "NO";
    defparam add_171_11.INJECT1_1 = "NO";
    CCU2D xCounter_235_add_4_9 (.A0(xCounter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(xCounter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1376), .COUT(n1377), .S0(n83), .S1(n82));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235_add_4_9.INIT0 = 16'hfaaa;
    defparam xCounter_235_add_4_9.INIT1 = 16'hfaaa;
    defparam xCounter_235_add_4_9.INJECT1_0 = "NO";
    defparam xCounter_235_add_4_9.INJECT1_1 = "NO";
    CCU2D xCounter_235_add_4_7 (.A0(xCounter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(xCounter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1375), .COUT(n1376), .S0(n85), .S1(n84));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235_add_4_7.INIT0 = 16'hfaaa;
    defparam xCounter_235_add_4_7.INIT1 = 16'hfaaa;
    defparam xCounter_235_add_4_7.INJECT1_0 = "NO";
    defparam xCounter_235_add_4_7.INJECT1_1 = "NO";
    CCU2D yCounter_234_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clearX), .B1(clearY), .C1(yCounter[0]), 
          .D1(GND_net), .COUT(n1382), .S1(n90_adj_240));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234_add_4_1.INIT0 = 16'hF000;
    defparam yCounter_234_add_4_1.INIT1 = 16'hd2d2;
    defparam yCounter_234_add_4_1.INJECT1_0 = "NO";
    defparam yCounter_234_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_47 (.A(clearX_N_77[6]), .B(clearX_N_77[9]), .C(clearX_N_77[7]), 
         .D(n4_adj_223), .Z(n5)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_47.init = 16'hc8c0;
    LUT4 i5_2_lut_adj_48 (.A(deLowCounter[10]), .B(deLowCounter[12]), .Z(n20_adj_241)) /* synthesis lut_function=(A+(B)) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(68[11:29])
    defparam i5_2_lut_adj_48.init = 16'heeee;
    LUT4 i791_3_lut (.A(n1194), .B(dataEnable_c), .C(clearY), .Z(extclock_N_19_enable_8)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;
    defparam i791_3_lut.init = 16'hc4c4;
    LUT4 clearX_I_0_147_2_lut_rep_19 (.A(clearX), .B(clearY), .Z(n1580)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(117[16:48])
    defparam clearX_I_0_147_2_lut_rep_19.init = 16'h2222;
    LUT4 i608_2_lut_4_lut_3_lut (.A(clearX), .B(dataEnable_c), .Z(n1035)) /* synthesis lut_function=(A (B)) */ ;
    defparam i608_2_lut_4_lut_3_lut.init = 16'h8888;
    FD1S3AX deLowCounter_i16 (.D(n999), .CK(extclock_N_19), .Q(deLowCounter[16])) /* synthesis lse_init_val=0 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam deLowCounter_i16.GSR = "ENABLED";
    LUT4 i1025_2_lut_2_lut_4_lut_4_lut (.A(clearX), .B(clearY), .C(dataEnable_c), 
         .D(n1202), .Z(n1459)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B+(D)))) */ ;
    defparam i1025_2_lut_2_lut_4_lut_4_lut.init = 16'h003b;
    LUT4 i1_4_lut_adj_49 (.A(clearX_N_77[5]), .B(clearX_N_77[3]), .C(clearX_N_77[4]), 
         .D(n4), .Z(n4_adj_223)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_49.init = 16'ha8a0;
    LUT4 i5_4_lut_adj_50 (.A(yCounter[4]), .B(n10), .C(yCounter[8]), .D(yCounter[2]), 
         .Z(n1194)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i5_4_lut_adj_50.init = 16'hefff;
    LUT4 i1_3_lut (.A(clearX_N_77[2]), .B(clearX_N_77[0]), .C(clearX_N_77[1]), 
         .Z(n4)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1_3_lut.init = 16'ha8a8;
    TSALL TSALL_INST (.TSALL(GND_net));
    CCU2D add_171_9 (.A0(deLowCounter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(deLowCounter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1367), .COUT(n1368), .S0(clearX_N_77[7]), 
          .S1(clearX_N_77[8]));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(64[18:34])
    defparam add_171_9.INIT0 = 16'h5aaa;
    defparam add_171_9.INIT1 = 16'h5aaa;
    defparam add_171_9.INJECT1_0 = "NO";
    defparam add_171_9.INJECT1_1 = "NO";
    CCU2D yCounter_234_add_4_17 (.A0(yCounter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(yCounter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1389), .S0(n75_adj_225), .S1(n74_adj_224));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234_add_4_17.INIT0 = 16'hfaaa;
    defparam yCounter_234_add_4_17.INIT1 = 16'hfaaa;
    defparam yCounter_234_add_4_17.INJECT1_0 = "NO";
    defparam yCounter_234_add_4_17.INJECT1_1 = "NO";
    CCU2D xCounter_235_add_4_17 (.A0(xCounter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(xCounter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1380), .S0(n75), .S1(n74));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235_add_4_17.INIT0 = 16'hfaaa;
    defparam xCounter_235_add_4_17.INIT1 = 16'hfaaa;
    defparam xCounter_235_add_4_17.INJECT1_0 = "NO";
    defparam xCounter_235_add_4_17.INJECT1_1 = "NO";
    CCU2D yCounter_234_add_4_15 (.A0(yCounter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(yCounter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1388), .COUT(n1389), .S0(n77_adj_227), 
          .S1(n76_adj_226));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234_add_4_15.INIT0 = 16'hfaaa;
    defparam yCounter_234_add_4_15.INIT1 = 16'hfaaa;
    defparam yCounter_234_add_4_15.INJECT1_0 = "NO";
    defparam yCounter_234_add_4_15.INJECT1_1 = "NO";
    LUT4 i4_4_lut_adj_51 (.A(yCounter[3]), .B(n874), .C(n1580), .D(yCounter[0]), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_51.init = 16'hfffe;
    LUT4 i11_4_lut_adj_52 (.A(yCounter[14]), .B(n22), .C(n18), .D(yCounter[5]), 
         .Z(n874)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(134[8:23])
    defparam i11_4_lut_adj_52.init = 16'hfffe;
    LUT4 i10_4_lut_adj_53 (.A(yCounter[11]), .B(n20), .C(n14), .D(yCounter[1]), 
         .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(134[8:23])
    defparam i10_4_lut_adj_53.init = 16'hfffe;
    CCU2D yCounter_234_add_4_13 (.A0(yCounter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(yCounter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1387), .COUT(n1388), .S0(n79_adj_229), 
          .S1(n78_adj_228));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234_add_4_13.INIT0 = 16'hfaaa;
    defparam yCounter_234_add_4_13.INIT1 = 16'hfaaa;
    defparam yCounter_234_add_4_13.INJECT1_0 = "NO";
    defparam yCounter_234_add_4_13.INJECT1_1 = "NO";
    VLO i1 (.Z(GND_net));
    FD1S3AX deLowCounter_i15 (.D(n989), .CK(extclock_N_19), .Q(deLowCounter[15])) /* synthesis lse_init_val=0 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam deLowCounter_i15.GSR = "ENABLED";
    FD1S3AX deLowCounter_i14 (.D(n993), .CK(extclock_N_19), .Q(deLowCounter[14])) /* synthesis lse_init_val=0 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam deLowCounter_i14.GSR = "ENABLED";
    FD1S3AX deLowCounter_i13 (.D(n995), .CK(extclock_N_19), .Q(deLowCounter[13])) /* synthesis lse_init_val=0 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam deLowCounter_i13.GSR = "ENABLED";
    FD1S3AX deLowCounter_i12 (.D(n997), .CK(extclock_N_19), .Q(deLowCounter[12])) /* synthesis lse_init_val=0 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam deLowCounter_i12.GSR = "ENABLED";
    FD1S3AX deLowCounter_i11 (.D(n973), .CK(extclock_N_19), .Q(deLowCounter[11])) /* synthesis lse_init_val=0 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam deLowCounter_i11.GSR = "ENABLED";
    FD1S3AX deLowCounter_i10 (.D(n1015), .CK(extclock_N_19), .Q(deLowCounter[10])) /* synthesis lse_init_val=0 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam deLowCounter_i10.GSR = "ENABLED";
    FD1S3AX deLowCounter_i9 (.D(n1011), .CK(extclock_N_19), .Q(deLowCounter[9])) /* synthesis lse_init_val=0 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam deLowCounter_i9.GSR = "ENABLED";
    FD1S3AX deLowCounter_i8 (.D(n987), .CK(extclock_N_19), .Q(deLowCounter[8])) /* synthesis lse_init_val=0 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam deLowCounter_i8.GSR = "ENABLED";
    FD1S3AX deLowCounter_i7 (.D(n991), .CK(extclock_N_19), .Q(deLowCounter[7])) /* synthesis lse_init_val=0 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam deLowCounter_i7.GSR = "ENABLED";
    FD1S3AX deLowCounter_i6 (.D(n985), .CK(extclock_N_19), .Q(deLowCounter[6])) /* synthesis lse_init_val=0 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam deLowCounter_i6.GSR = "ENABLED";
    FD1S3AX deLowCounter_i5 (.D(n1007), .CK(extclock_N_19), .Q(deLowCounter[5])) /* synthesis lse_init_val=0 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam deLowCounter_i5.GSR = "ENABLED";
    FD1S3AX deLowCounter_i4 (.D(n1005), .CK(extclock_N_19), .Q(deLowCounter[4])) /* synthesis lse_init_val=0 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam deLowCounter_i4.GSR = "ENABLED";
    FD1S3AX deLowCounter_i3 (.D(n1013), .CK(extclock_N_19), .Q(deLowCounter[3])) /* synthesis lse_init_val=0 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam deLowCounter_i3.GSR = "ENABLED";
    FD1S3AX deLowCounter_i2 (.D(n1009), .CK(extclock_N_19), .Q(deLowCounter[2])) /* synthesis lse_init_val=0 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam deLowCounter_i2.GSR = "ENABLED";
    FD1S3AX deLowCounter_i1 (.D(n1003), .CK(extclock_N_19), .Q(deLowCounter[1])) /* synthesis lse_init_val=0 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam deLowCounter_i1.GSR = "ENABLED";
    CCU2D add_171_3 (.A0(deLowCounter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(deLowCounter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1364), .COUT(n1365), .S0(clearX_N_77[1]), 
          .S1(clearX_N_77[2]));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(64[18:34])
    defparam add_171_3.INIT0 = 16'h5aaa;
    defparam add_171_3.INIT1 = 16'h5aaa;
    defparam add_171_3.INJECT1_0 = "NO";
    defparam add_171_3.INJECT1_1 = "NO";
    FD1P3IX yCounter_234__i4 (.D(n86_adj_236), .SP(dataEnable_c), .CD(n1019), 
            .CK(extclock_N_19), .Q(yCounter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234__i4.GSR = "ENABLED";
    FD1P3IX yCounter_234__i5 (.D(n85_adj_235), .SP(dataEnable_c), .CD(n1019), 
            .CK(extclock_N_19), .Q(yCounter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234__i5.GSR = "ENABLED";
    FD1P3IX yCounter_234__i6 (.D(n84_adj_234), .SP(dataEnable_c), .CD(n1019), 
            .CK(extclock_N_19), .Q(yCounter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234__i6.GSR = "ENABLED";
    FD1P3IX yCounter_234__i7 (.D(n83_adj_233), .SP(dataEnable_c), .CD(n1019), 
            .CK(extclock_N_19), .Q(yCounter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234__i7.GSR = "ENABLED";
    FD1P3IX yCounter_234__i8 (.D(n82_adj_232), .SP(dataEnable_c), .CD(n1019), 
            .CK(extclock_N_19), .Q(yCounter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234__i8.GSR = "ENABLED";
    FD1P3IX yCounter_234__i9 (.D(n81_adj_231), .SP(dataEnable_c), .CD(n1019), 
            .CK(extclock_N_19), .Q(yCounter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234__i9.GSR = "ENABLED";
    FD1P3IX yCounter_234__i10 (.D(n80_adj_230), .SP(dataEnable_c), .CD(n1019), 
            .CK(extclock_N_19), .Q(yCounter[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234__i10.GSR = "ENABLED";
    FD1P3IX yCounter_234__i11 (.D(n79_adj_229), .SP(dataEnable_c), .CD(n1019), 
            .CK(extclock_N_19), .Q(yCounter[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234__i11.GSR = "ENABLED";
    FD1P3IX yCounter_234__i12 (.D(n78_adj_228), .SP(dataEnable_c), .CD(n1019), 
            .CK(extclock_N_19), .Q(yCounter[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234__i12.GSR = "ENABLED";
    FD1P3IX yCounter_234__i13 (.D(n77_adj_227), .SP(dataEnable_c), .CD(n1019), 
            .CK(extclock_N_19), .Q(yCounter[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234__i13.GSR = "ENABLED";
    FD1P3IX yCounter_234__i14 (.D(n76_adj_226), .SP(dataEnable_c), .CD(n1019), 
            .CK(extclock_N_19), .Q(yCounter[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234__i14.GSR = "ENABLED";
    FD1P3IX yCounter_234__i15 (.D(n75_adj_225), .SP(dataEnable_c), .CD(n1019), 
            .CK(extclock_N_19), .Q(yCounter[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234__i15.GSR = "ENABLED";
    FD1P3IX yCounter_234__i0 (.D(n90_adj_240), .SP(dataEnable_c), .CD(n1019), 
            .CK(extclock_N_19), .Q(yCounter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234__i0.GSR = "ENABLED";
    FD1P3IX yCounter_234__i16 (.D(n74_adj_224), .SP(dataEnable_c), .CD(n1019), 
            .CK(extclock_N_19), .Q(yCounter[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234__i16.GSR = "ENABLED";
    FD1P3IX xCounter_235__i0 (.D(n90), .SP(extclock_N_19_enable_22), .CD(n1035), 
            .CK(extclock_N_19), .Q(xCounter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235__i0.GSR = "ENABLED";
    FD1P3AX leds_10__134 (.D(colorR_c), .SP(extclock_N_19_enable_16), .CK(extclock_N_19), 
            .Q(blue_c));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam leds_10__134.GSR = "ENABLED";
    LUT4 i6_2_lut (.A(yCounter[9]), .B(yCounter[13]), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(134[8:23])
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i8_4_lut (.A(yCounter[6]), .B(yCounter[12]), .C(yCounter[10]), 
         .D(yCounter[16]), .Z(n20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(134[8:23])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut_adj_54 (.A(yCounter[15]), .B(yCounter[7]), .Z(n14)) /* synthesis lut_function=(A+(B)) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(134[8:23])
    defparam i2_2_lut_adj_54.init = 16'heeee;
    OB led1_pad (.I(led2_c), .O(led1));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(7[14:18])
    OB led2_pad (.I(led2_c), .O(led2));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(7[20:24])
    OB led3_pad (.I(led2_c), .O(led3));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(7[26:30])
    OB led4_pad (.I(VCC_net), .O(led4));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(7[32:36])
    OB led5_pad (.I(VCC_net), .O(led5));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(7[38:42])
    OB led6_pad (.I(led6_c), .O(led6));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(7[44:48])
    OB led7_pad (.I(led6_c), .O(led7));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(7[50:54])
    OB red_pad (.I(blue_c), .O(red));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(9[8:11])
    OB green_pad (.I(blue_c), .O(green));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(9[13:18])
    OB blue_pad (.I(blue_c), .O(blue));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(9[20:24])
    IB stdby_in_pad (.I(stdby_in), .O(stdby_in_c));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(3[7:15])
    IB extclock_pad (.I(extclock), .O(extclock_c));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(3[17:25])
    IB dataEnable_pad (.I(dataEnable), .O(dataEnable_c));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(3[27:37])
    IB colorR_pad (.I(colorR), .O(colorR_c));   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(4[7:13])
    FD1P3IX xCounter_235__i11 (.D(n79), .SP(extclock_N_19_enable_22), .CD(n1035), 
            .CK(extclock_N_19), .Q(xCounter[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235__i11.GSR = "ENABLED";
    FD1P3IX xCounter_235__i12 (.D(n78), .SP(extclock_N_19_enable_22), .CD(n1035), 
            .CK(extclock_N_19), .Q(xCounter[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235__i12.GSR = "ENABLED";
    LUT4 leds_6__I_0_1_lut (.A(leds[4]), .Z(led2_c)) /* synthesis lut_function=(!(A)) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(185[15:30])
    defparam leds_6__I_0_1_lut.init = 16'h5555;
    FD1P3IX xCounter_235__i13 (.D(n77), .SP(extclock_N_19_enable_22), .CD(n1035), 
            .CK(extclock_N_19), .Q(xCounter[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235__i13.GSR = "ENABLED";
    FD1P3IX xCounter_235__i14 (.D(n76), .SP(extclock_N_19_enable_22), .CD(n1035), 
            .CK(extclock_N_19), .Q(xCounter[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235__i14.GSR = "ENABLED";
    FD1P3IX xCounter_235__i15 (.D(n75), .SP(extclock_N_19_enable_22), .CD(n1035), 
            .CK(extclock_N_19), .Q(xCounter[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235__i15.GSR = "ENABLED";
    FD1P3IX xCounter_235__i16 (.D(n74), .SP(extclock_N_19_enable_22), .CD(n1035), 
            .CK(extclock_N_19), .Q(xCounter[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(131[15:27])
    defparam xCounter_235__i16.GSR = "ENABLED";
    LUT4 i558_4_lut (.A(clearX_N_77[16]), .B(deLowCounter[16]), .C(dataEnable_c), 
         .D(n626), .Z(n999)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam i558_4_lut.init = 16'h0aca;
    LUT4 i548_4_lut (.A(clearX_N_77[15]), .B(deLowCounter[15]), .C(dataEnable_c), 
         .D(n626), .Z(n989)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(60[8] 172[4])
    defparam i548_4_lut.init = 16'h0aca;
    FD1P3IX yCounter_234__i1 (.D(n89_adj_239), .SP(dataEnable_c), .CD(n1019), 
            .CK(extclock_N_19), .Q(yCounter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(122[15:27])
    defparam yCounter_234__i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module pwr_cntrllr
//

module pwr_cntrllr (stdby_in_c, GND_net, stdby1_c) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input stdby_in_c;
    input GND_net;
    output stdby1_c;
    
    
    wire stby_flag;
    
    PCNTR PCNTR_Inst0 (.CLK(GND_net), .USERTIMEOUT(GND_net), .USERSTDBY(stdby_in_c), 
          .CLRFLAG(stby_flag), .CFGWAKE(GND_net), .CFGSTDBY(GND_net), 
          .STDBY(stdby1_c), .SFLAG(stby_flag)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=13, LSE_RCOL=42, LSE_LLINE=35, LSE_RLINE=36 */ ;   // d:/jaapvanderwulp/machx02/firsttry/impl1/source/default_standby_top.v(35[13] 36[42])
    defparam PCNTR_Inst0.STDBYOPT = "USER_CFG";
    defparam PCNTR_Inst0.TIMEOUT = "BYPASS";
    defparam PCNTR_Inst0.WAKEUP = "USER";
    defparam PCNTR_Inst0.POROFF = "FALSE";
    defparam PCNTR_Inst0.BGOFF = "FALSE";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

