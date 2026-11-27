// P12 v4.2 fingertip bone (pegs x=+-6.2). PLA, mm. Print DORSAL side down.
// Base cup over P11 head (no pin). Palm side: stud that the P13 pad snaps over.
$fn=56;
clr=0.3; hole_add=0.2; pad_fit=0.1;
L=26; T=16; flat=0.8;
cup_r=5.0;
peg_d=2.0; peg_h=1.6;
sx=6.2-pad_fit; sy=8.1-pad_fit; sz=3.1-pad_fit; lip=0.5; lip_h=0.8;
Zs=12.5; Ys=17;
board=6.4; board_t=1.8;                   // MLX90393 board pocket
tendon_d=1.2+hole_add; wire_d=1.6+hole_add; knot_d=3.0+hole_add;
module body(){ hull(){
  translate([0,2,8]) scale([7.25,2,8]) sphere(1);
  translate([0,14,7.5]) scale([6.5,2,7]) sphere(1);
  translate([0,L-6,7]) scale([6,6,6.5]) sphere(1); } }
module stud(){ translate([0,Ys,Zs]) difference(){
  intersection(){ scale([sx,sy,sz]) sphere(1); translate([-10,-12,0]) cube([20,24,5]); }
  translate([0,0,-0.01]) linear_extrude(lip_h) difference(){ scale([sx+1,sy+1]) circle(1); scale([sx-lip,sy-lip]) circle(1);} } }
translate([0,2,0]) difference(){
  union(){
    difference(){ translate([0,0,-flat]) body();
      translate([-20,-20,-5]) cube([40,60,5]);
      translate([-20,Ys-11,Zs]) cube([40,30,10]); }
    stud();
    for(s=[-1,1]) translate([s*6.2,4,7.2]) rotate([0,s*90,0]) cylinder(d=peg_d,h=peg_h+0.3);
  }
  translate([0,-cup_r+3,7.2]) rotate([0,90,0]) cylinder(r=cup_r+clr,h=40,center=true); // cup
  translate([0,-2,7.2]) rotate([45,0,0]) translate([-20,-20,cup_r]) cube([40,20,20]); // palm-side relief
  translate([-board/2,Ys-board/2,Zs+0.3]) cube([board,board,10]);   // sensor pocket
  translate([2,-1,Zs-1.5]) rotate([-90,0,0]) cylinder(d=wire_d,h=Ys-1,$fn=8);
  translate([2,Ys-1.5,Zs-1.5]) cylinder(d=wire_d,h=3,$fn=8);
  translate([0,-1,Zs-2.5]) rotate([-90,0,0]) cylinder(d=tendon_d,h=12,$fn=6);
  translate([0,11,-1]) cylinder(d=knot_d,h=Zs-2.5+1.6);           // tendon knot well
  translate([-1.5,-1,-0.01]) cube([3,21,1.2]);                     // return-elastic groove
  translate([0,20,-1]) cylinder(d=2.5+hole_add,h=4);              // elastic knot well
  translate([0,0,-0.01]) linear_extrude(0.4) difference(){square(60,center=true);offset(-0.4) projection(cut=true) translate([0,0,-0.5]) translate([0,0,-flat]) body();} // bottom chamfer
}
