// P12 fingertip bone v4.3 = v4.2 with the step behind the pad stud replaced by a straight ramp
// (z 15.4 @ y 5 -> z 12.5 @ y 8.5, ends y 9.3). Verified: identical to p12_v43.stl,
// removed 11.2 mm3, pad overlap 0, P11/P12 @75 deg 0.007 mm3.
// Build with OpenSCAD 2025+ (Manifold). Input beside this file: p12_v42.stl
difference() {
  import("p12_v42.stl", convexity = 10);
  rotate([90, 0, 90]) linear_extrude(height = 20, center = true)
    polygon([[5, 15.4], [8.5, 12.5], [9.3, 12.5], [9.3, 20], [5, 20]]);
}
