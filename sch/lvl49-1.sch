v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -630 -90 -630 -40 {lab=GND}
N -630 -40 -440 -40 {lab=GND}
N -530 -130 -530 -40 {lab=GND}
N -630 -240 -630 -150 {lab=Vgs}
N -630 -240 -540 -240 {lab=Vgs}
N -530 -240 -530 -190 {lab=Vgs}
N -540 -240 -530 -240 {lab=Vgs}
N -590 -160 -570 -160 {lab=Vgs}
N -590 -240 -590 -160 {lab=Vgs}
N -530 -40 -530 -20 {lab=GND}
N -530 -160 -440 -160 {lab=Vsb}
N -440 -160 -440 -150 {lab=Vsb}
N -440 -70 -440 -40 {lab=GND}
N -440 -150 -440 -130 {lab=Vsb}
C {sky130_fd_pr/nfet_01v8.sym} -550 -160 0 0 {name=M2
L=1
W=5  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {vsource.sym} -630 -120 0 0 {name=Vgs value=1.8 savecurrent=false}
C {vsource.sym} -440 -100 2 0 {name=Vsb value=1 savecurrent=false}
C {gnd.sym} -530 -20 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -630 -200 0 0 {name=p1 sig_type=std_logic lab=Vgs}
C {lab_pin.sym} -460 -160 1 0 {name=p2 sig_type=std_logic lab=Vsb}
C {devices/code.sym} -860 -310 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -410 -230 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.dc Vgs 0 1.8 0.01 Vsb 0 1 0.5

.control
run

LET Id = abs(i(Vgs))
LET rt_id = sqrt(Id)

PLOT rt_id

LET d_rt_id = deriv(rt_id)

MEAS DC d_at_1v FIND d_rt_id AT = 1.2
LET ucox = (2.0/5.0)*(d_at_1v)^2
print ucox

MEAS DC rt_id_at_1 FIND rt_id AT = 1.2
LET Vt = 1.2 - ( d_at_1v^-1 * rt_id_at_1)
print Vt


LET gamma= (0,72-0.51)/\{ (sqrt(0.846+1)-  sqrt(0.846)))\}
print gamma

.endc
.end

* ngspice commands
"}
