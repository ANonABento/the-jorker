// P10 v4.5: flexion groove R10.0
// Proximal bone. PLA, mm. Print DORSAL side down. Frame: pivots at z=7.2.
// Base: half-spherical socket (r6.3) over metacarpal ball r6, centre y=0.
// Distal: head r=5 on pivot y=45; pegs ON pivot (P11 base pegs sit 6 mm past it).
$fn=56;
clr=0.3; hole_add=0.2;
L=45; Zp=7.2;
ball_r=6.0;
head_r=5.0; head_w=13;
peg_d=2.0; peg_h=1.6; flat=0.8;
kp_x=7.4;   // knuckle peg base; tip at 9.0 = 18 mm width
tendon_d=1.2+hole_add; wire_d=1.6+hole_add;
module body(){ hull(){
  translate([0,2,8]) scale([9,2,8]) sphere(1);
  translate([0,22,7.8]) scale([7.8,2,7.8]) sphere(1);
  translate([0,L-2,Zp]) scale([6.5,2,6.6]) sphere(1);} }
union(){
 for(s=[-1,1]) translate([s*(kp_x-0.5),9,Zp]) rotate([0,s*90,0]) cylinder(d=peg_d,h=peg_h+0.5);  // knuckle pegs
difference(){
  union(){
    difference(){ translate([0,0,-flat]) body(); translate([-20,-20,-5]) cube([40,80,5]); }
    translate([0,L,Zp]) rotate([0,90,0]) cylinder(r=head_r,h=head_w,center=true);
    for(s=[-1,1]) translate([s*(head_w/2-0.3),L,Zp]) rotate([0,s*90,0]) cylinder(d=peg_d,h=peg_h+0.3);
  }
  translate([-20,-20,-5]) cube([40,80,5]);
  translate([0,L,Zp]) difference(){ rotate([0,90,0]) cylinder(r=10.0,h=13,center=true); rotate([0,90,0]) cylinder(r=head_r+0.05,h=14,center=true); translate([-10,-20,-20]) cube([20,40,21.0]); translate([-10,0,-1]) cube([20,20,30]); } // flexion groove
  translate([0,0,Zp]) sphere(r=ball_r+clr);                      // knuckle socket
  translate([0,0,Zp]) rotate([45,0,0]) translate([-20,-20,ball_r]) cube([40,20,20]); // palm-side relief
  for(s=[-1,1]) translate([s*kp_x,9,Zp]) rotate([0,s*90,0]) cylinder(d=6,h=5);   // strap recess
  translate([0,-1,10]) rotate([-90,0,0]) cylinder(d=tendon_d,h=60,$fn=6);  // tendon channel
  translate([2,-1,11]) rotate([-90,0,0]) cylinder(d=wire_d,h=60,$fn=8);    // sensor wire channel
  translate([-1.5,-1,-0.01]) cube([3,60,1.2]);                   // return-elastic groove
}
}
