v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -280 -110 -190 -110 {lab=Vout}
N -320 -170 -320 -140 {lab=Vout}
N -320 -270 -320 -230 {lab=GND}
N -320 -150 -250 -150 {lab=Vout}
N -250 -150 -250 -110 {lab=Vout}
N -320 -80 -320 -30 {lab=GND}
N -320 -30 -220 -30 {lab=GND}
N -220 -30 -150 -30 {lab=GND}
N -160 -80 -160 -30 {lab=GND}
N -360 -110 -320 -110 {lab=GND}
N -360 -110 -360 -30 {lab=GND}
N -360 -30 -320 -30 {lab=GND}
N -150 -110 -120 -110 {lab=GND}
N -120 -110 -120 -30 {lab=GND}
N -150 -30 -120 -30 {lab=GND}
N -160 -110 -150 -110 {lab=GND}
N -160 -270 -90 -270 {lab=Iout}
N -90 -270 -90 -230 {lab=Iout}
N -160 -270 -160 -240 {lab=Iout}
N -160 -180 -160 -140 {lab=#net1}
C {devices/code.sym} -530 -360 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {sky130_fd_pr/nfet_01v8.sym} -300 -110 0 1 {name=M2
L=2
W=5  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {isource.sym} -320 -200 0 1 {name=I0 value=100u}
C {gnd.sym} -220 -30 0 0 {name=l1 lab=GND}
C {sky130_fd_pr/nfet_01v8.sym} -180 -110 0 0 {name=M1
L=2
W=5  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} -320 -270 2 0 {name=l2 lab=GND}
C {vsource.sym} -90 -200 0 1 {name=V1 value=0.3 savecurrent=false}
C {gnd.sym} -90 -170 0 0 {name=l3 lab=GND}
C {simulator_commands_shown.sym} -30 -220 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="

.dc V1 0 1.8 0.1
.control
run

plot v(Vout)
plot i(V2)

.endc
.end

* ngspice commands
"}
C {lab_pin.sym} -130 -270 1 0 {name=p2 sig_type=std_logic lab=Iout}
C {opin.sym} -250 -130 0 0 {name=p1 lab=Vout}
C {vsource.sym} -160 -210 0 0 {name=V2 value=0 savecurrent=false}
