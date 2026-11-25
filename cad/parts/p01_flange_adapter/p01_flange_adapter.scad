include <../../lib/params.scad>
$fn=96;
module p01(){
 difference(){
  union(){ translate([0,0,chamfer_bottom]) cylinder(d=p01_d,h=p01_t-chamfer_bottom);
           cylinder(d1=p01_d-2*chamfer_bottom,d2=p01_d,h=chamfer_bottom); }
  translate([0,0,-1]) cylinder(d=p01_cable_d+hole_comp,h=p01_t+2);          // cable
  for(a=[0:90:270]) rotate(a+fl_bolt_ang) translate([fl_pcd/2,0,0]){        // 4x M6 + counterbore
    translate([0,0,-1]) cylinder(d=M6_clear,h=p01_t+2);
    translate([0,0,p01_t-p01_cbore_h]) cylinder(d=p01_cbore_d,h=p01_cbore_h+1);}
  translate([fl_pcd/2,0,-1]) cylinder(d=fl_dowel_d+hole_comp+0.1,h=6.5);   // dowel, blind
  for(a=[0:90:270]) rotate(a+fl_rb_ang) translate([fl_rb_pcd/2,0,-1]) cylinder(d=M4[1],h=p01_t+2); // RB-Y1 M4 ring
  for(a=[0:90:270]) rotate(a) translate([p01_cuff_pcd/2,0,p01_t-p01_cuff_depth]) cylinder(d=M3[0],h=p01_cuff_depth+1); // cuff M3 pilots
 }}
p01();
