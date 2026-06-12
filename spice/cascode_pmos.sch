v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -220 -130 -90 -130 {lab=Vout1}
N -260 -100 -260 20 {lab=Vout1}
N -50 -100 -50 20 {lab=#net1}
N -110 50 -90 50 {lab=Vout1}
N -220 50 -110 50 {lab=Vout1}
N -260 -270 -260 -160 {lab=#net2}
N -50 -270 -50 -160 {lab=#net3}
N -260 -80 -200 -80 {lab=Vout1}
N -200 -130 -200 -80 {lab=Vout1}
N -200 -10 -200 50 {lab=Vout1}
N -260 -10 -200 -10 {lab=Vout1}
N -290 50 -260 50 {lab=Vout1}
N -290 -30 -290 50 {lab=Vout1}
N -290 -30 -260 -30 {lab=Vout1}
N -50 50 -30 50 {lab=#net1}
N -30 -10 -30 50 {lab=#net1}
N -50 -10 -30 -10 {lab=#net1}
N -280 -130 -260 -130 {lab=#net2}
N -280 -190 -280 -130 {lab=#net2}
N -280 -190 -260 -190 {lab=#net2}
N -50 -130 -10 -130 {lab=#net3}
N -10 -190 -10 -130 {lab=#net3}
N -50 -190 -10 -190 {lab=#net3}
N -50 -330 -50 -310 {lab=#net2}
N -50 -330 30 -330 {lab=#net2}
N 30 -330 30 -310 {lab=#net2}
N -260 160 -160 160 {lab=GND}
N -160 160 -50 160 {lab=GND}
N 30 -330 80 -330 {lab=#net2}
N 80 -330 80 -140 {lab=#net2}
N 80 -80 80 160 {lab=GND}
N -50 160 80 160 {lab=GND}
N 30 -250 30 110 {lab=#net4}
N -50 110 30 110 {lab=#net4}
N -50 80 -50 110 {lab=#net4}
N -260 150 -260 160 {lab=GND}
N -260 80 -260 90 {lab=#net5}
N -260 -320 -260 -270 {lab=#net2}
N -260 -330 -50 -330 {lab=#net2}
N -260 -330 -260 -320 {lab=#net2}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -240 -130 0 1 {name=M10
L=2
W=5
nf=1 mult=16
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -70 -130 0 0 {name=M1
L=2
W=5
nf=1 mult=16
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -240 50 0 1 {name=M2
L=2
W=5
nf=1 mult=16
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -70 50 0 0 {name=M3
L=2
W=5
nf=1 mult=16
model=pfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -50 -280 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 30 -280 0 0 {name=V2 value=0.3 savecurrent=false}
C {gnd.sym} -150 160 0 0 {name=l1 lab=GND}
C {vsource.sym} 80 -110 0 0 {name=V3 value=0.3 savecurrent=false}
C {isource.sym} -260 120 0 0 {name=I0 value=100u}
C {simulator_commands_shown.sym} 220 -170 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
,dc V2 0 1.8 0.01
.control
run

PLOT v(Vout1) v(Vout2)

PLOT (v1)

.endc
.end


* ngspice commands
"}
C {devices/code.sym} -500 -390 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {opin.sym} -200 20 0 0 {name=p1 lab=Vout1}
C {opin.sym} -200 -100 0 0 {name=p2 lab=Vout2}
