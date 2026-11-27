// P11 v4.4: base pegs x=+-6.2 to match P10 head pegs; flexion groove R9.0
// Middle bone. PLA, mm. Print DORSAL side down.
// Base: cup over P10 head (pivot y=0,z=7.2). Distal: head r=5 on pivot y=28.
$fn=56;
clr=0.3; hole_add=0.2;
P=28; Zp=7.2; yb=0; yd=yb+P;
cup_r=5.0; head_r=5.0; head_w=13;
peg_d=2.0; peg_h=1.6; flat=0.8;
tendon_d=1.2+hole_add; wire_d=1.6+hole_add;
module body(){ hull(){
  translate([0,yb+4,8]) scale([7.6,2,8]) sphere(1);
  translate([0,yb+17,7.6]) scale([6.8,2,7.4]) sphere(1);
  translate([0,yd-2,Zp]) scale([6.5,2,6.6]) sphere(1);} }
difference(){
  union(){
    difference(){ translate([0,0,-flat]) body(); translate([-20,-20,-5]) cube([40,60,5]); }
    translate([0,yd,Zp]) rotate([0,90,0]) cylinder(r=head_r,h=head_w,center=true);
    for(s=[-1,1]) translate([s*6.2,yb+6,Zp]) rotate([0,s*90,0]) cylinder(d=peg_d,h=peg_h+0.3);
    for(s=[-1,1]) translate([s*(head_w/2-0.3),yd,Zp]) rotate([0,s*90,0]) cylinder(d=peg_d,h=peg_h+0.3);
  }
  translate([-20,-20,-5]) cube([40,60,5]);
  translate([0,yd,Zp]) difference(){ rotate([0,90,0]) cylinder(r=9.0,h=13,center=true); rotate([0,90,0]) cylinder(r=head_r+0.05,h=14,center=true); translate([-10,-20,-20]) cube([20,40,21.0]); translate([-10,0,-1]) cube([20,20,30]); } // flexion groove
  translate([0,yb,Zp]) rotate([0,90,0]) cylinder(r=cup_r+clr,h=40,center=true);
  translate([0,yb,Zp]) rotate([45,0,0]) translate([-20,-20,cup_r]) cube([40,20,20]); // palm-side relief
  translate([0,yb+1,10]) rotate([-90,0,0]) cylinder(d=tendon_d,h=40,$fn=6);
  translate([2,yb+1,11]) rotate([-90,0,0]) cylinder(d=wire_d,h=40,$fn=8);
  translate([-1.5,yb+1,-0.01]) cube([3,40,1.2]);
}
