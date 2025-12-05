module tiny_soc (clk,
    rst_n,
    uart_rx,
    uart_tx,
    gpio);
 input clk;
 input rst_n;
 input uart_rx;
 output uart_tx;
 output [3:0] gpio;

 wire _000_;
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
 wire _117_;
 wire _118_;
 wire _119_;
 wire _120_;
 wire _121_;
 wire _122_;
 wire _123_;
 wire _124_;
 wire _125_;
 wire _126_;
 wire _127_;
 wire _128_;
 wire _129_;
 wire _130_;
 wire _131_;
 wire _132_;
 wire _133_;
 wire _134_;
 wire _135_;
 wire _136_;
 wire _137_;
 wire _138_;
 wire _139_;
 wire _140_;
 wire _141_;
 wire _142_;
 wire _143_;
 wire _144_;
 wire _145_;
 wire _146_;
 wire _147_;
 wire _148_;
 wire _149_;
 wire _150_;
 wire _151_;
 wire _152_;
 wire _153_;
 wire _154_;
 wire _155_;
 wire _156_;
 wire _157_;
 wire _158_;
 wire _159_;
 wire _160_;
 wire _161_;
 wire _162_;
 wire _163_;
 wire _164_;
 wire _165_;
 wire _166_;
 wire _167_;
 wire _168_;
 wire _169_;
 wire _170_;
 wire _171_;
 wire _172_;
 wire _173_;
 wire _174_;
 wire \cpu_acc[0] ;
 wire \cpu_acc[1] ;
 wire \cpu_acc[2] ;
 wire \cpu_acc[3] ;
 wire \cpu_acc[4] ;
 wire \cpu_acc[5] ;
 wire \cpu_acc[6] ;
 wire \cpu_acc[7] ;
 wire \cpu_pc[0] ;
 wire \cpu_pc[1] ;
 wire \cpu_pc[2] ;
 wire \cpu_pc[3] ;
 wire \cpu_pc[4] ;
 wire \cpu_pc[5] ;
 wire \cpu_pc[6] ;
 wire \cpu_pc[7] ;
 wire \u_cpu.pc_next[0] ;
 wire \u_cpu.pc_next[1] ;
 wire \u_cpu.pc_next[2] ;
 wire \u_cpu.pc_next[3] ;
 wire \u_cpu.pc_next[4] ;
 wire \u_cpu.pc_next[5] ;
 wire \u_cpu.pc_next[6] ;
 wire \u_cpu.pc_next[7] ;
 wire \u_cpu.state[0] ;
 wire \u_cpu.state[1] ;
 wire \u_uart.tx_busy ;
 wire \u_uart.tx_data[0] ;
 wire \u_uart.tx_data[1] ;
 wire \u_uart.tx_data[2] ;
 wire \u_uart.tx_data[3] ;
 wire \u_uart.tx_data[4] ;
 wire \u_uart.tx_data[5] ;
 wire \u_uart.tx_data[6] ;
 wire \u_uart.tx_data[7] ;
 wire \u_uart.tx_start ;
 wire \u_uart.u_tx.bit_cnt[0] ;
 wire \u_uart.u_tx.bit_cnt[1] ;
 wire \u_uart.u_tx.bit_cnt[2] ;
 wire \u_uart.u_tx.clk_cnt[0] ;
 wire \u_uart.u_tx.clk_cnt[10] ;
 wire \u_uart.u_tx.clk_cnt[11] ;
 wire \u_uart.u_tx.clk_cnt[12] ;
 wire \u_uart.u_tx.clk_cnt[13] ;
 wire \u_uart.u_tx.clk_cnt[14] ;
 wire \u_uart.u_tx.clk_cnt[15] ;
 wire \u_uart.u_tx.clk_cnt[1] ;
 wire \u_uart.u_tx.clk_cnt[2] ;
 wire \u_uart.u_tx.clk_cnt[3] ;
 wire \u_uart.u_tx.clk_cnt[4] ;
 wire \u_uart.u_tx.clk_cnt[5] ;
 wire \u_uart.u_tx.clk_cnt[6] ;
 wire \u_uart.u_tx.clk_cnt[7] ;
 wire \u_uart.u_tx.clk_cnt[8] ;
 wire \u_uart.u_tx.clk_cnt[9] ;
 wire \u_uart.u_tx.shifter[0] ;
 wire \u_uart.u_tx.shifter[1] ;
 wire \u_uart.u_tx.shifter[2] ;
 wire \u_uart.u_tx.shifter[3] ;
 wire \u_uart.u_tx.shifter[4] ;
 wire \u_uart.u_tx.shifter[5] ;
 wire \u_uart.u_tx.shifter[6] ;
 wire \u_uart.u_tx.shifter[7] ;
 wire \u_uart.u_tx.state[0] ;
 wire \u_uart.u_tx.state[1] ;
 wire \u_uart.u_tx.tx_next ;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire net11;
 wire net12;
 wire net13;
 wire net14;
 wire net15;
 wire net16;
 wire net17;
 wire net18;
 wire clknet_0_clk;
 wire clknet_3_0__leaf_clk;
 wire clknet_3_1__leaf_clk;
 wire clknet_3_2__leaf_clk;
 wire clknet_3_3__leaf_clk;
 wire clknet_3_4__leaf_clk;
 wire clknet_3_5__leaf_clk;
 wire clknet_3_6__leaf_clk;
 wire clknet_3_7__leaf_clk;
 wire net19;
 wire net20;
 wire net21;
 wire net22;
 wire net23;
 wire net24;
 wire net25;
 wire net26;
 wire net27;
 wire net28;
 wire net29;
 wire net30;
 wire net31;
 wire net32;
 wire net33;
 wire net34;
 wire net35;
 wire net36;
 wire net37;
 wire net38;
 wire net39;
 wire net40;
 wire net41;
 wire net42;
 wire net43;
 wire net44;
 wire net45;
 wire net46;
 wire net47;
 wire net48;
 wire net49;
 wire net50;
 wire net51;
 wire net52;
 wire net53;
 wire net54;
 wire net55;
 wire net56;
 wire net57;
 wire net58;
 wire net59;
 wire net60;
 wire net61;
 wire net62;
 wire net63;

 sky130_fd_sc_hd__inv_2 _175_ (.A(\u_cpu.state[1] ),
    .Y(_054_));
 sky130_fd_sc_hd__inv_2 _176_ (.A(\cpu_pc[0] ),
    .Y(_055_));
 sky130_fd_sc_hd__inv_2 _177_ (.A(\u_uart.u_tx.state[0] ),
    .Y(_056_));
 sky130_fd_sc_hd__inv_2 _178_ (.A(\u_uart.tx_busy ),
    .Y(_057_));
 sky130_fd_sc_hd__inv_2 _179_ (.A(\cpu_acc[0] ),
    .Y(_058_));
 sky130_fd_sc_hd__or4_2 _180_ (.A(\cpu_pc[5] ),
    .B(\cpu_pc[4] ),
    .C(\cpu_pc[7] ),
    .D(\cpu_pc[6] ),
    .X(_059_));
 sky130_fd_sc_hd__or4b_1 _181_ (.A(\cpu_pc[1] ),
    .B(\cpu_pc[0] ),
    .C(\cpu_pc[3] ),
    .D_N(\cpu_pc[2] ),
    .X(_060_));
 sky130_fd_sc_hd__nor2_1 _182_ (.A(_059_),
    .B(_060_),
    .Y(_061_));
 sky130_fd_sc_hd__nand2_1 _183_ (.A(\u_cpu.state[0] ),
    .B(_061_),
    .Y(_062_));
 sky130_fd_sc_hd__nor2_1 _184_ (.A(net30),
    .B(_062_),
    .Y(_048_));
 sky130_fd_sc_hd__and2_2 _185_ (.A(_057_),
    .B(_048_),
    .X(_000_));
 sky130_fd_sc_hd__or2_1 _186_ (.A(\cpu_pc[2] ),
    .B(\cpu_pc[3] ),
    .X(_063_));
 sky130_fd_sc_hd__or2_2 _187_ (.A(_059_),
    .B(_063_),
    .X(_064_));
 sky130_fd_sc_hd__or3b_1 _188_ (.A(\u_cpu.state[1] ),
    .B(_064_),
    .C_N(\u_cpu.state[0] ),
    .X(_065_));
 sky130_fd_sc_hd__or4_1 _189_ (.A(\cpu_acc[4] ),
    .B(\cpu_acc[5] ),
    .C(\cpu_acc[6] ),
    .D(\cpu_acc[7] ),
    .X(_066_));
 sky130_fd_sc_hd__and2_1 _190_ (.A(\cpu_pc[1] ),
    .B(\cpu_pc[0] ),
    .X(_067_));
 sky130_fd_sc_hd__inv_2 _191_ (.A(_067_),
    .Y(_068_));
 sky130_fd_sc_hd__or4_1 _192_ (.A(\cpu_acc[1] ),
    .B(\cpu_acc[0] ),
    .C(\cpu_acc[2] ),
    .D(\cpu_acc[3] ),
    .X(_069_));
 sky130_fd_sc_hd__or4_1 _193_ (.A(_065_),
    .B(_066_),
    .C(_068_),
    .D(_069_),
    .X(_070_));
 sky130_fd_sc_hd__nand2_1 _194_ (.A(net43),
    .B(_070_),
    .Y(\u_cpu.pc_next[0] ));
 sky130_fd_sc_hd__and2_1 _195_ (.A(\cpu_pc[1] ),
    .B(_055_),
    .X(_071_));
 sky130_fd_sc_hd__nor2_1 _196_ (.A(\cpu_pc[1] ),
    .B(_055_),
    .Y(_072_));
 sky130_fd_sc_hd__nor2_1 _197_ (.A(_071_),
    .B(_072_),
    .Y(_073_));
 sky130_fd_sc_hd__nand2_1 _198_ (.A(_070_),
    .B(_073_),
    .Y(\u_cpu.pc_next[1] ));
 sky130_fd_sc_hd__and3_1 _199_ (.A(\cpu_pc[1] ),
    .B(\cpu_pc[0] ),
    .C(\cpu_pc[2] ),
    .X(_074_));
 sky130_fd_sc_hd__o21ai_1 _200_ (.A1(net58),
    .A2(_067_),
    .B1(_070_),
    .Y(_075_));
 sky130_fd_sc_hd__nor2_1 _201_ (.A(_074_),
    .B(_075_),
    .Y(\u_cpu.pc_next[2] ));
 sky130_fd_sc_hd__and2_1 _202_ (.A(\cpu_pc[3] ),
    .B(_074_),
    .X(_076_));
 sky130_fd_sc_hd__nor2_1 _203_ (.A(net49),
    .B(_074_),
    .Y(_077_));
 sky130_fd_sc_hd__nor2_1 _204_ (.A(_076_),
    .B(_077_),
    .Y(\u_cpu.pc_next[3] ));
 sky130_fd_sc_hd__xor2_1 _205_ (.A(net47),
    .B(_076_),
    .X(\u_cpu.pc_next[4] ));
 sky130_fd_sc_hd__and3_1 _206_ (.A(\cpu_pc[5] ),
    .B(\cpu_pc[4] ),
    .C(_076_),
    .X(_078_));
 sky130_fd_sc_hd__a21oi_1 _207_ (.A1(net62),
    .A2(_076_),
    .B1(net42),
    .Y(_079_));
 sky130_fd_sc_hd__nor2_1 _208_ (.A(_078_),
    .B(_079_),
    .Y(\u_cpu.pc_next[5] ));
 sky130_fd_sc_hd__nand2_1 _209_ (.A(\cpu_pc[6] ),
    .B(_078_),
    .Y(_080_));
 sky130_fd_sc_hd__or2_1 _210_ (.A(\cpu_pc[6] ),
    .B(_078_),
    .X(_081_));
 sky130_fd_sc_hd__and2_1 _211_ (.A(_080_),
    .B(_081_),
    .X(\u_cpu.pc_next[6] ));
 sky130_fd_sc_hd__xnor2_1 _212_ (.A(net20),
    .B(_080_),
    .Y(\u_cpu.pc_next[7] ));
 sky130_fd_sc_hd__nor2_1 _213_ (.A(\u_uart.u_tx.state[1] ),
    .B(\u_uart.u_tx.state[0] ),
    .Y(_082_));
 sky130_fd_sc_hd__or2_2 _214_ (.A(\u_uart.u_tx.state[1] ),
    .B(\u_uart.u_tx.state[0] ),
    .X(_083_));
 sky130_fd_sc_hd__nor2_1 _215_ (.A(net48),
    .B(net10),
    .Y(_001_));
 sky130_fd_sc_hd__a21oi_1 _216_ (.A1(\u_uart.u_tx.clk_cnt[1] ),
    .A2(\u_uart.u_tx.clk_cnt[0] ),
    .B1(net10),
    .Y(_084_));
 sky130_fd_sc_hd__o21a_1 _217_ (.A1(net61),
    .A2(net48),
    .B1(_084_),
    .X(_008_));
 sky130_fd_sc_hd__a21oi_1 _218_ (.A1(\u_uart.u_tx.clk_cnt[1] ),
    .A2(\u_uart.u_tx.clk_cnt[0] ),
    .B1(\u_uart.u_tx.clk_cnt[2] ),
    .Y(_085_));
 sky130_fd_sc_hd__a31o_1 _219_ (.A1(\u_uart.u_tx.clk_cnt[1] ),
    .A2(\u_uart.u_tx.clk_cnt[0] ),
    .A3(\u_uart.u_tx.clk_cnt[2] ),
    .B1(net10),
    .X(_086_));
 sky130_fd_sc_hd__nor2_1 _220_ (.A(_085_),
    .B(_086_),
    .Y(_009_));
 sky130_fd_sc_hd__a31o_1 _221_ (.A1(\u_uart.u_tx.clk_cnt[1] ),
    .A2(\u_uart.u_tx.clk_cnt[0] ),
    .A3(\u_uart.u_tx.clk_cnt[2] ),
    .B1(\u_uart.u_tx.clk_cnt[3] ),
    .X(_087_));
 sky130_fd_sc_hd__and4_1 _222_ (.A(\u_uart.u_tx.clk_cnt[1] ),
    .B(\u_uart.u_tx.clk_cnt[0] ),
    .C(\u_uart.u_tx.clk_cnt[3] ),
    .D(\u_uart.u_tx.clk_cnt[2] ),
    .X(_088_));
 sky130_fd_sc_hd__nand4_1 _223_ (.A(\u_uart.u_tx.clk_cnt[1] ),
    .B(\u_uart.u_tx.clk_cnt[0] ),
    .C(\u_uart.u_tx.clk_cnt[3] ),
    .D(\u_uart.u_tx.clk_cnt[2] ),
    .Y(_089_));
 sky130_fd_sc_hd__and3_1 _224_ (.A(_083_),
    .B(_087_),
    .C(_089_),
    .X(_010_));
 sky130_fd_sc_hd__or4_1 _225_ (.A(\u_uart.u_tx.clk_cnt[13] ),
    .B(\u_uart.u_tx.clk_cnt[12] ),
    .C(\u_uart.u_tx.clk_cnt[15] ),
    .D(\u_uart.u_tx.clk_cnt[14] ),
    .X(_090_));
 sky130_fd_sc_hd__or4_1 _226_ (.A(\u_uart.u_tx.clk_cnt[9] ),
    .B(\u_uart.u_tx.clk_cnt[8] ),
    .C(\u_uart.u_tx.clk_cnt[11] ),
    .D(\u_uart.u_tx.clk_cnt[10] ),
    .X(_091_));
 sky130_fd_sc_hd__or4_1 _227_ (.A(\u_uart.u_tx.clk_cnt[5] ),
    .B(\u_uart.u_tx.clk_cnt[4] ),
    .C(\u_uart.u_tx.clk_cnt[7] ),
    .D(\u_uart.u_tx.clk_cnt[6] ),
    .X(_092_));
 sky130_fd_sc_hd__or4_4 _228_ (.A(_089_),
    .B(_090_),
    .C(_091_),
    .D(_092_),
    .X(_093_));
 sky130_fd_sc_hd__and2_1 _229_ (.A(\u_uart.u_tx.clk_cnt[4] ),
    .B(_088_),
    .X(_094_));
 sky130_fd_sc_hd__nor2_1 _230_ (.A(_082_),
    .B(_094_),
    .Y(_095_));
 sky130_fd_sc_hd__o211a_1 _231_ (.A1(\u_uart.u_tx.clk_cnt[4] ),
    .A2(_088_),
    .B1(_093_),
    .C1(_095_),
    .X(_011_));
 sky130_fd_sc_hd__and3_1 _232_ (.A(\u_uart.u_tx.clk_cnt[5] ),
    .B(\u_uart.u_tx.clk_cnt[4] ),
    .C(_088_),
    .X(_096_));
 sky130_fd_sc_hd__o21ai_1 _233_ (.A1(net54),
    .A2(_094_),
    .B1(_083_),
    .Y(_097_));
 sky130_fd_sc_hd__nor2_1 _234_ (.A(_096_),
    .B(_097_),
    .Y(_012_));
 sky130_fd_sc_hd__and4_1 _235_ (.A(\u_uart.u_tx.clk_cnt[5] ),
    .B(\u_uart.u_tx.clk_cnt[4] ),
    .C(\u_uart.u_tx.clk_cnt[6] ),
    .D(_088_),
    .X(_098_));
 sky130_fd_sc_hd__o21ai_1 _236_ (.A1(net50),
    .A2(_096_),
    .B1(_083_),
    .Y(_099_));
 sky130_fd_sc_hd__nor2_1 _237_ (.A(_098_),
    .B(_099_),
    .Y(_013_));
 sky130_fd_sc_hd__a21oi_1 _238_ (.A1(\u_uart.u_tx.clk_cnt[7] ),
    .A2(_098_),
    .B1(net10),
    .Y(_100_));
 sky130_fd_sc_hd__o21a_1 _239_ (.A1(\u_uart.u_tx.clk_cnt[7] ),
    .A2(_098_),
    .B1(_100_),
    .X(_014_));
 sky130_fd_sc_hd__a21oi_1 _240_ (.A1(\u_uart.u_tx.clk_cnt[7] ),
    .A2(_098_),
    .B1(\u_uart.u_tx.clk_cnt[8] ),
    .Y(_101_));
 sky130_fd_sc_hd__and3_1 _241_ (.A(\u_uart.u_tx.clk_cnt[7] ),
    .B(\u_uart.u_tx.clk_cnt[8] ),
    .C(_098_),
    .X(_102_));
 sky130_fd_sc_hd__nor3_1 _242_ (.A(net10),
    .B(_101_),
    .C(_102_),
    .Y(_015_));
 sky130_fd_sc_hd__and4_1 _243_ (.A(\u_uart.u_tx.clk_cnt[7] ),
    .B(\u_uart.u_tx.clk_cnt[9] ),
    .C(\u_uart.u_tx.clk_cnt[8] ),
    .D(_098_),
    .X(_103_));
 sky130_fd_sc_hd__o21ai_1 _244_ (.A1(net53),
    .A2(_102_),
    .B1(_083_),
    .Y(_104_));
 sky130_fd_sc_hd__nor2_1 _245_ (.A(_103_),
    .B(_104_),
    .Y(_016_));
 sky130_fd_sc_hd__a21oi_1 _246_ (.A1(\u_uart.u_tx.clk_cnt[10] ),
    .A2(_103_),
    .B1(net10),
    .Y(_105_));
 sky130_fd_sc_hd__o21a_1 _247_ (.A1(net55),
    .A2(_103_),
    .B1(_105_),
    .X(_002_));
 sky130_fd_sc_hd__a21oi_1 _248_ (.A1(\u_uart.u_tx.clk_cnt[10] ),
    .A2(_103_),
    .B1(\u_uart.u_tx.clk_cnt[11] ),
    .Y(_106_));
 sky130_fd_sc_hd__and3_1 _249_ (.A(\u_uart.u_tx.clk_cnt[11] ),
    .B(\u_uart.u_tx.clk_cnt[10] ),
    .C(_103_),
    .X(_107_));
 sky130_fd_sc_hd__nor3_1 _250_ (.A(net10),
    .B(_106_),
    .C(_107_),
    .Y(_003_));
 sky130_fd_sc_hd__and2_1 _251_ (.A(\u_uart.u_tx.clk_cnt[12] ),
    .B(_107_),
    .X(_108_));
 sky130_fd_sc_hd__o21ai_1 _252_ (.A1(net52),
    .A2(_107_),
    .B1(_083_),
    .Y(_109_));
 sky130_fd_sc_hd__nor2_1 _253_ (.A(_108_),
    .B(_109_),
    .Y(_004_));
 sky130_fd_sc_hd__a21oi_1 _254_ (.A1(\u_uart.u_tx.clk_cnt[13] ),
    .A2(_108_),
    .B1(net10),
    .Y(_110_));
 sky130_fd_sc_hd__o21a_1 _255_ (.A1(net56),
    .A2(_108_),
    .B1(_110_),
    .X(_005_));
 sky130_fd_sc_hd__a21oi_1 _256_ (.A1(\u_uart.u_tx.clk_cnt[13] ),
    .A2(_108_),
    .B1(net60),
    .Y(_111_));
 sky130_fd_sc_hd__and3_1 _257_ (.A(\u_uart.u_tx.clk_cnt[13] ),
    .B(\u_uart.u_tx.clk_cnt[14] ),
    .C(_108_),
    .X(_112_));
 sky130_fd_sc_hd__nor3_1 _258_ (.A(net10),
    .B(_111_),
    .C(_112_),
    .Y(_006_));
 sky130_fd_sc_hd__o21ai_1 _259_ (.A1(net19),
    .A2(_112_),
    .B1(_083_),
    .Y(_113_));
 sky130_fd_sc_hd__a21oi_1 _260_ (.A1(net19),
    .A2(_112_),
    .B1(_113_),
    .Y(_007_));
 sky130_fd_sc_hd__or2_1 _261_ (.A(\u_uart.u_tx.state[1] ),
    .B(_056_),
    .X(_114_));
 sky130_fd_sc_hd__nand2_1 _262_ (.A(\u_uart.u_tx.state[1] ),
    .B(_056_),
    .Y(_115_));
 sky130_fd_sc_hd__o21a_1 _263_ (.A1(net24),
    .A2(_115_),
    .B1(_114_),
    .X(\u_uart.u_tx.tx_next ));
 sky130_fd_sc_hd__or2_4 _264_ (.A(_065_),
    .B(_067_),
    .X(_116_));
 sky130_fd_sc_hd__inv_2 _265_ (.A(_116_),
    .Y(_117_));
 sky130_fd_sc_hd__o221a_1 _266_ (.A1(\u_cpu.state[0] ),
    .A2(_054_),
    .B1(_058_),
    .B2(_073_),
    .C1(_117_),
    .X(_118_));
 sky130_fd_sc_hd__a21o_1 _267_ (.A1(\cpu_acc[0] ),
    .A2(_116_),
    .B1(_118_),
    .X(_017_));
 sky130_fd_sc_hd__o31a_1 _268_ (.A1(\cpu_pc[1] ),
    .A2(_059_),
    .A3(_063_),
    .B1(\cpu_acc[1] ),
    .X(_119_));
 sky130_fd_sc_hd__o21ai_1 _269_ (.A1(\cpu_pc[1] ),
    .A2(_064_),
    .B1(\cpu_acc[1] ),
    .Y(_120_));
 sky130_fd_sc_hd__or4_1 _270_ (.A(\cpu_pc[1] ),
    .B(\cpu_acc[1] ),
    .C(_059_),
    .D(_063_),
    .X(_121_));
 sky130_fd_sc_hd__or3_1 _271_ (.A(\cpu_acc[0] ),
    .B(_059_),
    .C(_063_),
    .X(_122_));
 sky130_fd_sc_hd__a21oi_1 _272_ (.A1(_120_),
    .A2(_121_),
    .B1(\cpu_acc[0] ),
    .Y(_123_));
 sky130_fd_sc_hd__nor2_1 _273_ (.A(_065_),
    .B(_073_),
    .Y(_124_));
 sky130_fd_sc_hd__a311o_1 _274_ (.A1(_120_),
    .A2(_121_),
    .A3(_122_),
    .B1(_073_),
    .C1(_065_),
    .X(_125_));
 sky130_fd_sc_hd__nor3_1 _275_ (.A(_064_),
    .B(_073_),
    .C(_116_),
    .Y(_126_));
 sky130_fd_sc_hd__a2bb2o_1 _276_ (.A1_N(_123_),
    .A2_N(_125_),
    .B1(\cpu_acc[1] ),
    .B2(_116_),
    .X(_018_));
 sky130_fd_sc_hd__o21a_1 _277_ (.A1(_055_),
    .A2(_064_),
    .B1(\cpu_acc[2] ),
    .X(_127_));
 sky130_fd_sc_hd__nor3_1 _278_ (.A(_055_),
    .B(\cpu_acc[2] ),
    .C(_064_),
    .Y(_128_));
 sky130_fd_sc_hd__nor2_1 _279_ (.A(_127_),
    .B(_128_),
    .Y(_129_));
 sky130_fd_sc_hd__a21oi_1 _280_ (.A1(_121_),
    .A2(_122_),
    .B1(_119_),
    .Y(_130_));
 sky130_fd_sc_hd__xor2_1 _281_ (.A(_129_),
    .B(_130_),
    .X(_131_));
 sky130_fd_sc_hd__o2bb2a_1 _282_ (.A1_N(_124_),
    .A2_N(_131_),
    .B1(\cpu_acc[2] ),
    .B2(_117_),
    .X(_019_));
 sky130_fd_sc_hd__o21ba_1 _283_ (.A1(_128_),
    .A2(_130_),
    .B1_N(_127_),
    .X(_132_));
 sky130_fd_sc_hd__o21ba_4 _284_ (.A1(_064_),
    .A2(_071_),
    .B1_N(_061_),
    .X(_133_));
 sky130_fd_sc_hd__nand2_1 _285_ (.A(\cpu_acc[3] ),
    .B(_133_),
    .Y(_134_));
 sky130_fd_sc_hd__nor2_1 _286_ (.A(\cpu_acc[3] ),
    .B(_133_),
    .Y(_135_));
 sky130_fd_sc_hd__inv_2 _287_ (.A(_135_),
    .Y(_136_));
 sky130_fd_sc_hd__nand2_1 _288_ (.A(_134_),
    .B(_136_),
    .Y(_137_));
 sky130_fd_sc_hd__nand2_1 _289_ (.A(_132_),
    .B(_137_),
    .Y(_138_));
 sky130_fd_sc_hd__or2_1 _290_ (.A(_132_),
    .B(_137_),
    .X(_139_));
 sky130_fd_sc_hd__a32o_1 _291_ (.A1(_124_),
    .A2(_138_),
    .A3(_139_),
    .B1(_116_),
    .B2(net57),
    .X(_020_));
 sky130_fd_sc_hd__nor2_1 _292_ (.A(\cpu_acc[4] ),
    .B(_133_),
    .Y(_140_));
 sky130_fd_sc_hd__nand2_1 _293_ (.A(\cpu_acc[4] ),
    .B(_133_),
    .Y(_141_));
 sky130_fd_sc_hd__xnor2_1 _294_ (.A(\cpu_acc[4] ),
    .B(_133_),
    .Y(_142_));
 sky130_fd_sc_hd__a21o_1 _295_ (.A1(_132_),
    .A2(_134_),
    .B1(_135_),
    .X(_143_));
 sky130_fd_sc_hd__xor2_1 _296_ (.A(_142_),
    .B(_143_),
    .X(_144_));
 sky130_fd_sc_hd__a22o_1 _297_ (.A1(\cpu_acc[4] ),
    .A2(_116_),
    .B1(net7),
    .B2(_144_),
    .X(_021_));
 sky130_fd_sc_hd__nand2_1 _298_ (.A(\cpu_acc[5] ),
    .B(_133_),
    .Y(_145_));
 sky130_fd_sc_hd__xnor2_1 _299_ (.A(\cpu_acc[5] ),
    .B(_133_),
    .Y(_146_));
 sky130_fd_sc_hd__o21ai_1 _300_ (.A1(_140_),
    .A2(_143_),
    .B1(_141_),
    .Y(_147_));
 sky130_fd_sc_hd__xnor2_1 _301_ (.A(_146_),
    .B(_147_),
    .Y(_148_));
 sky130_fd_sc_hd__a22o_1 _302_ (.A1(\cpu_acc[5] ),
    .A2(_116_),
    .B1(net7),
    .B2(_148_),
    .X(_022_));
 sky130_fd_sc_hd__a2111o_1 _303_ (.A1(_132_),
    .A2(_134_),
    .B1(_135_),
    .C1(_142_),
    .D1(_146_),
    .X(_149_));
 sky130_fd_sc_hd__and3_1 _304_ (.A(_141_),
    .B(_145_),
    .C(_149_),
    .X(_150_));
 sky130_fd_sc_hd__nor2_1 _305_ (.A(\cpu_acc[6] ),
    .B(_133_),
    .Y(_151_));
 sky130_fd_sc_hd__nand2_1 _306_ (.A(\cpu_acc[6] ),
    .B(_133_),
    .Y(_152_));
 sky130_fd_sc_hd__and2b_1 _307_ (.A_N(_151_),
    .B(_152_),
    .X(_153_));
 sky130_fd_sc_hd__xnor2_1 _308_ (.A(_150_),
    .B(_153_),
    .Y(_154_));
 sky130_fd_sc_hd__a22o_1 _309_ (.A1(\cpu_acc[6] ),
    .A2(_116_),
    .B1(_124_),
    .B2(_154_),
    .X(_023_));
 sky130_fd_sc_hd__a41o_1 _310_ (.A1(_141_),
    .A2(_145_),
    .A3(_149_),
    .A4(_152_),
    .B1(_151_),
    .X(_155_));
 sky130_fd_sc_hd__xor2_1 _311_ (.A(\cpu_acc[7] ),
    .B(_133_),
    .X(_156_));
 sky130_fd_sc_hd__xnor2_1 _312_ (.A(_155_),
    .B(_156_),
    .Y(_157_));
 sky130_fd_sc_hd__a22o_1 _313_ (.A1(net38),
    .A2(_116_),
    .B1(net7),
    .B2(_157_),
    .X(_024_));
 sky130_fd_sc_hd__and3_1 _314_ (.A(\u_uart.tx_start ),
    .B(_057_),
    .C(net10),
    .X(_158_));
 sky130_fd_sc_hd__nor2_1 _315_ (.A(_093_),
    .B(_115_),
    .Y(_159_));
 sky130_fd_sc_hd__nor2_2 _316_ (.A(net9),
    .B(net8),
    .Y(_160_));
 sky130_fd_sc_hd__or2_1 _317_ (.A(net9),
    .B(net8),
    .X(_161_));
 sky130_fd_sc_hd__mux2_1 _318_ (.A0(\u_uart.u_tx.shifter[0] ),
    .A1(\u_uart.u_tx.shifter[1] ),
    .S(net8),
    .X(_162_));
 sky130_fd_sc_hd__mux2_1 _319_ (.A0(_162_),
    .A1(net36),
    .S(net9),
    .X(_025_));
 sky130_fd_sc_hd__a22o_1 _320_ (.A1(\u_uart.tx_data[1] ),
    .A2(_158_),
    .B1(_159_),
    .B2(net21),
    .X(_163_));
 sky130_fd_sc_hd__a21o_1 _321_ (.A1(net25),
    .A2(_160_),
    .B1(_163_),
    .X(_026_));
 sky130_fd_sc_hd__a22o_1 _322_ (.A1(\u_uart.tx_data[2] ),
    .A2(_158_),
    .B1(net8),
    .B2(net63),
    .X(_164_));
 sky130_fd_sc_hd__a21o_1 _323_ (.A1(net21),
    .A2(_160_),
    .B1(_164_),
    .X(_027_));
 sky130_fd_sc_hd__a22o_1 _324_ (.A1(\u_uart.tx_data[3] ),
    .A2(net9),
    .B1(net8),
    .B2(\u_uart.u_tx.shifter[4] ),
    .X(_165_));
 sky130_fd_sc_hd__a21o_1 _325_ (.A1(net34),
    .A2(_160_),
    .B1(_165_),
    .X(_028_));
 sky130_fd_sc_hd__a22o_1 _326_ (.A1(\u_uart.tx_data[4] ),
    .A2(net9),
    .B1(net8),
    .B2(net22),
    .X(_166_));
 sky130_fd_sc_hd__a21o_1 _327_ (.A1(net28),
    .A2(_160_),
    .B1(_166_),
    .X(_029_));
 sky130_fd_sc_hd__a22o_1 _328_ (.A1(\u_uart.tx_data[5] ),
    .A2(net9),
    .B1(net8),
    .B2(\u_uart.u_tx.shifter[6] ),
    .X(_167_));
 sky130_fd_sc_hd__a21o_1 _329_ (.A1(net22),
    .A2(_160_),
    .B1(_167_),
    .X(_030_));
 sky130_fd_sc_hd__a22o_1 _330_ (.A1(\u_uart.tx_data[6] ),
    .A2(net9),
    .B1(net8),
    .B2(\u_uart.u_tx.shifter[7] ),
    .X(_168_));
 sky130_fd_sc_hd__a21o_1 _331_ (.A1(net26),
    .A2(_160_),
    .B1(_168_),
    .X(_031_));
 sky130_fd_sc_hd__a22o_1 _332_ (.A1(net32),
    .A2(net9),
    .B1(_160_),
    .B2(\u_uart.u_tx.shifter[7] ),
    .X(_032_));
 sky130_fd_sc_hd__mux2_1 _333_ (.A0(net8),
    .A1(_160_),
    .S(\u_uart.u_tx.bit_cnt[0] ),
    .X(_033_));
 sky130_fd_sc_hd__a21oi_1 _334_ (.A1(\u_uart.u_tx.bit_cnt[0] ),
    .A2(_161_),
    .B1(net59),
    .Y(_169_));
 sky130_fd_sc_hd__a31o_1 _335_ (.A1(\u_uart.u_tx.bit_cnt[1] ),
    .A2(\u_uart.u_tx.bit_cnt[0] ),
    .A3(net8),
    .B1(_158_),
    .X(_170_));
 sky130_fd_sc_hd__nor2_1 _336_ (.A(_169_),
    .B(_170_),
    .Y(_034_));
 sky130_fd_sc_hd__a31o_1 _337_ (.A1(\u_uart.u_tx.bit_cnt[1] ),
    .A2(\u_uart.u_tx.bit_cnt[0] ),
    .A3(_161_),
    .B1(\u_uart.u_tx.bit_cnt[2] ),
    .X(_171_));
 sky130_fd_sc_hd__nand3_1 _338_ (.A(\u_uart.u_tx.bit_cnt[1] ),
    .B(\u_uart.u_tx.bit_cnt[0] ),
    .C(\u_uart.u_tx.bit_cnt[2] ),
    .Y(_172_));
 sky130_fd_sc_hd__nor2_1 _339_ (.A(_093_),
    .B(_172_),
    .Y(_173_));
 sky130_fd_sc_hd__or3_1 _340_ (.A(_093_),
    .B(_115_),
    .C(_172_),
    .X(_174_));
 sky130_fd_sc_hd__and3b_1 _341_ (.A_N(net9),
    .B(_171_),
    .C(_174_),
    .X(_035_));
 sky130_fd_sc_hd__nand2_1 _342_ (.A(\u_uart.u_tx.state[0] ),
    .B(_093_),
    .Y(_049_));
 sky130_fd_sc_hd__a31o_1 _343_ (.A1(_114_),
    .A2(_115_),
    .A3(_049_),
    .B1(_057_),
    .X(_050_));
 sky130_fd_sc_hd__nand2b_1 _344_ (.A_N(net9),
    .B(_050_),
    .Y(_036_));
 sky130_fd_sc_hd__a21o_1 _345_ (.A1(\u_uart.tx_start ),
    .A2(_057_),
    .B1(_083_),
    .X(_051_));
 sky130_fd_sc_hd__or2_1 _346_ (.A(_056_),
    .B(_093_),
    .X(_052_));
 sky130_fd_sc_hd__o211a_1 _347_ (.A1(_115_),
    .A2(_173_),
    .B1(_051_),
    .C1(_052_),
    .X(_037_));
 sky130_fd_sc_hd__nand2_1 _348_ (.A(net51),
    .B(_052_),
    .Y(_053_));
 sky130_fd_sc_hd__o21ai_1 _349_ (.A1(_093_),
    .A2(_114_),
    .B1(_053_),
    .Y(_038_));
 sky130_fd_sc_hd__mux2_1 _350_ (.A0(net36),
    .A1(\cpu_acc[0] ),
    .S(_000_),
    .X(_039_));
 sky130_fd_sc_hd__mux2_1 _351_ (.A0(net46),
    .A1(\cpu_acc[1] ),
    .S(_000_),
    .X(_040_));
 sky130_fd_sc_hd__mux2_1 _352_ (.A0(net45),
    .A1(\cpu_acc[2] ),
    .S(_000_),
    .X(_041_));
 sky130_fd_sc_hd__mux2_1 _353_ (.A0(net44),
    .A1(\cpu_acc[3] ),
    .S(_000_),
    .X(_042_));
 sky130_fd_sc_hd__mux2_1 _354_ (.A0(net40),
    .A1(\cpu_acc[4] ),
    .S(_000_),
    .X(_043_));
 sky130_fd_sc_hd__mux2_1 _355_ (.A0(net37),
    .A1(\cpu_acc[5] ),
    .S(_000_),
    .X(_044_));
 sky130_fd_sc_hd__mux2_1 _356_ (.A0(net41),
    .A1(\cpu_acc[6] ),
    .S(_000_),
    .X(_045_));
 sky130_fd_sc_hd__mux2_1 _357_ (.A0(net32),
    .A1(\cpu_acc[7] ),
    .S(_000_),
    .X(_046_));
 sky130_fd_sc_hd__and2_1 _358_ (.A(_054_),
    .B(_062_),
    .X(_047_));
 sky130_fd_sc_hd__dfrtp_1 _359_ (.CLK(clknet_3_1__leaf_clk),
    .D(\u_cpu.pc_next[0] ),
    .RESET_B(net11),
    .Q(\cpu_pc[0] ));
 sky130_fd_sc_hd__dfrtp_2 _360_ (.CLK(clknet_3_1__leaf_clk),
    .D(\u_cpu.pc_next[1] ),
    .RESET_B(net14),
    .Q(\cpu_pc[1] ));
 sky130_fd_sc_hd__dfrtp_1 _361_ (.CLK(clknet_3_1__leaf_clk),
    .D(\u_cpu.pc_next[2] ),
    .RESET_B(net11),
    .Q(\cpu_pc[2] ));
 sky130_fd_sc_hd__dfrtp_1 _362_ (.CLK(clknet_3_1__leaf_clk),
    .D(\u_cpu.pc_next[3] ),
    .RESET_B(net11),
    .Q(\cpu_pc[3] ));
 sky130_fd_sc_hd__dfrtp_1 _363_ (.CLK(clknet_3_0__leaf_clk),
    .D(\u_cpu.pc_next[4] ),
    .RESET_B(net11),
    .Q(\cpu_pc[4] ));
 sky130_fd_sc_hd__dfrtp_1 _364_ (.CLK(clknet_3_0__leaf_clk),
    .D(\u_cpu.pc_next[5] ),
    .RESET_B(net11),
    .Q(\cpu_pc[5] ));
 sky130_fd_sc_hd__dfrtp_1 _365_ (.CLK(clknet_3_0__leaf_clk),
    .D(\u_cpu.pc_next[6] ),
    .RESET_B(net11),
    .Q(\cpu_pc[6] ));
 sky130_fd_sc_hd__dfrtp_1 _366_ (.CLK(clknet_3_0__leaf_clk),
    .D(\u_cpu.pc_next[7] ),
    .RESET_B(net11),
    .Q(\cpu_pc[7] ));
 sky130_fd_sc_hd__dfrtp_4 _367_ (.CLK(clknet_3_4__leaf_clk),
    .D(_017_),
    .RESET_B(net15),
    .Q(\cpu_acc[0] ));
 sky130_fd_sc_hd__dfrtp_2 _368_ (.CLK(clknet_3_1__leaf_clk),
    .D(_018_),
    .RESET_B(net14),
    .Q(\cpu_acc[1] ));
 sky130_fd_sc_hd__dfrtp_1 _369_ (.CLK(clknet_3_4__leaf_clk),
    .D(_019_),
    .RESET_B(net15),
    .Q(\cpu_acc[2] ));
 sky130_fd_sc_hd__dfrtp_2 _370_ (.CLK(clknet_3_4__leaf_clk),
    .D(_020_),
    .RESET_B(net15),
    .Q(\cpu_acc[3] ));
 sky130_fd_sc_hd__dfrtp_2 _371_ (.CLK(clknet_3_5__leaf_clk),
    .D(_021_),
    .RESET_B(net15),
    .Q(\cpu_acc[4] ));
 sky130_fd_sc_hd__dfrtp_2 _372_ (.CLK(clknet_3_5__leaf_clk),
    .D(_022_),
    .RESET_B(net15),
    .Q(\cpu_acc[5] ));
 sky130_fd_sc_hd__dfrtp_1 _373_ (.CLK(clknet_3_4__leaf_clk),
    .D(_023_),
    .RESET_B(net15),
    .Q(\cpu_acc[6] ));
 sky130_fd_sc_hd__dfrtp_1 _374_ (.CLK(clknet_3_4__leaf_clk),
    .D(_024_),
    .RESET_B(net15),
    .Q(\cpu_acc[7] ));
 sky130_fd_sc_hd__dfrtp_1 _375_ (.CLK(clknet_3_6__leaf_clk),
    .D(_025_),
    .RESET_B(net16),
    .Q(\u_uart.u_tx.shifter[0] ));
 sky130_fd_sc_hd__dfrtp_1 _376_ (.CLK(clknet_3_7__leaf_clk),
    .D(_026_),
    .RESET_B(net16),
    .Q(\u_uart.u_tx.shifter[1] ));
 sky130_fd_sc_hd__dfrtp_1 _377_ (.CLK(clknet_3_7__leaf_clk),
    .D(_027_),
    .RESET_B(net16),
    .Q(\u_uart.u_tx.shifter[2] ));
 sky130_fd_sc_hd__dfrtp_1 _378_ (.CLK(clknet_3_7__leaf_clk),
    .D(net35),
    .RESET_B(net16),
    .Q(\u_uart.u_tx.shifter[3] ));
 sky130_fd_sc_hd__dfrtp_1 _379_ (.CLK(clknet_3_7__leaf_clk),
    .D(net29),
    .RESET_B(net17),
    .Q(\u_uart.u_tx.shifter[4] ));
 sky130_fd_sc_hd__dfrtp_1 _380_ (.CLK(clknet_3_7__leaf_clk),
    .D(net23),
    .RESET_B(net17),
    .Q(\u_uart.u_tx.shifter[5] ));
 sky130_fd_sc_hd__dfrtp_1 _381_ (.CLK(clknet_3_7__leaf_clk),
    .D(net27),
    .RESET_B(net17),
    .Q(\u_uart.u_tx.shifter[6] ));
 sky130_fd_sc_hd__dfrtp_1 _382_ (.CLK(clknet_3_6__leaf_clk),
    .D(net33),
    .RESET_B(net16),
    .Q(\u_uart.u_tx.shifter[7] ));
 sky130_fd_sc_hd__dfrtp_1 _383_ (.CLK(clknet_3_7__leaf_clk),
    .D(_033_),
    .RESET_B(net17),
    .Q(\u_uart.u_tx.bit_cnt[0] ));
 sky130_fd_sc_hd__dfrtp_1 _384_ (.CLK(clknet_3_7__leaf_clk),
    .D(_034_),
    .RESET_B(net17),
    .Q(\u_uart.u_tx.bit_cnt[1] ));
 sky130_fd_sc_hd__dfrtp_1 _385_ (.CLK(clknet_3_7__leaf_clk),
    .D(_035_),
    .RESET_B(net17),
    .Q(\u_uart.u_tx.bit_cnt[2] ));
 sky130_fd_sc_hd__dfstp_1 _386_ (.CLK(clknet_3_7__leaf_clk),
    .D(\u_uart.u_tx.tx_next ),
    .SET_B(net16),
    .Q(net6));
 sky130_fd_sc_hd__dfrtp_1 _387_ (.CLK(clknet_3_6__leaf_clk),
    .D(_036_),
    .RESET_B(net16),
    .Q(\u_uart.tx_busy ));
 sky130_fd_sc_hd__dfrtp_1 _388_ (.CLK(clknet_3_3__leaf_clk),
    .D(_037_),
    .RESET_B(net12),
    .Q(\u_uart.u_tx.state[0] ));
 sky130_fd_sc_hd__dfrtp_1 _389_ (.CLK(clknet_3_6__leaf_clk),
    .D(_038_),
    .RESET_B(net16),
    .Q(\u_uart.u_tx.state[1] ));
 sky130_fd_sc_hd__dfrtp_2 _390_ (.CLK(clknet_3_2__leaf_clk),
    .D(_001_),
    .RESET_B(net12),
    .Q(\u_uart.u_tx.clk_cnt[0] ));
 sky130_fd_sc_hd__dfrtp_2 _391_ (.CLK(clknet_3_2__leaf_clk),
    .D(_008_),
    .RESET_B(net12),
    .Q(\u_uart.u_tx.clk_cnt[1] ));
 sky130_fd_sc_hd__dfrtp_1 _392_ (.CLK(clknet_3_2__leaf_clk),
    .D(_009_),
    .RESET_B(net12),
    .Q(\u_uart.u_tx.clk_cnt[2] ));
 sky130_fd_sc_hd__dfrtp_1 _393_ (.CLK(clknet_3_2__leaf_clk),
    .D(_010_),
    .RESET_B(net12),
    .Q(\u_uart.u_tx.clk_cnt[3] ));
 sky130_fd_sc_hd__dfrtp_1 _394_ (.CLK(clknet_3_2__leaf_clk),
    .D(_011_),
    .RESET_B(net13),
    .Q(\u_uart.u_tx.clk_cnt[4] ));
 sky130_fd_sc_hd__dfrtp_1 _395_ (.CLK(clknet_3_3__leaf_clk),
    .D(_012_),
    .RESET_B(net13),
    .Q(\u_uart.u_tx.clk_cnt[5] ));
 sky130_fd_sc_hd__dfrtp_1 _396_ (.CLK(clknet_3_3__leaf_clk),
    .D(_013_),
    .RESET_B(net13),
    .Q(\u_uart.u_tx.clk_cnt[6] ));
 sky130_fd_sc_hd__dfrtp_1 _397_ (.CLK(clknet_3_3__leaf_clk),
    .D(_014_),
    .RESET_B(net13),
    .Q(\u_uart.u_tx.clk_cnt[7] ));
 sky130_fd_sc_hd__dfrtp_1 _398_ (.CLK(clknet_3_2__leaf_clk),
    .D(_015_),
    .RESET_B(net12),
    .Q(\u_uart.u_tx.clk_cnt[8] ));
 sky130_fd_sc_hd__dfrtp_1 _399_ (.CLK(clknet_3_2__leaf_clk),
    .D(_016_),
    .RESET_B(net12),
    .Q(\u_uart.u_tx.clk_cnt[9] ));
 sky130_fd_sc_hd__dfrtp_1 _400_ (.CLK(clknet_3_2__leaf_clk),
    .D(_002_),
    .RESET_B(net12),
    .Q(\u_uart.u_tx.clk_cnt[10] ));
 sky130_fd_sc_hd__dfrtp_1 _401_ (.CLK(clknet_3_2__leaf_clk),
    .D(_003_),
    .RESET_B(net12),
    .Q(\u_uart.u_tx.clk_cnt[11] ));
 sky130_fd_sc_hd__dfrtp_1 _402_ (.CLK(clknet_3_2__leaf_clk),
    .D(_004_),
    .RESET_B(net12),
    .Q(\u_uart.u_tx.clk_cnt[12] ));
 sky130_fd_sc_hd__dfrtp_1 _403_ (.CLK(clknet_3_0__leaf_clk),
    .D(_005_),
    .RESET_B(net11),
    .Q(\u_uart.u_tx.clk_cnt[13] ));
 sky130_fd_sc_hd__dfrtp_1 _404_ (.CLK(clknet_3_0__leaf_clk),
    .D(_006_),
    .RESET_B(net11),
    .Q(\u_uart.u_tx.clk_cnt[14] ));
 sky130_fd_sc_hd__dfrtp_1 _405_ (.CLK(clknet_3_0__leaf_clk),
    .D(_007_),
    .RESET_B(net11),
    .Q(\u_uart.u_tx.clk_cnt[15] ));
 sky130_fd_sc_hd__dfrtp_1 _406_ (.CLK(clknet_3_6__leaf_clk),
    .D(_000_),
    .RESET_B(net13),
    .Q(\u_uart.tx_start ));
 sky130_fd_sc_hd__dfrtp_1 _407_ (.CLK(clknet_3_6__leaf_clk),
    .D(_039_),
    .RESET_B(net16),
    .Q(\u_uart.tx_data[0] ));
 sky130_fd_sc_hd__dfrtp_1 _408_ (.CLK(clknet_3_6__leaf_clk),
    .D(_040_),
    .RESET_B(net16),
    .Q(\u_uart.tx_data[1] ));
 sky130_fd_sc_hd__dfrtp_1 _409_ (.CLK(clknet_3_4__leaf_clk),
    .D(_041_),
    .RESET_B(net15),
    .Q(\u_uart.tx_data[2] ));
 sky130_fd_sc_hd__dfrtp_1 _410_ (.CLK(clknet_3_5__leaf_clk),
    .D(_042_),
    .RESET_B(net15),
    .Q(\u_uart.tx_data[3] ));
 sky130_fd_sc_hd__dfrtp_1 _411_ (.CLK(clknet_3_5__leaf_clk),
    .D(_043_),
    .RESET_B(net18),
    .Q(\u_uart.tx_data[4] ));
 sky130_fd_sc_hd__dfrtp_1 _412_ (.CLK(clknet_3_5__leaf_clk),
    .D(_044_),
    .RESET_B(net18),
    .Q(\u_uart.tx_data[5] ));
 sky130_fd_sc_hd__dfrtp_1 _413_ (.CLK(clknet_3_5__leaf_clk),
    .D(_045_),
    .RESET_B(net18),
    .Q(\u_uart.tx_data[6] ));
 sky130_fd_sc_hd__dfrtp_1 _414_ (.CLK(clknet_3_4__leaf_clk),
    .D(net39),
    .RESET_B(net15),
    .Q(\u_uart.tx_data[7] ));
 sky130_fd_sc_hd__dfrtp_1 _415_ (.CLK(clknet_3_3__leaf_clk),
    .D(_047_),
    .RESET_B(net14),
    .Q(\u_cpu.state[0] ));
 sky130_fd_sc_hd__dfrtp_1 _416_ (.CLK(clknet_3_6__leaf_clk),
    .D(net31),
    .RESET_B(net13),
    .Q(\u_cpu.state[1] ));
 sky130_fd_sc_hd__clkbuf_1 _417_ (.A(\cpu_acc[0] ),
    .X(net2));
 sky130_fd_sc_hd__clkbuf_1 _418_ (.A(\cpu_acc[1] ),
    .X(net3));
 sky130_fd_sc_hd__clkbuf_1 _419_ (.A(\cpu_acc[2] ),
    .X(net4));
 sky130_fd_sc_hd__clkbuf_1 _420_ (.A(\cpu_acc[3] ),
    .X(net5));
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Right_0 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Right_1 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Right_2 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Right_3 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Right_4 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Right_5 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Right_6 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Right_7 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Right_8 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Right_9 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Right_10 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Right_11 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Right_12 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Right_13 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Right_14 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Right_15 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Right_16 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Right_17 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Right_18 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Right_19 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Right_20 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Right_21 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Right_22 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Right_23 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Right_24 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Right_25 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Right_26 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Right_27 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Right_28 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Right_29 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_0_Left_30 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_1_Left_31 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_2_Left_32 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_3_Left_33 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_4_Left_34 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_5_Left_35 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_6_Left_36 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_7_Left_37 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_8_Left_38 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_9_Left_39 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_10_Left_40 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_11_Left_41 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_12_Left_42 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_13_Left_43 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_14_Left_44 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_15_Left_45 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_16_Left_46 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_17_Left_47 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_18_Left_48 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_19_Left_49 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_20_Left_50 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_21_Left_51 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_22_Left_52 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_23_Left_53 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_24_Left_54 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_25_Left_55 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_26_Left_56 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_27_Left_57 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_28_Left_58 ();
 sky130_fd_sc_hd__decap_3 PHY_EDGE_ROW_29_Left_59 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_60 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_61 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_62 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_63 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_64 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_0_65 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_66 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_67 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_1_68 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_69 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_70 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_2_71 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_72 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_3_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_4_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_5_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_6_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_7_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_8_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_9_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_10_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_11_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_12_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_13_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_14_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_15_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_16_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_17_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_18_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_19_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_20_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_21_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_22_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_23_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_24_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_25_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_26_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_27_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_28_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_TAPCELL_ROW_29_155 ();
 sky130_fd_sc_hd__buf_1 input1 (.A(rst_n),
    .X(net1));
 sky130_fd_sc_hd__buf_2 output2 (.A(net2),
    .X(gpio[0]));
 sky130_fd_sc_hd__buf_2 output3 (.A(net3),
    .X(gpio[1]));
 sky130_fd_sc_hd__buf_2 output4 (.A(net4),
    .X(gpio[2]));
 sky130_fd_sc_hd__buf_2 output5 (.A(net5),
    .X(gpio[3]));
 sky130_fd_sc_hd__buf_2 output6 (.A(net6),
    .X(uart_tx));
 sky130_fd_sc_hd__buf_1 wire7 (.A(_126_),
    .X(net7));
 sky130_fd_sc_hd__buf_2 fanout8 (.A(_159_),
    .X(net8));
 sky130_fd_sc_hd__buf_2 fanout9 (.A(_158_),
    .X(net9));
 sky130_fd_sc_hd__buf_2 fanout10 (.A(_082_),
    .X(net10));
 sky130_fd_sc_hd__clkbuf_4 fanout11 (.A(net14),
    .X(net11));
 sky130_fd_sc_hd__clkbuf_4 fanout12 (.A(net14),
    .X(net12));
 sky130_fd_sc_hd__clkbuf_2 fanout13 (.A(net14),
    .X(net13));
 sky130_fd_sc_hd__buf_2 fanout14 (.A(net1),
    .X(net14));
 sky130_fd_sc_hd__clkbuf_4 fanout15 (.A(net18),
    .X(net15));
 sky130_fd_sc_hd__clkbuf_4 fanout16 (.A(net18),
    .X(net16));
 sky130_fd_sc_hd__clkbuf_2 fanout17 (.A(net18),
    .X(net17));
 sky130_fd_sc_hd__clkbuf_2 fanout18 (.A(net1),
    .X(net18));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_0__f_clk (.A(clknet_0_clk),
    .X(clknet_3_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_1__f_clk (.A(clknet_0_clk),
    .X(clknet_3_1__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_2__f_clk (.A(clknet_0_clk),
    .X(clknet_3_2__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_3__f_clk (.A(clknet_0_clk),
    .X(clknet_3_3__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_4__f_clk (.A(clknet_0_clk),
    .X(clknet_3_4__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_5__f_clk (.A(clknet_0_clk),
    .X(clknet_3_5__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_6__f_clk (.A(clknet_0_clk),
    .X(clknet_3_6__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_3_7__f_clk (.A(clknet_0_clk),
    .X(clknet_3_7__leaf_clk));
 sky130_fd_sc_hd__clkinv_2 clkload0 (.A(clknet_3_0__leaf_clk));
 sky130_fd_sc_hd__clkinvlp_4 clkload1 (.A(clknet_3_1__leaf_clk));
 sky130_fd_sc_hd__clkinvlp_4 clkload2 (.A(clknet_3_3__leaf_clk));
 sky130_fd_sc_hd__clkinv_2 clkload3 (.A(clknet_3_4__leaf_clk));
 sky130_fd_sc_hd__bufinv_16 clkload4 (.A(clknet_3_5__leaf_clk));
 sky130_fd_sc_hd__clkbuf_8 clkload5 (.A(clknet_3_6__leaf_clk));
 sky130_fd_sc_hd__clkbuf_4 clkload6 (.A(clknet_3_7__leaf_clk));
 sky130_fd_sc_hd__dlygate4sd3_1 hold1 (.A(\u_uart.u_tx.clk_cnt[15] ),
    .X(net19));
 sky130_fd_sc_hd__dlygate4sd3_1 hold2 (.A(\cpu_pc[7] ),
    .X(net20));
 sky130_fd_sc_hd__dlygate4sd3_1 hold3 (.A(\u_uart.u_tx.shifter[2] ),
    .X(net21));
 sky130_fd_sc_hd__dlygate4sd3_1 hold4 (.A(\u_uart.u_tx.shifter[5] ),
    .X(net22));
 sky130_fd_sc_hd__dlygate4sd3_1 hold5 (.A(_030_),
    .X(net23));
 sky130_fd_sc_hd__dlygate4sd3_1 hold6 (.A(\u_uart.u_tx.shifter[0] ),
    .X(net24));
 sky130_fd_sc_hd__dlygate4sd3_1 hold7 (.A(\u_uart.u_tx.shifter[1] ),
    .X(net25));
 sky130_fd_sc_hd__dlygate4sd3_1 hold8 (.A(\u_uart.u_tx.shifter[6] ),
    .X(net26));
 sky130_fd_sc_hd__dlygate4sd3_1 hold9 (.A(_031_),
    .X(net27));
 sky130_fd_sc_hd__dlygate4sd3_1 hold10 (.A(\u_uart.u_tx.shifter[4] ),
    .X(net28));
 sky130_fd_sc_hd__dlygate4sd3_1 hold11 (.A(_029_),
    .X(net29));
 sky130_fd_sc_hd__dlygate4sd3_1 hold12 (.A(\u_cpu.state[1] ),
    .X(net30));
 sky130_fd_sc_hd__dlygate4sd3_1 hold13 (.A(_048_),
    .X(net31));
 sky130_fd_sc_hd__dlygate4sd3_1 hold14 (.A(\u_uart.tx_data[7] ),
    .X(net32));
 sky130_fd_sc_hd__dlygate4sd3_1 hold15 (.A(_032_),
    .X(net33));
 sky130_fd_sc_hd__dlygate4sd3_1 hold16 (.A(\u_uart.u_tx.shifter[3] ),
    .X(net34));
 sky130_fd_sc_hd__dlygate4sd3_1 hold17 (.A(_028_),
    .X(net35));
 sky130_fd_sc_hd__dlygate4sd3_1 hold18 (.A(\u_uart.tx_data[0] ),
    .X(net36));
 sky130_fd_sc_hd__dlygate4sd3_1 hold19 (.A(\u_uart.tx_data[5] ),
    .X(net37));
 sky130_fd_sc_hd__dlygate4sd3_1 hold20 (.A(\cpu_acc[7] ),
    .X(net38));
 sky130_fd_sc_hd__dlygate4sd3_1 hold21 (.A(_046_),
    .X(net39));
 sky130_fd_sc_hd__dlygate4sd3_1 hold22 (.A(\u_uart.tx_data[4] ),
    .X(net40));
 sky130_fd_sc_hd__dlygate4sd3_1 hold23 (.A(\u_uart.tx_data[6] ),
    .X(net41));
 sky130_fd_sc_hd__dlygate4sd3_1 hold24 (.A(\cpu_pc[5] ),
    .X(net42));
 sky130_fd_sc_hd__dlygate4sd3_1 hold25 (.A(\cpu_pc[0] ),
    .X(net43));
 sky130_fd_sc_hd__dlygate4sd3_1 hold26 (.A(\u_uart.tx_data[3] ),
    .X(net44));
 sky130_fd_sc_hd__dlygate4sd3_1 hold27 (.A(\u_uart.tx_data[2] ),
    .X(net45));
 sky130_fd_sc_hd__dlygate4sd3_1 hold28 (.A(\u_uart.tx_data[1] ),
    .X(net46));
 sky130_fd_sc_hd__dlygate4sd3_1 hold29 (.A(\cpu_pc[4] ),
    .X(net47));
 sky130_fd_sc_hd__dlygate4sd3_1 hold30 (.A(\u_uart.u_tx.clk_cnt[0] ),
    .X(net48));
 sky130_fd_sc_hd__dlygate4sd3_1 hold31 (.A(\cpu_pc[3] ),
    .X(net49));
 sky130_fd_sc_hd__dlygate4sd3_1 hold32 (.A(\u_uart.u_tx.clk_cnt[6] ),
    .X(net50));
 sky130_fd_sc_hd__dlygate4sd3_1 hold33 (.A(\u_uart.u_tx.state[1] ),
    .X(net51));
 sky130_fd_sc_hd__dlygate4sd3_1 hold34 (.A(\u_uart.u_tx.clk_cnt[12] ),
    .X(net52));
 sky130_fd_sc_hd__dlygate4sd3_1 hold35 (.A(\u_uart.u_tx.clk_cnt[9] ),
    .X(net53));
 sky130_fd_sc_hd__dlygate4sd3_1 hold36 (.A(\u_uart.u_tx.clk_cnt[5] ),
    .X(net54));
 sky130_fd_sc_hd__dlygate4sd3_1 hold37 (.A(\u_uart.u_tx.clk_cnt[10] ),
    .X(net55));
 sky130_fd_sc_hd__dlygate4sd3_1 hold38 (.A(\u_uart.u_tx.clk_cnt[13] ),
    .X(net56));
 sky130_fd_sc_hd__dlygate4sd3_1 hold39 (.A(\cpu_acc[3] ),
    .X(net57));
 sky130_fd_sc_hd__dlygate4sd3_1 hold40 (.A(\cpu_pc[2] ),
    .X(net58));
 sky130_fd_sc_hd__dlygate4sd3_1 hold41 (.A(\u_uart.u_tx.bit_cnt[1] ),
    .X(net59));
 sky130_fd_sc_hd__dlygate4sd3_1 hold42 (.A(\u_uart.u_tx.clk_cnt[14] ),
    .X(net60));
 sky130_fd_sc_hd__dlygate4sd3_1 hold43 (.A(\u_uart.u_tx.clk_cnt[1] ),
    .X(net61));
 sky130_fd_sc_hd__dlygate4sd3_1 hold44 (.A(\cpu_pc[4] ),
    .X(net62));
 sky130_fd_sc_hd__dlygate4sd3_1 hold45 (.A(\u_uart.u_tx.shifter[3] ),
    .X(net63));
endmodule
