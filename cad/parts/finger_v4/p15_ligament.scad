// P15 TPU side-ligament strap. TPU 95A, mm. Print flat, 100% infill.
// Test set: -D t=1.2 / 1.6 / 2.0. One peg on the joint pivot keeps the 6 mm span constant.
$fn=48;
t=1.6;
pitch=6.0;
peg_d=2.0;
eye_d=2.0;
ring_od=5.0;
web_w=3.0;
difference(){
  union(){
    for(y=[0,pitch]) translate([0,y,0]) cylinder(d=ring_od,h=t);
    translate([-web_w/2,0,0]) cube([web_w,pitch,t]);
  }
  for(y=[0,pitch]) translate([0,y,-1]) cylinder(d=eye_d,h=t+2);
}
