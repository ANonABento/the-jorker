// P16 v4.3 metacarpal (index), flexion groove R9.5. PLA, mm. Print DORSAL side down (pivot z=7.2).
// Distal: R6 knuckle ball at y=0 for the P10 socket. Base: block screws to palm frame with 2x M3.
$fn=56;
clr=0.3; hole_add=0.2;
Zp=7.2; ball_r=6.0; L=60;
neck_w=10;
peg_d=2.0; peg_h=1.6; peg_y=-1.5;
m3_clr=3.4;
base_l=14; base_w=16; base_h=10;
tendon_slot=1.6;
difference(){
  union(){
    translate([0,0,Zp]) sphere(r=ball_r);
    hull(){ translate([0,-5,Zp]) scale([neck_w/2,1,5]) sphere(1);
            translate([0,-(L-base_l),5.5]) scale([7,1,5.5]) sphere(1); }
    translate([-base_w/2,-L,0]) cube([base_w,base_l,base_h]);
    for(s=[-1,1]) translate([s*(neck_w/2-0.5),peg_y,Zp]) rotate([0,s*90,0]) cylinder(d=peg_d,h=peg_h+0.5);
  }
  translate([-20,-80,-5]) cube([40,100,5]);   // bed flat
  translate([0,0,Zp]) difference(){ sphere(r=9.5); sphere(r=ball_r+0.05); translate([-20,-40,-40]) cube([40,80,41.0]); translate([-20,0,-1]) cube([40,20,30]); } // flexion groove
  translate([-tendon_slot/2,-L-1,Zp+2.6]) cube([tendon_slot,L+10,10]); // tendon groove
  for(y=[-L+4,-L+10]) translate([0,y,-1]) cylinder(d=m3_clr,h=20);     // M3 to palm frame
}
