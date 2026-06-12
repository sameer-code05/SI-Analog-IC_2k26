v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -40 -120 60 -120 {lab=Vout1}
N -60 -260 70 -260 {lab=Vout2}
N -100 -230 -100 -150 {lab=Vout1}
N 60 -120 70 -120 {lab=Vout1}
N -60 -120 -40 -120 {lab=Vout1}
N -100 -370 -100 -290 {lab=Vout2}
N -100 -90 -100 -40 {lab=GND}
N 110 -90 110 -20 {lab=GND}
N -100 -40 -100 -20 {lab=GND}
N -100 -20 -0 -20 {lab=GND}
N -0 -20 110 -20 {lab=GND}
N -130 -120 -100 -120 {lab=GND}
N -130 -120 -130 -20 {lab=GND}
N -130 -20 -100 -20 {lab=GND}
N 110 -120 140 -120 {lab=GND}
N 140 -120 140 -20 {lab=GND}
N 110 -20 140 -20 {lab=GND}
N -180 -260 -100 -260 {lab=GND}
N -180 -260 -180 -20 {lab=GND}
N -180 -20 -120 -20 {lab=GND}
N 110 -260 160 -260 {lab=GND}
N 160 -260 160 -20 {lab=GND}
N 140 -20 160 -20 {lab=GND}
N -100 -170 -20 -170 {lab=Vout1}
N -20 -170 -20 -120 {lab=Vout1}
N -100 -330 -20 -330 {lab=Vout2}
N -20 -330 -20 -260 {lab=Vout2}
N 110 -320 110 -290 {lab=Vout3}
N 110 -420 110 -380 {lab=#net1}
N 110 -420 230 -420 {lab=#net1}
N 230 -420 230 -300 {lab=#net1}
N -100 -470 -100 -430 {lab=GND}
N -190 -470 -100 -470 {lab=GND}
N -190 -470 -190 -410 {lab=GND}
N 110 -230 110 -150 {lab=Vout4}
C {sky130_fd_pr/nfet_01v8.sym} -80 -120 0 1 {name=M2
L=2
W=5  
nf=1 mult=4
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -80 -260 0 1 {name=M1
L=2
W=5  
nf=1 mult=4
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 90 -260 0 0 {name=M3
L=2
W=5  
nf=1 mult=4
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 90 -120 0 0 {name=M4
L=2
W=5  
nf=1 mult=4
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 0 -20 0 0 {name=l1 lab=GND}
C {vsource.sym} 110 -350 0 0 {name=V1 value=0 savecurrent=false}
C {vsource.sym} 230 -270 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} 230 -240 0 0 {name=l2 lab=GND}
C {gnd.sym} -190 -410 0 0 {name=l3 lab=GND}
C {opin.sym} -20 -160 0 0 {name=p1 lab=Vout1}
C {isource.sym} -100 -400 0 0 {name=I0 value=100u}
C {devices/code.sym} -490 -570 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} 280 -320 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="

.dc V2 0 1.8 0.01
.control
run

PLOT V(Vout1) v(Vout2) V(Vout3) v(Vout4)
PLOT i(V1)

.endc
.end









* ngspice commands
"}
C {opin.sym} -20 -310 0 0 {name=p2 lab=Vout2}
C {opin.sym} 110 -310 0 0 {name=p3 lab=Vout3}
C {opin.sym} 110 -190 2 0 {name=p4 lab=Vout4}
