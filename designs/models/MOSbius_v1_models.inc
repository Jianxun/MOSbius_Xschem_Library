*
* Subckt wrappers around for the transistors on the MOSbius chip
*
* a unit nMOS device has W/L of 16 or 2 x 4u/0.5u fingers
* a unit pMOS device has W/L of 48 or 6 x 4u/0.5u fingers
*

.subckt NMOS_MOSbius D G S B
MN D G S B cmosn W=4u L=0.5u  M=2
.ends



.inc ./tsmc025_public.inc