v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -140 -140 -140 -90 {lab=Vout}
N -20 -100 -20 -70 {lab=Vout}
N -20 -110 -20 -100 {lab=Vout}
N -140 -110 -20 -110 {lab=Vout}
N -270 -60 -180 -60 {lab=#net1}
N -270 -60 -270 -20 {lab=#net1}
N -20 -10 -20 20 {lab=GND}
N -270 40 -270 60 {lab=GND}
N -140 -30 -140 -10 {lab=GND}
N -140 -220 -140 -200 {lab=#net2}
N -160 -220 -140 -220 {lab=#net2}
N -20 -110 -0 -110 {lab=Vout}
N -0 -110 10 -110 {lab=Vout}
N -240 -220 -220 -220 {lab=GND}
N -240 -220 -240 -200 {lab=GND}
N -240 -200 -240 -180 {lab=GND}
N 10 -110 30 -110 {lab=Vout}
N -140 -60 -120 -60 {lab=GND}
N -120 -60 -120 -20 {lab=GND}
N -140 -20 -120 -20 {lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -160 -60 0 0 {name=M2
L=2
W=5  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {capa.sym} -20 -40 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {res.sym} -140 -170 0 0 {name=R1
value=8k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -270 10 0 0 {name=V1 value="SIN(0.9 1m 1K)" savecurrent=false}
C {gnd.sym} -270 60 0 0 {name=l1 lab=GND}
C {gnd.sym} -20 20 0 0 {name=l2 lab=GND}
C {gnd.sym} -140 -10 0 0 {name=l3 lab=GND}
C {vsource.sym} -190 -220 1 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} -240 -180 0 0 {name=l4 lab=GND}
C {opin.sym} 30 -110 0 0 {name=p1 lab=Vout}
C {devices/code.sym} -430 -270 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} 110 -140 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.tran 1u 5m
.control
run


PLOT v(Vout)


.endc
.end



"}
