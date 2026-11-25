// the-jorker shared parameters (single source of truth). Units mm.
// Every part does: include <../../lib/params.scad>
clr_slide = 0.3;   // sliding fit per side
clr_loose = 0.4;
hole_comp = 0.2;   // add to round hole diameters
chamfer_bottom = 0.4;
wall_min = 1.2;
// screws: [pilot, clearance] self-tapping into PLA
M3 = [2.7, 3.4]; M4 = [3.6, 4.5]; M6_clear = 6.6; M6_head_d = 10;
// robot flange ISO 9409-1-50-4-M6 (RB-Y1 confirmed, G2 assumed)
fl_pcd = 50; fl_bolt_ang = 45; fl_dowel_d = 6; fl_body_d = 88;
fl_rb_pcd = 77; fl_rb_ang = 15;   // RB-Y1 M4 ring, 30 deg from M6 holes
// P01 adapter plate
p01_d = 88; p01_t = 8; p01_cable_d = 12;
p01_cbore_d = 11; p01_cbore_h = 4;
p01_cuff_pcd = 64; p01_cuff_depth = 7;   // 4x M3 pilots for cuff at 0/90/180/270
