v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 -110 -230 690 170 {flags=graph
y1=-4.8064468
y2=7.5123687
ypos1=0
ypos2=2
divy=10
subdivy=4
unity=1
x1=-3.0180182e-05

divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
rainbow=0





x2=0.00016978964
color=8
node=vout}
T {Test load} -440 20 0 0 0.4 0.4 {}
C {devices/vsource.sym} -750 -110 0 0 {name=V3 value=1.2}
C {devices/lab_pin.sym} -750 -140 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -750 -80 0 0 {name=p7 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} -1000 140 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib $::SG13G2_MODELS/cornerCAP.lib cap_typ
.lib $::SG13G2_MODELS/cornerMOSlv.lib mos_tt
.include $\{PDK_ROOT\}/$\{PDK\}/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice
"}
C {devices/title.sym} -790 290 0 0 {name=l5 author="Uri Shaked"}
C {devices/code_shown.sym} -1010 -220 0 0 {name=NGSPICE only_toplevel=true 
value="
.param temp=27
.param mc_ok = 1

.tran 50n 100u
.save all
.save i(v3)

.control
run
write dickson_tb.raw
.endc
"


}
C {devices/launcher.sym} -50 200 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/dickson_tb.raw tran"
}
C {devices/vsource.sym} -750 50 0 1 {name=V2 value="PULSE(1.2 0 0 30p 30p 250n 500n)"}
C {devices/gnd.sym} -750 80 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} -750 20 0 1 {name=p10 sig_type=std_logic lab=clk}
C {devices/vsource.sym} -650 50 0 1 {name=V1 value="1.2"}
C {devices/gnd.sym} -650 80 0 0 {name=l1 lab=GND
value="PULSE(0 1.2 0 30p 30p 20m 40m)"}
C {devices/lab_pin.sym} -650 20 0 1 {name=p14 sig_type=std_logic lab=ena
value="PULSE(0 1.2 0 30p 30p 20m 40m)"}
C {devices/vsource.sym} -650 -110 0 0 {name=V4 value=0}
C {devices/lab_pin.sym} -650 -140 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -650 -80 0 0 {name=p16 sig_type=std_logic lab=GND}
C {res.sym} -400 60 1 0 {name=R1
value=7Meg
footprint=1206
device=resistor
m=1}
C {devices/lab_pin.sym} -370 60 0 1 {name=p2 sig_type=std_logic lab=vout}
C {devices/lab_pin.sym} -430 60 0 0 {name=p17 sig_type=std_logic lab=GND}
C {dickson.sym} -360 -100 0 0 {name=x1}
C {devices/lab_pin.sym} -510 -130 0 0 {name=p1 sig_type=std_logic lab=clk}
C {devices/lab_pin.sym} -510 -110 0 0 {name=p3 sig_type=std_logic lab=ena
value="PULSE(0 1.2 0 30p 30p 20m 40m)"}
C {devices/lab_pin.sym} -510 -70 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -510 -90 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} -210 -130 0 1 {name=p8 sig_type=std_logic lab=vout}
