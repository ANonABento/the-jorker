// P16 metacarpal v4.7 = P16 v4.6 (neck 12x12 + base fillet) minus P10 v4.7 swept 68-92 deg
// about the knuckle pivot (y=0, z=7.2), cut only inside the full-width contact band.
// Verified: identical to p16_v47.stl (0.000 mm3), P16/P10 clash 0/45/85 deg = 0/0/0, neck min 67.5 mm2.
// Build with OpenSCAD 2025+ (Manifold backend). Inputs beside this file: p16_v46.stl, p10_v47.stl
ROT_SIGN = 1; // +1 = curl toward palm, verified
A0 = 68; A1 = 92; STEP = 0.5;
PIV = [0, 0, 7.2];
BAND_MIN = [-9.0, -3.1, 6.84];
BAND_MAX = [ 9.0,  0.3, 9.2];
module p10_at(a) translate(PIV) rotate([ROT_SIGN * a, 0, 0]) translate(-PIV) import("p10_v47.stl", convexity = 10);
module band() translate(BAND_MIN) cube(BAND_MAX - BAND_MIN);
difference() {
  import("p16_v46.stl", convexity = 10);
  intersection() { band(); union() for (a = [A0 : STEP : A1]) p10_at(a); }
}
