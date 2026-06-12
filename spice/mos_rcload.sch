v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -270 -180 -270 -160 {lab=in}
N -270 -180 -230 -180 {lab=in}
N -260 -300 -260 -280 {lab=#net1}
N -260 -300 -210 -300 {lab=#net1}
N -190 -300 -190 -210 {lab=#net1}
N -210 -300 -190 -300 {lab=#net1}
N -190 -180 -170 -180 {lab=#net1}
N -170 -220 -170 -180 {lab=#net1}
N -170 -230 -170 -220 {lab=#net1}
N -190 -230 -170 -230 {lab=#net1}
N -260 -220 -260 -210 {lab=GND}
N -190 -150 -190 -120 {lab=out}
N -130 -130 -130 -120 {lab=out}
N -190 -130 -130 -130 {lab=out}
N -270 -100 -270 -30 {lab=GND}
N -270 -30 -190 -30 {lab=GND}
N -190 -60 -190 -30 {lab=GND}
N -130 -60 -130 -30 {lab=GND}
N -190 -30 -130 -30 {lab=GND}
C {vsource.sym} -270 -130 0 0 {name=V2 value="0.9 AC=-1"  savecurrent=false}
C {vsource.sym} -260 -250 0 0 {name=V3 value=1.8 savecurrent=false}
C {gnd.sym} -260 -210 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -250 -180 3 0 {name=p1 sig_type=std_logic lab=in}
C {lab_pin.sym} -160 -130 3 0 {name=p2 sig_type=std_logic lab=out
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -210 -180 0 0 {name=M10
L=2
W=5
nf=1 mult=12
model=pfet_01v8_lvt
spiceprefix=X
}
C {res.sym} -190 -90 0 0 {name=R1
value=8k
footprint=1206
device=resistor
m=1}
C {capa.sym} -130 -90 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -190 -30 0 0 {name=l1 lab=GND}
C {devices/code.sym} -410 -320 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -20 -230 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.dc V2 0 1.8 0.01
.control
run
* VTC 
plot v(out)  vs v(in)
*Gain

let gain =-deriv(v(out))
plot gain vs v(in)

.endc









* ngspice commands
"}
