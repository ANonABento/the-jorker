// P10 proximal bone v4.7 = v4.6 minus P11 v4.7 swept 70-95 deg about y=45, z=7.2, inside the 11 mm groove box.
// Verified: identical to p10_v47.stl, P10/P11 clash 0/45/90 deg = 0/0/0, weakest section 93.5 mm2.
// Build with OpenSCAD 2025+ (Manifold). Inputs beside this file: p10_v46.stl, p11_v47_swept.stl
a0 = 70; a1 = 95; da = 0.5;
pivot_y = 45; pivot_z = 7.2;
module p11_at(a) translate([0, pivot_y, pivot_z]) rotate([a, 0, 0]) translate([0, 0, -pivot_z]) import("p11_v47_swept.stl");
difference() {
  import("p10_v46.stl");
  intersection() { union() for (a = [a0 : da : a1]) p11_at(a); translate([-5.5, 30, 0]) cube([11, 20, 20]); }
}
