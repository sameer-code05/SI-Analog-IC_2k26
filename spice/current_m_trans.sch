v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -250 -120 -140 -120 {lab=Vout}
N -290 -90 -290 -60 {lab=GND}
N -290 -60 -100 -60 {lab=GND}
N -100 -90 -100 -60 {lab=GND}
N -290 -160 -290 -150 {lab=Vout}
N -100 -170 -100 -150 {lab=#net1}
N -100 -260 -100 -230 {lab=#net2}
N -100 -260 -0 -260 {lab=#net2}
N -0 -260 0 -190 {lab=#net2}
N -190 -60 -190 -50 {lab=GND}
N 0 -130 -0 -50 {lab=GND}
N -190 -50 -0 -50 {lab=GND}
N -290 -190 -290 -160 {lab=Vout}
N -230 -160 -230 -120 {lab=Vout}
N -290 -160 -230 -160 {lab=Vout}
N -290 -270 -290 -250 {lab=GND}
N -350 -270 -290 -270 {lab=GND}
N -350 -270 -350 -210 {lab=GND}
N -350 -210 -340 -210 {lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -270 -120 0 1 {name=M2
L=0.5
W=5  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -120 -120 0 0 {name=M1
L=0.5
W=5 
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {isource.sym} -290 -220 0 0 {name=I0 value="PULSE(0 100u 1n 10p 10p 0.5 1)"}
C {vsource.sym} -100 -200 0 0 {name=V1 value=0 savecurrent=false}
C {gnd.sym} -340 -210 0 0 {name=l1 lab=GND}
C {vsource.sym} 0 -160 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} -190 -50 0 0 {name=l2 lab=GND}
C {devices/code.sym} -480 -370 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} 80 -210 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.tran 1p 10n
.control
run

PLOT V(Vout)
PLOT i(v1)

.endc
.end
* ngspice commands
"}
C {opin.sym} -230 -150 0 0 {name=p1 lab=Vout}
