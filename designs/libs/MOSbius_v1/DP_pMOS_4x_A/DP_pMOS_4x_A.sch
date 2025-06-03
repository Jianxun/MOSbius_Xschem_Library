v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 0 90 -0 {lab=sub}
N -20 -0 -0 -0 {lab=gate}
N 40 -70 40 -30 {lab=source}
N 40 -70 60 -70 {lab=source}
N 40 30 40 70 {lab=drain}
N 40 70 60 70 {lab=drain}
N -40 -0 -20 0 {lab=gate}
C {devices/pmos4.sym} 20 0 0 0 {name=M1 model=nmos w=5u l=0.18u del=0 m=1}
C {devices/iopin.sym} 60 70 0 0 {name=p2 lab=drain}
C {devices/iopin.sym} 60 -70 0 0 {name=p4 lab=source}
C {devices/iopin.sym} 90 0 0 0 {name=p1 lab=sub}
C {devices/iopin.sym} -40 0 0 1 {name=p3 lab=gate}
