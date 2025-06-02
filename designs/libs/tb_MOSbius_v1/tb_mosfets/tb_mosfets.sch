v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -120 -60 -120 -40 {lab=D1}
N -190 0 -160 0 {lab=G1}
N -120 40 -120 60 {lab=GND}
N -120 50 -110 50 {lab=GND}
N -110 10 -110 50 {lab=GND}
C {libs/MOSbius_v1/DP_nMOS_4x_A/DP_nMOS_4x_A.sym} -160 0 0 0 {name=x2}
C {devices/lab_pin.sym} -190 0 0 0 {name=p1 sig_type=std_logic lab=G1}
C {devices/lab_pin.sym} -120 -60 0 0 {name=p2 sig_type=std_logic lab=D1}
C {devices/gnd.sym} -120 60 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -600 -140 0 0 {name=stimulus 
only_toplevel=false 
value="
* DC voltage source syntax:
* V\{i\} \{plus\} \{minus\} \{Vdc\}
VG1 G1 GND 1
VD1 D1 GND 1
"
}
C {devices/code_shown.sym} -600 40 0 0 {name="Simulation Control"
only_toplevel=false 
value="
.control
* DC sweep syntax:
* DC \{Vsrc\} \{Vstart\} \{Vstop\} \{Vstep\}
DC VD1 0 1 0.01
write tb_mosfets.raw
.endc
"
}
C {devices/code_shown.sym} -600 -270 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
