v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -190 -250 -100 -250 {lab=Vm6}
N -230 30 -230 50 {lab=Vv3}
N -230 50 -60 50 {lab=Vv3}
N -60 30 -60 50 {lab=Vv3}
N -280 190 -200 190 {lab=Vm4}
N -310 120 -310 160 {lab=Vm4}
N -310 220 -310 240 {lab=GND}
N -320 240 -160 240 {lab=GND}
N -160 220 -160 240 {lab=GND}
N 30 40 30 80 {lab=GND}
N -240 240 -240 260 {lab=GND}
N -230 -290 -230 -280 {lab=#net1}
N -60 -290 -60 -280 {lab=#net1}
N -310 -190 -310 -10 {lab=#net1}
N 30 80 30 170 {lab=GND}
N -160 190 -140 190 {lab=GND}
N -140 190 -140 240 {lab=GND}
N -350 190 -320 190 {lab=GND}
N -350 190 -350 240 {lab=GND}
N -350 240 -320 240 {lab=GND}
N -230 0 -60 0 {lab=GND}
N -150 0 -150 10 {lab=GND}
N 160 10 160 170 {lab=GND}
N -230 -310 -230 -290 {lab=#net1}
N -60 -310 -60 -290 {lab=#net1}
N -220 -310 -60 -310 {lab=#net1}
N -250 -250 -230 -250 {lab=#net1}
N -250 -300 -250 -250 {lab=#net1}
N -60 -250 -30 -250 {lab=#net1}
N -30 -290 -30 -250 {lab=#net1}
N -230 -220 -230 -200 {lab=#net2}
N -160 -250 -160 -120 {lab=Vm6}
N -230 -90 -160 -90 {lab=Vm6}
N -320 190 -310 190 {lab=GND}
N -310 50 -310 120 {lab=Vm4}
N -310 120 -250 120 {lab=Vm4}
N -250 120 -250 190 {lab=Vm4}
N -160 240 -140 240 {lab=GND}
N -230 -310 -220 -310 {lab=#net1}
N -310 -310 -310 -190 {lab=#net1}
N -310 -310 -230 -310 {lab=#net1}
N -60 -310 160 -310 {lab=#net1}
N 160 -310 160 -50 {lab=#net1}
N -160 -120 -160 -90 {lab=Vm6}
N -270 0 -270 10 {lab=#net3}
N -60 -110 -60 -30 {lab=Vm3}
N 30 -60 30 -20 {lab=Vm3}
N -60 -60 30 -60 {lab=Vm3}
N -60 -220 -60 -170 {lab=#net4}
N 30 170 30 240 {lab=GND}
N -140 240 160 240 {lab=GND}
N 160 170 160 240 {lab=GND}
N -30 -310 -30 -290 {lab=#net1}
N -250 -310 -250 -300 {lab=#net1}
N 30 -60 60 -60 {lab=Vm3}
N -230 -40 -230 -30 {lab=Vm6}
N -230 -90 -230 -40 {lab=Vm6}
N -230 -140 -230 -90 {lab=Vm6}
N -160 150 -160 160 {lab=#net5}
N -160 50 -160 90 {lab=Vv3}
N -20 -0 -20 10 {lab=#net6}
N -270 70 -20 70 {lab=GND}
N -60 70 -60 80 {lab=GND}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -210 -250 0 1 {name=M10
L=2
W=5
nf=1 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
C {devices/code.sym} -450 -300 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -80 -250 0 0 {name=M1
L=2
W=5
nf=1 mult=4
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -40 0 0 1 {name=M3
L=2
W=5  
nf=1 mult=2
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -290 190 0 1 {name=M4
L=2
W=5  
nf=1 mult=2
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -180 190 0 0 {name=M5
L=2
W=5  
nf=1 mult=2
model=nfet_01v8
spiceprefix=X
}
C {isource.sym} -310 20 0 0 {name=I0 value=50u}
C {capa.sym} 30 10 0 0 {name=C1
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -150 10 0 0 {name=l1 lab=GND}
C {gnd.sym} -240 260 0 0 {name=l2 lab=GND}
C {vsource.sym} -230 -170 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} 160 -20 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -160 120 0 0 {name=V3 value=0 savecurrent=false}
C {vsource.sym} -270 40 0 0 {name=V4 value="1.2 AC =0.5" savecurrent=false}
C {sky130_fd_pr/nfet_01v8.sym} -250 0 0 0 {name=M2
L=2
W=5  
nf=1 mult=2
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} -60 80 0 0 {name=l3 lab=GND}
C {vsource.sym} -60 -140 0 0 {name=V5 value=0 savecurrent=false}
C {lab_pin.sym} -230 -110 0 1 {name=p1 sig_type=std_logic lab=Vm6}
C {lab_pin.sym} -160 80 0 1 {name=p2 sig_type=std_logic lab=Vv3}
C {lab_pin.sym} 60 -60 0 1 {name=p3 sig_type=std_logic lab=Vm3}
C {lab_pin.sym} -250 160 0 1 {name=p4 sig_type=std_logic lab=Vm4}
C {simulator_commands_shown.sym} 290 -100 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.ac dec 10 1 10G 
.control
run

PLOT v(Vin1) v(Vin2)
PLOT V(Vm3)
PLOT Vdb(Vm3)
PLOT ph(Vm3)*(180/pi)


.endc
.end

* ngspice commands
"}
C {vsource.sym} -20 40 0 0 {name=V6 value="1.2 AC=-0.5" savecurrent=false}
