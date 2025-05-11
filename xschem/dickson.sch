v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -590 -220 -560 -220 {lab=#net1}
N -590 -180 -560 -180 {lab=#net1}
N -460 -180 -420 -180 {lab=stage1}
N -460 -220 -420 -220 {lab=stage1}
N -460 -220 -460 -180 {lab=stage1}
N -320 -180 -280 -180 {lab=stage2}
N -320 -220 -320 -180 {lab=stage2}
N -360 -180 -320 -180 {lab=stage2}
N -320 -220 -280 -220 {lab=stage2}
N -180 -180 -140 -180 {lab=stage3}
N -180 -220 -180 -180 {lab=stage3}
N -180 -220 -140 -220 {lab=stage3}
N -100 -180 -50 -180 {lab=VOUT}
N -100 -180 -100 -60 {lab=VOUT}
N -110 -180 -100 -180 {lab=VOUT}
N -220 -180 -180 -180 {lab=stage3}
N -500 -180 -460 -180 {lab=stage1}
N -500 -180 -500 -80 {lab=stage1}
N -530 -180 -500 -180 {lab=stage1}
N -500 -20 -500 10 {lab=clka}
N -360 -180 -360 -40 {lab=stage2}
N -390 -180 -360 -180 {lab=stage2}
N -220 -180 -220 -80 {lab=stage3}
N -250 -180 -220 -180 {lab=stage3}
N -100 -0 -100 20 {lab=VSS}
N -700 -300 -640 -300 {lab=ena}
N -760 -340 -640 -340 {lab=clk}
N -760 -440 -760 -340 {lab=clk}
N -760 -440 -740 -440 {lab=clk}
N -700 -400 -700 -300 {lab=ena}
N -760 -300 -700 -300 {lab=ena}
N -700 -400 -640 -400 {lab=ena}
N -660 -440 -640 -440 {lab=#net2}
N -700 -220 -690 -220 {lab=ena}
N -700 -300 -700 -220 {lab=ena}
N -590 -220 -590 -180 {lab=#net1}
N -610 -220 -590 -220 {lab=#net1}
C {devices/title.sym} -790 290 0 0 {name=l5 author="Uri Shaked"}
C {devices/lab_pin.sym} -100 20 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {sg13g2_pr/sg13_lv_nmos.sym} -560 -200 1 0 {name=M5
l=0.13u
w=3u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} -420 -200 1 0 {name=M6
l=0.13u
w=3u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} -520 -180 0 1 {name=p3 sig_type=std_logic lab=stage1}
C {sg13g2_pr/sg13_lv_nmos.sym} -280 -200 1 0 {name=M7
l=0.13u
w=3u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} -380 -180 0 1 {name=p4 sig_type=std_logic lab=stage2}
C {sg13g2_pr/sg13_lv_nmos.sym} -140 -200 1 0 {name=M8
l=0.13u
w=3u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {lab_wire.sym} -240 -180 0 1 {name=p9 sig_type=std_logic lab=stage3}
C {sg13g2_pr/cap_cmim.sym} -500 -50 0 0 {name=C1
model=cap_cmim
w=30.0e-6
l=30.0e-6
m=1
spiceprefix=X}
C {lab_wire.sym} -500 10 2 0 {name=p11 sig_type=std_logic lab=clka}
C {sg13g2_pr/cap_cmim.sym} -360 -10 0 0 {name=C2
model=cap_cmim
w=30.0e-6
l=30.0e-6
m=1
spiceprefix=X}
C {lab_wire.sym} -360 20 2 0 {name=p13 sig_type=std_logic lab=clkb}
C {sg13g2_pr/cap_cmim.sym} -220 -50 0 0 {name=C3
model=cap_cmim
w=30.0e-6
l=30.0e-6
m=1
spiceprefix=X}
C {lab_wire.sym} -220 -20 2 0 {name=p19 sig_type=std_logic lab=clka}
C {sg13g2_pr/cap_cmim.sym} -100 -30 0 0 {name=C4
model=cap_cmim
w=30.0e-6
l=30.0e-6
m=1
spiceprefix=X}
C {sg13g2_stdcells/sg13g2_and2_2.sym} -580 -320 0 0 {name=x1 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_pin.sym} -520 -320 0 1 {name=p21 sig_type=std_logic lab=clka}
C {sg13g2_stdcells/sg13g2_inv_1.sym} -700 -440 0 0 {name=x2 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {sg13g2_stdcells/sg13g2_and2_2.sym} -580 -420 0 0 {name=x3 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {devices/lab_pin.sym} -520 -420 0 1 {name=p1 sig_type=std_logic lab=clkb}
C {sg13g2_stdcells/sg13g2_buf_16.sym} -650 -220 0 0 {name=x4 VDD=VDD VSS=VSS prefix=sg13g2_ }
C {ipin.sym} -760 -340 0 0 {name=p2 lab=clk}
C {ipin.sym} -760 -300 0 0 {name=p6 lab=ena}
C {ipin.sym} -760 -220 0 0 {name=p7 lab=VDD}
C {ipin.sym} -760 -190 0 0 {name=p10 lab=VSS}
C {opin.sym} -50 -180 0 0 {name=p12 lab=VOUT}
