// P11 middle bone v4.7 = v4.6 minus P12 v4.2 swept 55-83 deg about y=28, z=7.2, inside the 11.2 mm head support.
// Verified: identical to p11_v47_swept.stl, P11/P12 clash at 75 deg 0.007 mm3, weakest section 96.3 mm2.
// Build with OpenSCAD 2025+ (Manifold). Inputs beside this file: p11_v46.stl, p12_v42.stl
pivot=[0,28,7.2]; a0=55; a1=83; step=0.5;
difference(){
  import("p11_v46.stl");
  intersection(){
    translate([-5.6,14,-1]) cube([11.2,14.3,18]);
    for(a=[a0:step:a1]) translate(pivot) rotate([a,0,0]) translate([0,0,-7.2]) import("p12_v42.stl");
  }
}
