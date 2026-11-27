// P13 TPU fingertip pad. TPU 95A, mm. Print OPEN SIDE DOWN (rim on bed, dome up).
// Snaps over P12 stud; 3x1 N52 magnet pressed into pocket from inside.
$fn=72;
hole_add=0.2;
mag_d=3.0+hole_add; mag_h=1.0+0.2;
skin=0.8;
vent_d=1.2;
rx=7.6; ry=9.5; rz=5.1;
wall=1.4;
lip=0.5; lip_h=0.8;
top_t=skin+mag_h;
module outer(){ intersection(){ scale([rx,ry,rz]) sphere(1);
  translate([-rx,-ry,0]) cube([2*rx,2*ry,rz]); } }
module cavity(){ intersection(){ scale([rx-wall,ry-wall,rz-top_t]) sphere(1);
  translate([-rx,-ry,-1]) cube([2*rx,2*ry,rz]); } }
module lip_ring(){ translate([0,0,-0.01]) linear_extrude(lip_h)
  difference(){ scale([rx-wall,ry-wall]) circle(1); scale([rx-wall-lip,ry-wall-lip]) circle(1);} }
difference(){
  outer();
  difference(){ cavity(); lip_ring(); }
  translate([0,0,rz-top_t-0.5]) cylinder(d=mag_d,h=0.5+mag_h);
  translate([0,0,rz-skin-0.5]) cylinder(d=vent_d,h=skin+2);
  translate([0,0,-0.01]) linear_extrude(0.4,scale=1) difference(){
    scale([rx+1,ry+1]) circle(1); scale([rx-0.4,ry-0.4]) circle(1);}
}
