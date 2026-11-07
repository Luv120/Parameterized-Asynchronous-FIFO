module fifo (rd_clk,
    rd_empty,
    rd_en,
    rd_rst,
    wr_clk,
    wr_en,
    wr_full,
    wr_rst,
    r_data,
    w_data);
 input rd_clk;
 output rd_empty;
 input rd_en;
 input rd_rst;
 input wr_clk;
 input wr_en;
 output wr_full;
 input wr_rst;
 output [5:0] r_data;
 input [5:0] w_data;

 wire _001_;
 wire _002_;
 wire _003_;
 wire _004_;
 wire _005_;
 wire _006_;
 wire _007_;
 wire _008_;
 wire _009_;
 wire _010_;
 wire _011_;
 wire _012_;
 wire _013_;
 wire _014_;
 wire _015_;
 wire _016_;
 wire _017_;
 wire _018_;
 wire _019_;
 wire _020_;
 wire _021_;
 wire _022_;
 wire _023_;
 wire _024_;
 wire _025_;
 wire _026_;
 wire _027_;
 wire _028_;
 wire _029_;
 wire _030_;
 wire _031_;
 wire _032_;
 wire _033_;
 wire _034_;
 wire _035_;
 wire _036_;
 wire _037_;
 wire _038_;
 wire _039_;
 wire _040_;
 wire _041_;
 wire _042_;
 wire _043_;
 wire _044_;
 wire _045_;
 wire _046_;
 wire _047_;
 wire _048_;
 wire _049_;
 wire _050_;
 wire _051_;
 wire _052_;
 wire _053_;
 wire _054_;
 wire _055_;
 wire _056_;
 wire _057_;
 wire _058_;
 wire _059_;
 wire _060_;
 wire _061_;
 wire _062_;
 wire _063_;
 wire _064_;
 wire _065_;
 wire _066_;
 wire _067_;
 wire _068_;
 wire _069_;
 wire _070_;
 wire _071_;
 wire _072_;
 wire _073_;
 wire _074_;
 wire _075_;
 wire _076_;
 wire _077_;
 wire _078_;
 wire _079_;
 wire _080_;
 wire _081_;
 wire _082_;
 wire _083_;
 wire _084_;
 wire _085_;
 wire _086_;
 wire _087_;
 wire _088_;
 wire _089_;
 wire _090_;
 wire _091_;
 wire _092_;
 wire _093_;
 wire _094_;
 wire _095_;
 wire _096_;
 wire _097_;
 wire _098_;
 wire _099_;
 wire _100_;
 wire _101_;
 wire _102_;
 wire _103_;
 wire _104_;
 wire _105_;
 wire _106_;
 wire _107_;
 wire _108_;
 wire _109_;
 wire _110_;
 wire _111_;
 wire _112_;
 wire _113_;
 wire _114_;
 wire _115_;
 wire _116_;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net18;
 wire net10;
 wire clknet_0_wr_clk;
 wire clknet_3_0__leaf_wr_clk;
 wire clknet_3_1__leaf_wr_clk;
 wire clknet_3_2__leaf_wr_clk;
 wire clknet_3_3__leaf_wr_clk;
 wire clknet_3_4__leaf_wr_clk;
 wire clknet_3_5__leaf_wr_clk;
 wire clknet_3_6__leaf_wr_clk;
 wire clknet_3_7__leaf_wr_clk;
 wire clknet_0_rd_clk;
 wire clknet_1_0__leaf_rd_clk;
 wire clknet_1_1__leaf_rd_clk;
 wire [5:0] _000_;
 wire [5:0] \mem[0] ;
 wire [5:0] \mem[1] ;
 wire [5:0] \mem[2] ;
 wire [5:0] \mem[3] ;
 wire [5:0] \mem[4] ;
 wire [5:0] \mem[5] ;
 wire [5:0] \mem[6] ;
 wire [5:0] \mem[7] ;
 wire [3:0] r_addr;
 wire [3:0] rgray_sync1;
 wire [3:0] rgray_sync2;
 wire [3:0] w_addr;
 wire [3:0] wgray_sync1;
 wire [3:0] wgray_sync2;

 sky130_fd_sc_hd__clkinv_1 _117_ (.A(net9),
    .Y(_034_));
 sky130_fd_sc_hd__clkinv_1 _118_ (.A(\mem[5] [4]),
    .Y(_035_));
 sky130_fd_sc_hd__clkinv_1 _119_ (.A(\mem[1] [2]),
    .Y(_036_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _120_ (.A(rgray_sync1[0]),
    .SLEEP(net10),
    .X(_001_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _121_ (.A(rgray_sync1[1]),
    .SLEEP(net10),
    .X(_002_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _122_ (.A(rgray_sync1[2]),
    .SLEEP(net10),
    .X(_003_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _123_ (.A(rgray_sync1[3]),
    .SLEEP(net10),
    .X(_004_));
 sky130_fd_sc_hd__xnor2_1 _124_ (.A(w_addr[1]),
    .B(w_addr[0]),
    .Y(_037_));
 sky130_fd_sc_hd__nor2_1 _125_ (.A(net2),
    .B(_037_),
    .Y(_005_));
 sky130_fd_sc_hd__xnor2_1 _126_ (.A(w_addr[2]),
    .B(w_addr[1]),
    .Y(_038_));
 sky130_fd_sc_hd__nor2_1 _127_ (.A(net2),
    .B(_038_),
    .Y(_006_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _128_ (.A(w_addr[3]),
    .SLEEP(net2),
    .X(_008_));
 sky130_fd_sc_hd__o21bai_1 _129_ (.A1(w_addr[3]),
    .A2(w_addr[2]),
    .B1_N(net2),
    .Y(_039_));
 sky130_fd_sc_hd__a21oi_1 _130_ (.A1(w_addr[3]),
    .A2(w_addr[2]),
    .B1(_039_),
    .Y(_007_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _131_ (.A(wgray_sync1[0]),
    .SLEEP(net2),
    .X(_009_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _132_ (.A(wgray_sync1[1]),
    .SLEEP(net2),
    .X(_010_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _133_ (.A(wgray_sync1[2]),
    .SLEEP(net2),
    .X(_011_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _134_ (.A(wgray_sync1[3]),
    .SLEEP(net2),
    .X(_012_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _135_ (.A(r_addr[1]),
    .SLEEP(r_addr[0]),
    .X(_040_));
 sky130_fd_sc_hd__xnor2_1 _136_ (.A(r_addr[1]),
    .B(r_addr[0]),
    .Y(_041_));
 sky130_fd_sc_hd__nor2_1 _137_ (.A(net10),
    .B(_041_),
    .Y(_013_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _138_ (.A(r_addr[2]),
    .SLEEP(r_addr[1]),
    .X(_042_));
 sky130_fd_sc_hd__xnor2_1 _139_ (.A(r_addr[2]),
    .B(r_addr[1]),
    .Y(_043_));
 sky130_fd_sc_hd__nor2_1 _140_ (.A(net10),
    .B(_043_),
    .Y(_014_));
 sky130_fd_sc_hd__xnor2_1 _141_ (.A(r_addr[3]),
    .B(r_addr[2]),
    .Y(_044_));
 sky130_fd_sc_hd__nor2_1 _142_ (.A(net10),
    .B(_044_),
    .Y(_015_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _143_ (.A(r_addr[3]),
    .SLEEP(net10),
    .X(_016_));
 sky130_fd_sc_hd__xor2_1 _144_ (.A(r_addr[3]),
    .B(wgray_sync2[3]),
    .X(_045_));
 sky130_fd_sc_hd__xor3_1 _145_ (.A(r_addr[1]),
    .B(r_addr[0]),
    .C(wgray_sync2[0]),
    .X(_046_));
 sky130_fd_sc_hd__xor3_1 _146_ (.A(r_addr[3]),
    .B(r_addr[2]),
    .C(wgray_sync2[2]),
    .X(_047_));
 sky130_fd_sc_hd__xor3_1 _147_ (.A(r_addr[2]),
    .B(r_addr[1]),
    .C(wgray_sync2[1]),
    .X(_048_));
 sky130_fd_sc_hd__nor4_1 _148_ (.A(_045_),
    .B(_046_),
    .C(_047_),
    .D(_048_),
    .Y(net17));
 sky130_fd_sc_hd__o41ai_1 _149_ (.A1(_045_),
    .A2(_046_),
    .A3(_047_),
    .A4(_048_),
    .B1(net1),
    .Y(_049_));
 sky130_fd_sc_hd__lpflow_isobufsrc_1 _150_ (.A(r_addr[0]),
    .SLEEP(_049_),
    .X(_050_));
 sky130_fd_sc_hd__nor2b_1 _151_ (.A(r_addr[0]),
    .B_N(_049_),
    .Y(_051_));
 sky130_fd_sc_hd__nor3_1 _152_ (.A(net2),
    .B(_050_),
    .C(_051_),
    .Y(_017_));
 sky130_fd_sc_hd__nor2_1 _153_ (.A(r_addr[1]),
    .B(_050_),
    .Y(_052_));
 sky130_fd_sc_hd__and2_0 _154_ (.A(r_addr[1]),
    .B(r_addr[0]),
    .X(_053_));
 sky130_fd_sc_hd__nor2b_1 _155_ (.A(_049_),
    .B_N(_053_),
    .Y(_054_));
 sky130_fd_sc_hd__nor3_1 _156_ (.A(net2),
    .B(_052_),
    .C(_054_),
    .Y(_018_));
 sky130_fd_sc_hd__nand2_1 _157_ (.A(r_addr[2]),
    .B(_054_),
    .Y(_055_));
 sky130_fd_sc_hd__o21bai_1 _158_ (.A1(r_addr[2]),
    .A2(_054_),
    .B1_N(net2),
    .Y(_056_));
 sky130_fd_sc_hd__a21oi_1 _159_ (.A1(r_addr[2]),
    .A2(_054_),
    .B1(_056_),
    .Y(_019_));
 sky130_fd_sc_hd__xor2_1 _160_ (.A(r_addr[3]),
    .B(_055_),
    .X(_057_));
 sky130_fd_sc_hd__nor2_1 _161_ (.A(net2),
    .B(_057_),
    .Y(_020_));
 sky130_fd_sc_hd__xor2_1 _162_ (.A(w_addr[1]),
    .B(rgray_sync2[0]),
    .X(_058_));
 sky130_fd_sc_hd__mux2i_1 _163_ (.A0(_038_),
    .A1(w_addr[2]),
    .S(w_addr[0]),
    .Y(_059_));
 sky130_fd_sc_hd__nand3_1 _164_ (.A(w_addr[2]),
    .B(w_addr[1]),
    .C(w_addr[0]),
    .Y(_060_));
 sky130_fd_sc_hd__xnor2_1 _165_ (.A(w_addr[3]),
    .B(_060_),
    .Y(_061_));
 sky130_fd_sc_hd__o21a_1 _166_ (.A1(rgray_sync2[3]),
    .A2(_061_),
    .B1(_058_),
    .X(_062_));
 sky130_fd_sc_hd__xnor2_1 _167_ (.A(rgray_sync2[1]),
    .B(_059_),
    .Y(_063_));
 sky130_fd_sc_hd__nand2_1 _168_ (.A(w_addr[1]),
    .B(w_addr[0]),
    .Y(_064_));
 sky130_fd_sc_hd__xor2_1 _169_ (.A(w_addr[2]),
    .B(_064_),
    .X(_065_));
 sky130_fd_sc_hd__xor3_1 _170_ (.A(w_addr[2]),
    .B(rgray_sync2[2]),
    .C(_064_),
    .X(_066_));
 sky130_fd_sc_hd__mux2i_1 _171_ (.A0(_061_),
    .A1(rgray_sync2[3]),
    .S(_066_),
    .Y(_067_));
 sky130_fd_sc_hd__and3_1 _172_ (.A(_062_),
    .B(_063_),
    .C(_067_),
    .X(net18));
 sky130_fd_sc_hd__a31oi_1 _173_ (.A1(_062_),
    .A2(_063_),
    .A3(_067_),
    .B1(_034_),
    .Y(_068_));
 sky130_fd_sc_hd__xnor2_1 _174_ (.A(w_addr[0]),
    .B(_068_),
    .Y(_069_));
 sky130_fd_sc_hd__nor2_1 _175_ (.A(net10),
    .B(_069_),
    .Y(_021_));
 sky130_fd_sc_hd__nor2_1 _176_ (.A(w_addr[1]),
    .B(_068_),
    .Y(_070_));
 sky130_fd_sc_hd__a211oi_1 _177_ (.A1(_037_),
    .A2(_068_),
    .B1(_070_),
    .C1(net10),
    .Y(_022_));
 sky130_fd_sc_hd__nor2_1 _178_ (.A(w_addr[2]),
    .B(_068_),
    .Y(_071_));
 sky130_fd_sc_hd__a211oi_1 _179_ (.A1(_065_),
    .A2(_068_),
    .B1(_071_),
    .C1(net10),
    .Y(_023_));
 sky130_fd_sc_hd__mux2i_1 _180_ (.A0(w_addr[3]),
    .A1(_061_),
    .S(_068_),
    .Y(_072_));
 sky130_fd_sc_hd__nor2_1 _181_ (.A(net10),
    .B(_072_),
    .Y(_024_));
 sky130_fd_sc_hd__nor2_1 _182_ (.A(net2),
    .B(_049_),
    .Y(_025_));
 sky130_fd_sc_hd__mux2i_1 _183_ (.A0(\mem[0] [0]),
    .A1(\mem[1] [0]),
    .S(r_addr[0]),
    .Y(_073_));
 sky130_fd_sc_hd__nor2_1 _184_ (.A(r_addr[1]),
    .B(_073_),
    .Y(_074_));
 sky130_fd_sc_hd__nand2_1 _185_ (.A(\mem[3] [0]),
    .B(_053_),
    .Y(_075_));
 sky130_fd_sc_hd__a21oi_1 _186_ (.A1(\mem[2] [0]),
    .A2(_040_),
    .B1(_074_),
    .Y(_076_));
 sky130_fd_sc_hd__a21oi_1 _187_ (.A1(_075_),
    .A2(_076_),
    .B1(r_addr[2]),
    .Y(_077_));
 sky130_fd_sc_hd__a22o_1 _188_ (.A1(\mem[6] [0]),
    .A2(_040_),
    .B1(_053_),
    .B2(\mem[7] [0]),
    .X(_078_));
 sky130_fd_sc_hd__mux2_1 _189_ (.A0(\mem[4] [0]),
    .A1(\mem[5] [0]),
    .S(r_addr[0]),
    .X(_079_));
 sky130_fd_sc_hd__a221o_1 _190_ (.A1(r_addr[2]),
    .A2(_078_),
    .B1(_079_),
    .B2(_042_),
    .C1(_077_),
    .X(_000_[0]));
 sky130_fd_sc_hd__mux2i_1 _191_ (.A0(\mem[0] [1]),
    .A1(\mem[1] [1]),
    .S(r_addr[0]),
    .Y(_080_));
 sky130_fd_sc_hd__nor2_1 _192_ (.A(r_addr[1]),
    .B(_080_),
    .Y(_081_));
 sky130_fd_sc_hd__nand2_1 _193_ (.A(\mem[3] [1]),
    .B(_053_),
    .Y(_082_));
 sky130_fd_sc_hd__a21oi_1 _194_ (.A1(\mem[2] [1]),
    .A2(_040_),
    .B1(_081_),
    .Y(_083_));
 sky130_fd_sc_hd__a21oi_1 _195_ (.A1(_082_),
    .A2(_083_),
    .B1(r_addr[2]),
    .Y(_084_));
 sky130_fd_sc_hd__a22o_1 _196_ (.A1(\mem[6] [1]),
    .A2(_040_),
    .B1(_053_),
    .B2(\mem[7] [1]),
    .X(_085_));
 sky130_fd_sc_hd__mux2_1 _197_ (.A0(\mem[4] [1]),
    .A1(\mem[5] [1]),
    .S(r_addr[0]),
    .X(_086_));
 sky130_fd_sc_hd__a221o_1 _198_ (.A1(r_addr[2]),
    .A2(_085_),
    .B1(_086_),
    .B2(_042_),
    .C1(_084_),
    .X(_000_[1]));
 sky130_fd_sc_hd__nor2_1 _199_ (.A(r_addr[0]),
    .B(\mem[0] [2]),
    .Y(_087_));
 sky130_fd_sc_hd__a211o_1 _200_ (.A1(r_addr[0]),
    .A2(_036_),
    .B1(_087_),
    .C1(r_addr[1]),
    .X(_088_));
 sky130_fd_sc_hd__a22oi_1 _201_ (.A1(\mem[2] [2]),
    .A2(_040_),
    .B1(_053_),
    .B2(\mem[3] [2]),
    .Y(_089_));
 sky130_fd_sc_hd__a21oi_1 _202_ (.A1(_088_),
    .A2(_089_),
    .B1(r_addr[2]),
    .Y(_090_));
 sky130_fd_sc_hd__a22o_1 _203_ (.A1(\mem[6] [2]),
    .A2(_040_),
    .B1(_053_),
    .B2(\mem[7] [2]),
    .X(_091_));
 sky130_fd_sc_hd__mux2_1 _204_ (.A0(\mem[4] [2]),
    .A1(\mem[5] [2]),
    .S(r_addr[0]),
    .X(_092_));
 sky130_fd_sc_hd__a221o_1 _205_ (.A1(r_addr[2]),
    .A2(_091_),
    .B1(_092_),
    .B2(_042_),
    .C1(_090_),
    .X(_000_[2]));
 sky130_fd_sc_hd__mux2i_1 _206_ (.A0(\mem[0] [3]),
    .A1(\mem[1] [3]),
    .S(r_addr[0]),
    .Y(_093_));
 sky130_fd_sc_hd__nor2_1 _207_ (.A(r_addr[1]),
    .B(_093_),
    .Y(_094_));
 sky130_fd_sc_hd__nand2_1 _208_ (.A(\mem[3] [3]),
    .B(_053_),
    .Y(_095_));
 sky130_fd_sc_hd__a21oi_1 _209_ (.A1(\mem[2] [3]),
    .A2(_040_),
    .B1(_094_),
    .Y(_096_));
 sky130_fd_sc_hd__a21oi_1 _210_ (.A1(_095_),
    .A2(_096_),
    .B1(r_addr[2]),
    .Y(_097_));
 sky130_fd_sc_hd__a22o_1 _211_ (.A1(\mem[6] [3]),
    .A2(_040_),
    .B1(_053_),
    .B2(\mem[7] [3]),
    .X(_098_));
 sky130_fd_sc_hd__mux2_1 _212_ (.A0(\mem[4] [3]),
    .A1(\mem[5] [3]),
    .S(r_addr[0]),
    .X(_099_));
 sky130_fd_sc_hd__a221o_1 _213_ (.A1(r_addr[2]),
    .A2(_098_),
    .B1(_099_),
    .B2(_042_),
    .C1(_097_),
    .X(_000_[3]));
 sky130_fd_sc_hd__mux2i_1 _214_ (.A0(\mem[0] [4]),
    .A1(\mem[1] [4]),
    .S(r_addr[0]),
    .Y(_100_));
 sky130_fd_sc_hd__nor2_1 _215_ (.A(r_addr[1]),
    .B(_100_),
    .Y(_101_));
 sky130_fd_sc_hd__a221oi_1 _216_ (.A1(\mem[2] [4]),
    .A2(_040_),
    .B1(_053_),
    .B2(\mem[3] [4]),
    .C1(_101_),
    .Y(_102_));
 sky130_fd_sc_hd__a22o_1 _217_ (.A1(\mem[6] [4]),
    .A2(_040_),
    .B1(_053_),
    .B2(\mem[7] [4]),
    .X(_103_));
 sky130_fd_sc_hd__o21ai_0 _218_ (.A1(r_addr[0]),
    .A2(\mem[4] [4]),
    .B1(_042_),
    .Y(_104_));
 sky130_fd_sc_hd__a21oi_1 _219_ (.A1(r_addr[0]),
    .A2(_035_),
    .B1(_104_),
    .Y(_105_));
 sky130_fd_sc_hd__a21oi_1 _220_ (.A1(r_addr[2]),
    .A2(_103_),
    .B1(_105_),
    .Y(_106_));
 sky130_fd_sc_hd__o21ai_0 _221_ (.A1(r_addr[2]),
    .A2(_102_),
    .B1(_106_),
    .Y(_000_[4]));
 sky130_fd_sc_hd__mux2i_1 _222_ (.A0(\mem[0] [5]),
    .A1(\mem[1] [5]),
    .S(r_addr[0]),
    .Y(_107_));
 sky130_fd_sc_hd__nor2_1 _223_ (.A(r_addr[1]),
    .B(_107_),
    .Y(_108_));
 sky130_fd_sc_hd__nand2_1 _224_ (.A(\mem[3] [5]),
    .B(_053_),
    .Y(_109_));
 sky130_fd_sc_hd__a21oi_1 _225_ (.A1(\mem[2] [5]),
    .A2(_040_),
    .B1(_108_),
    .Y(_110_));
 sky130_fd_sc_hd__a21oi_1 _226_ (.A1(_109_),
    .A2(_110_),
    .B1(r_addr[2]),
    .Y(_111_));
 sky130_fd_sc_hd__a22o_1 _227_ (.A1(\mem[6] [5]),
    .A2(_040_),
    .B1(_053_),
    .B2(\mem[7] [5]),
    .X(_112_));
 sky130_fd_sc_hd__mux2_1 _228_ (.A0(\mem[4] [5]),
    .A1(\mem[5] [5]),
    .S(r_addr[0]),
    .X(_113_));
 sky130_fd_sc_hd__a221o_1 _229_ (.A1(r_addr[2]),
    .A2(_112_),
    .B1(_113_),
    .B2(_042_),
    .C1(_111_),
    .X(_000_[5]));
 sky130_fd_sc_hd__nand2b_1 _230_ (.A_N(net10),
    .B(_068_),
    .Y(_114_));
 sky130_fd_sc_hd__nor4b_1 _231_ (.A(w_addr[2]),
    .B(_114_),
    .C(w_addr[1]),
    .D_N(w_addr[0]),
    .Y(_027_));
 sky130_fd_sc_hd__or4_1 _232_ (.A(w_addr[0]),
    .B(net10),
    .C(_034_),
    .D(net18),
    .X(_115_));
 sky130_fd_sc_hd__nor3_1 _233_ (.A(w_addr[2]),
    .B(w_addr[1]),
    .C(_115_),
    .Y(_026_));
 sky130_fd_sc_hd__nor3b_1 _234_ (.A(_115_),
    .B(w_addr[2]),
    .C_N(w_addr[1]),
    .Y(_028_));
 sky130_fd_sc_hd__nor3_1 _235_ (.A(w_addr[2]),
    .B(_064_),
    .C(_114_),
    .Y(_029_));
 sky130_fd_sc_hd__nor3b_1 _236_ (.A(w_addr[1]),
    .B(_115_),
    .C_N(w_addr[2]),
    .Y(_030_));
 sky130_fd_sc_hd__nand3b_1 _237_ (.A_N(net10),
    .B(_068_),
    .C(w_addr[2]),
    .Y(_116_));
 sky130_fd_sc_hd__nor3b_1 _238_ (.A(_116_),
    .B(w_addr[1]),
    .C_N(w_addr[0]),
    .Y(_031_));
 sky130_fd_sc_hd__nor3b_1 _239_ (.A(w_addr[0]),
    .B(_116_),
    .C_N(w_addr[1]),
    .Y(_032_));
 sky130_fd_sc_hd__nor2_1 _240_ (.A(_060_),
    .B(_114_),
    .Y(_033_));
 sky130_fd_sc_hd__edfxtp_1 _241_ (.D(net3),
    .DE(_026_),
    .Q(\mem[0] [0]),
    .CLK(clknet_3_4__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _242_ (.D(net4),
    .DE(_026_),
    .Q(\mem[0] [1]),
    .CLK(clknet_3_1__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _243_ (.D(net5),
    .DE(_026_),
    .Q(\mem[0] [2]),
    .CLK(clknet_3_1__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _244_ (.D(net6),
    .DE(_026_),
    .Q(\mem[0] [3]),
    .CLK(clknet_3_1__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _245_ (.D(net7),
    .DE(_026_),
    .Q(\mem[0] [4]),
    .CLK(clknet_3_1__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _246_ (.D(net8),
    .DE(_026_),
    .Q(\mem[0] [5]),
    .CLK(clknet_3_1__leaf_wr_clk));
 sky130_fd_sc_hd__dfxtp_1 _247_ (.D(_001_),
    .Q(rgray_sync2[0]),
    .CLK(clknet_3_5__leaf_wr_clk));
 sky130_fd_sc_hd__dfxtp_1 _248_ (.D(_002_),
    .Q(rgray_sync2[1]),
    .CLK(clknet_3_5__leaf_wr_clk));
 sky130_fd_sc_hd__dfxtp_1 _249_ (.D(_003_),
    .Q(rgray_sync2[2]),
    .CLK(clknet_3_7__leaf_wr_clk));
 sky130_fd_sc_hd__dfxtp_1 _250_ (.D(_004_),
    .Q(rgray_sync2[3]),
    .CLK(clknet_3_5__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _251_ (.D(net3),
    .DE(_029_),
    .Q(\mem[3] [0]),
    .CLK(clknet_3_0__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _252_ (.D(net4),
    .DE(_029_),
    .Q(\mem[3] [1]),
    .CLK(clknet_3_0__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _253_ (.D(net5),
    .DE(_029_),
    .Q(\mem[3] [2]),
    .CLK(clknet_3_1__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _254_ (.D(net6),
    .DE(_029_),
    .Q(\mem[3] [3]),
    .CLK(clknet_3_0__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _255_ (.D(net7),
    .DE(_029_),
    .Q(\mem[3] [4]),
    .CLK(clknet_3_1__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _256_ (.D(net8),
    .DE(_029_),
    .Q(\mem[3] [5]),
    .CLK(clknet_3_0__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _257_ (.D(net3),
    .DE(_027_),
    .Q(\mem[1] [0]),
    .CLK(clknet_3_4__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _258_ (.D(net4),
    .DE(_027_),
    .Q(\mem[1] [1]),
    .CLK(clknet_3_4__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _259_ (.D(net5),
    .DE(_027_),
    .Q(\mem[1] [2]),
    .CLK(clknet_3_4__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _260_ (.D(net6),
    .DE(_027_),
    .Q(\mem[1] [3]),
    .CLK(clknet_3_4__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _261_ (.D(net7),
    .DE(_027_),
    .Q(\mem[1] [4]),
    .CLK(clknet_3_4__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _262_ (.D(net8),
    .DE(_027_),
    .Q(\mem[1] [5]),
    .CLK(clknet_3_4__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _263_ (.D(_000_[0]),
    .DE(_025_),
    .Q(net11),
    .CLK(clknet_1_0__leaf_rd_clk));
 sky130_fd_sc_hd__edfxtp_1 _264_ (.D(_000_[1]),
    .DE(_025_),
    .Q(net12),
    .CLK(clknet_1_0__leaf_rd_clk));
 sky130_fd_sc_hd__edfxtp_1 _265_ (.D(_000_[2]),
    .DE(_025_),
    .Q(net13),
    .CLK(clknet_1_0__leaf_rd_clk));
 sky130_fd_sc_hd__edfxtp_1 _266_ (.D(_000_[3]),
    .DE(_025_),
    .Q(net14),
    .CLK(clknet_1_0__leaf_rd_clk));
 sky130_fd_sc_hd__edfxtp_1 _267_ (.D(_000_[4]),
    .DE(_025_),
    .Q(net15),
    .CLK(clknet_1_0__leaf_rd_clk));
 sky130_fd_sc_hd__edfxtp_1 _268_ (.D(_000_[5]),
    .DE(_025_),
    .Q(net16),
    .CLK(clknet_1_0__leaf_rd_clk));
 sky130_fd_sc_hd__edfxtp_1 _269_ (.D(net3),
    .DE(_028_),
    .Q(\mem[2] [0]),
    .CLK(clknet_3_1__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _270_ (.D(net4),
    .DE(_028_),
    .Q(\mem[2] [1]),
    .CLK(clknet_3_0__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _271_ (.D(net5),
    .DE(_028_),
    .Q(\mem[2] [2]),
    .CLK(clknet_3_1__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _272_ (.D(net6),
    .DE(_028_),
    .Q(\mem[2] [3]),
    .CLK(clknet_3_0__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _273_ (.D(net7),
    .DE(_028_),
    .Q(\mem[2] [4]),
    .CLK(clknet_3_1__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _274_ (.D(net8),
    .DE(_028_),
    .Q(\mem[2] [5]),
    .CLK(clknet_3_0__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _275_ (.D(net3),
    .DE(_032_),
    .Q(\mem[6] [0]),
    .CLK(clknet_3_2__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _276_ (.D(net4),
    .DE(_032_),
    .Q(\mem[6] [1]),
    .CLK(clknet_3_2__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _277_ (.D(net5),
    .DE(_032_),
    .Q(\mem[6] [2]),
    .CLK(clknet_3_3__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _278_ (.D(net6),
    .DE(_032_),
    .Q(\mem[6] [3]),
    .CLK(clknet_3_2__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _279_ (.D(net7),
    .DE(_032_),
    .Q(\mem[6] [4]),
    .CLK(clknet_3_3__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _280_ (.D(net8),
    .DE(_032_),
    .Q(\mem[6] [5]),
    .CLK(clknet_3_2__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _281_ (.D(net3),
    .DE(_031_),
    .Q(\mem[5] [0]),
    .CLK(clknet_3_3__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _282_ (.D(net4),
    .DE(_031_),
    .Q(\mem[5] [1]),
    .CLK(clknet_3_6__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _283_ (.D(net5),
    .DE(_031_),
    .Q(\mem[5] [2]),
    .CLK(clknet_3_3__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _284_ (.D(net6),
    .DE(_031_),
    .Q(\mem[5] [3]),
    .CLK(clknet_3_3__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _285_ (.D(net7),
    .DE(_031_),
    .Q(\mem[5] [4]),
    .CLK(clknet_3_3__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _286_ (.D(net8),
    .DE(_031_),
    .Q(\mem[5] [5]),
    .CLK(clknet_3_3__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _287_ (.D(net3),
    .DE(_030_),
    .Q(\mem[4] [0]),
    .CLK(clknet_3_6__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _288_ (.D(net4),
    .DE(_030_),
    .Q(\mem[4] [1]),
    .CLK(clknet_3_6__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _289_ (.D(net5),
    .DE(_030_),
    .Q(\mem[4] [2]),
    .CLK(clknet_3_6__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _290_ (.D(net6),
    .DE(_030_),
    .Q(\mem[4] [3]),
    .CLK(clknet_3_6__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _291_ (.D(net7),
    .DE(_030_),
    .Q(\mem[4] [4]),
    .CLK(clknet_3_6__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _292_ (.D(net8),
    .DE(_030_),
    .Q(\mem[4] [5]),
    .CLK(clknet_3_6__leaf_wr_clk));
 sky130_fd_sc_hd__dfxtp_1 _293_ (.D(_005_),
    .Q(wgray_sync1[0]),
    .CLK(clknet_1_1__leaf_rd_clk));
 sky130_fd_sc_hd__dfxtp_1 _294_ (.D(_006_),
    .Q(wgray_sync1[1]),
    .CLK(clknet_1_1__leaf_rd_clk));
 sky130_fd_sc_hd__dfxtp_1 _295_ (.D(_007_),
    .Q(wgray_sync1[2]),
    .CLK(clknet_1_1__leaf_rd_clk));
 sky130_fd_sc_hd__dfxtp_1 _296_ (.D(_008_),
    .Q(wgray_sync1[3]),
    .CLK(clknet_1_1__leaf_rd_clk));
 sky130_fd_sc_hd__dfxtp_1 _297_ (.D(_009_),
    .Q(wgray_sync2[0]),
    .CLK(clknet_1_1__leaf_rd_clk));
 sky130_fd_sc_hd__dfxtp_1 _298_ (.D(_010_),
    .Q(wgray_sync2[1]),
    .CLK(clknet_1_1__leaf_rd_clk));
 sky130_fd_sc_hd__dfxtp_1 _299_ (.D(_011_),
    .Q(wgray_sync2[2]),
    .CLK(clknet_1_1__leaf_rd_clk));
 sky130_fd_sc_hd__dfxtp_1 _300_ (.D(_012_),
    .Q(wgray_sync2[3]),
    .CLK(clknet_1_1__leaf_rd_clk));
 sky130_fd_sc_hd__dfxtp_1 _301_ (.D(_013_),
    .Q(rgray_sync1[0]),
    .CLK(clknet_3_4__leaf_wr_clk));
 sky130_fd_sc_hd__dfxtp_1 _302_ (.D(_014_),
    .Q(rgray_sync1[1]),
    .CLK(clknet_3_5__leaf_wr_clk));
 sky130_fd_sc_hd__dfxtp_1 _303_ (.D(_015_),
    .Q(rgray_sync1[2]),
    .CLK(clknet_3_7__leaf_wr_clk));
 sky130_fd_sc_hd__dfxtp_1 _304_ (.D(_016_),
    .Q(rgray_sync1[3]),
    .CLK(clknet_3_5__leaf_wr_clk));
 sky130_fd_sc_hd__dfxtp_1 _305_ (.D(_017_),
    .Q(r_addr[0]),
    .CLK(clknet_1_0__leaf_rd_clk));
 sky130_fd_sc_hd__dfxtp_1 _306_ (.D(_018_),
    .Q(r_addr[1]),
    .CLK(clknet_1_0__leaf_rd_clk));
 sky130_fd_sc_hd__dfxtp_1 _307_ (.D(_019_),
    .Q(r_addr[2]),
    .CLK(clknet_1_1__leaf_rd_clk));
 sky130_fd_sc_hd__dfxtp_1 _308_ (.D(_020_),
    .Q(r_addr[3]),
    .CLK(clknet_1_1__leaf_rd_clk));
 sky130_fd_sc_hd__dfxtp_1 _309_ (.D(_021_),
    .Q(w_addr[0]),
    .CLK(clknet_3_7__leaf_wr_clk));
 sky130_fd_sc_hd__dfxtp_1 _310_ (.D(_022_),
    .Q(w_addr[1]),
    .CLK(clknet_3_7__leaf_wr_clk));
 sky130_fd_sc_hd__dfxtp_1 _311_ (.D(_023_),
    .Q(w_addr[2]),
    .CLK(clknet_3_6__leaf_wr_clk));
 sky130_fd_sc_hd__dfxtp_1 _312_ (.D(_024_),
    .Q(w_addr[3]),
    .CLK(clknet_3_7__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _313_ (.D(net3),
    .DE(_033_),
    .Q(\mem[7] [0]),
    .CLK(clknet_3_2__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _314_ (.D(net4),
    .DE(_033_),
    .Q(\mem[7] [1]),
    .CLK(clknet_3_2__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _315_ (.D(net5),
    .DE(_033_),
    .Q(\mem[7] [2]),
    .CLK(clknet_3_3__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _316_ (.D(net6),
    .DE(_033_),
    .Q(\mem[7] [3]),
    .CLK(clknet_3_2__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _317_ (.D(net7),
    .DE(_033_),
    .Q(\mem[7] [4]),
    .CLK(clknet_3_3__leaf_wr_clk));
 sky130_fd_sc_hd__edfxtp_1 _318_ (.D(net8),
    .DE(_033_),
    .Q(\mem[7] [5]),
    .CLK(clknet_3_2__leaf_wr_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_0_rd_clk (.A(rd_clk),
    .X(clknet_0_rd_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_0_wr_clk (.A(wr_clk),
    .X(clknet_0_wr_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_1_0__f_rd_clk (.A(clknet_0_rd_clk),
    .X(clknet_1_0__leaf_rd_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_1_1__f_rd_clk (.A(clknet_0_rd_clk),
    .X(clknet_1_1__leaf_rd_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_3_0__f_wr_clk (.A(clknet_0_wr_clk),
    .X(clknet_3_0__leaf_wr_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_3_1__f_wr_clk (.A(clknet_0_wr_clk),
    .X(clknet_3_1__leaf_wr_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_3_2__f_wr_clk (.A(clknet_0_wr_clk),
    .X(clknet_3_2__leaf_wr_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_3_3__f_wr_clk (.A(clknet_0_wr_clk),
    .X(clknet_3_3__leaf_wr_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_3_4__f_wr_clk (.A(clknet_0_wr_clk),
    .X(clknet_3_4__leaf_wr_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_3_5__f_wr_clk (.A(clknet_0_wr_clk),
    .X(clknet_3_5__leaf_wr_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_3_6__f_wr_clk (.A(clknet_0_wr_clk),
    .X(clknet_3_6__leaf_wr_clk));
 sky130_fd_sc_hd__clkbuf_8 clkbuf_3_7__f_wr_clk (.A(clknet_0_wr_clk),
    .X(clknet_3_7__leaf_wr_clk));
 sky130_fd_sc_hd__clkinv_2 clkload0 (.A(clknet_3_0__leaf_wr_clk));
 sky130_fd_sc_hd__clkinv_1 clkload1 (.A(clknet_3_2__leaf_wr_clk));
 sky130_fd_sc_hd__clkbuf_1 clkload2 (.A(clknet_3_3__leaf_wr_clk));
 sky130_fd_sc_hd__clkinv_1 clkload3 (.A(clknet_3_4__leaf_wr_clk));
 sky130_fd_sc_hd__clkinvlp_4 clkload4 (.A(clknet_3_5__leaf_wr_clk));
 sky130_fd_sc_hd__clkinv_1 clkload5 (.A(clknet_3_6__leaf_wr_clk));
 sky130_fd_sc_hd__clkinvlp_4 clkload6 (.A(clknet_3_7__leaf_wr_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload7 (.A(clknet_1_0__leaf_rd_clk));
 sky130_fd_sc_hd__buf_1 input1 (.A(rd_en),
    .X(net1));
 sky130_fd_sc_hd__buf_1 input10 (.A(wr_rst),
    .X(net10));
 sky130_fd_sc_hd__buf_1 input2 (.A(rd_rst),
    .X(net2));
 sky130_fd_sc_hd__buf_1 input3 (.A(w_data[0]),
    .X(net3));
 sky130_fd_sc_hd__buf_1 input4 (.A(w_data[1]),
    .X(net4));
 sky130_fd_sc_hd__buf_1 input5 (.A(w_data[2]),
    .X(net5));
 sky130_fd_sc_hd__buf_1 input6 (.A(w_data[3]),
    .X(net6));
 sky130_fd_sc_hd__buf_1 input7 (.A(w_data[4]),
    .X(net7));
 sky130_fd_sc_hd__buf_1 input8 (.A(w_data[5]),
    .X(net8));
 sky130_fd_sc_hd__buf_1 input9 (.A(wr_en),
    .X(net9));
 sky130_fd_sc_hd__buf_1 output11 (.A(net11),
    .X(r_data[0]));
 sky130_fd_sc_hd__buf_1 output12 (.A(net12),
    .X(r_data[1]));
 sky130_fd_sc_hd__buf_1 output13 (.A(net13),
    .X(r_data[2]));
 sky130_fd_sc_hd__buf_1 output14 (.A(net14),
    .X(r_data[3]));
 sky130_fd_sc_hd__buf_1 output15 (.A(net15),
    .X(r_data[4]));
 sky130_fd_sc_hd__buf_1 output16 (.A(net16),
    .X(r_data[5]));
 sky130_fd_sc_hd__buf_1 output17 (.A(net17),
    .X(rd_empty));
 sky130_fd_sc_hd__buf_1 output18 (.A(net18),
    .X(wr_full));
endmodule
