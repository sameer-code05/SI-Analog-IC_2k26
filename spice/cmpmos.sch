v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -350 -70 -350 -30 {lab=Vout}
N -350 -40 -270 -40 {lab=Vout}
N -270 -100 -270 -40 {lab=Vout}
N -310 -100 -190 -100 {lab=Vout}
N -350 -30 -350 -10 {lab=Vout}
N -150 -70 -150 -40 {lab=#net1}
N -350 50 -350 60 {lab=GND}
N -350 -220 -350 -130 {lab=#net2}
N -380 -100 -350 -100 {lab=#net2}
N -380 -180 -380 -100 {lab=#net2}
N -380 -180 -350 -180 {lab=#net2}
N -150 -100 -130 -100 {lab=#net3}
N -150 -220 -150 -130 {lab=#net3}
N -130 -170 -130 -100 {lab=#net3}
N -150 -170 -130 -170 {lab=#net3}
N -150 -40 -100 -40 {lab=#net1}
N -100 -210 -100 -40 {lab=#net1}
N -100 -290 -100 -270 {lab=#net2}
N -350 -290 -100 -290 {lab=#net2}
N -350 -290 -350 -220 {lab=#net2}
N -150 -290 -150 -270 {lab=#net2}
N -100 -290 -40 -290 {lab=#net2}
N -40 -290 -40 -220 {lab=#net2}
N -40 -160 -40 -140 {lab=GND}
C {devices/code.sym} -500 -330 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -330 -100 0 1 {name=M10
L=2
W=5
nf=1 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -170 -100 0 0 {name=M1
L=2
W=5
nf=1 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
C {isource.sym} -350 20 0 0 {name=I0 value=100u}
C {vsource.sym} -100 -240 0 0 {name=V2 value=0.3 savecurrent=false}
C {gnd.sym} -40 -140 0 0 {name=l1 lab=GND}
C {gnd.sym} -350 60 0 0 {name=l2 lab=GND}
C {vsource.sym} -40 -190 0 0 {name=V3 value=1.8 savecurrent=false}
C {vsource.sym} -150 -240 0 0 {name=V1 value=0 savecurrent=false}
C {simulator_commands_shown.sym} -20 -180 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.dc V2 0 1.8 0.01
.control
run

plot v(Vout)
plot i(V1)

.endc
.end


* ngspice commands
"}
C {opin.sym} -270 -40 0 0 {name=p1 lab=Vout}
