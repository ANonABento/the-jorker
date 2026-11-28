// P15 v4.1 ligament strap, dog-bone outline. Set t = 1.2 / 1.6 / 2.0. TPU 95A, flat.
t=1.6; eye_d=5.5; hole_d=2.0; pitch=6; bar_w=3.4; fillet=1.0;
$fn=96;
module outline(){ offset(r=-fillet) offset(r=fillet) union(){
  circle(d=eye_d); translate([0,pitch]) circle(d=eye_d);
  translate([-bar_w/2,0]) square([bar_w,pitch]); } }
linear_extrude(t) difference(){ outline(); circle(d=hole_d); translate([0,pitch]) circle(d=hole_d); }
