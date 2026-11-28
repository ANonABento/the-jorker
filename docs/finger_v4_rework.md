# Finger v4 rework (2026-11-27/28)

## Parts
| Part | Version | Change | Check |
|---|---|---|---|
| P16 metacarpal | v4.7 | Neck 12x12, base fillet, swept clearance | Knuckle 0 mm3 at 85 deg (end stop removed), neck min 67.5 mm2 (+35% vs v4.3) |
| P10 proximal | v4.7 | Narrower groove, peg bosses, swept clearance | 0 mm3 at 90 deg, weakest 93.5 mm2 (+5%) |
| P11 middle | v4.7 | Head support, peg bosses, swept clearance | 0.007 mm3 at 75 deg, weakest 96.3 mm2 (+8%) |
| P12 tip | v4.3 | Ramp instead of square step behind stud | Pad overlap 0, 0.007 mm3 at 75 deg |
| P15 strap | v4.1 | Dog-bone, 5.5 mm eyelets, 1 mm round | Hole 2.0, pitch 6, t 1.2/1.6/2.0 |

Whole finger (straight / 45-45-30 / 85-90-75): only contact is P11/P12 0.007 mm3 at full curl.

## Decisions
- Full curl 85/90/75 deg, toward palm. Knuckle end stop no longer exists.
- Pad: 0.05 mm clearance, held by 0.5 mm snap lip.
- Straps: pegs at x = +/-6.2, eyelets on pivot and 6 mm past it; span constant 6.00 mm.

## Building
- .scad files need OpenSCAD 2025+ with the Manifold backend.
- They import STLs that must sit in this folder (uploaded separately, binary): p10_v46.stl, p11_v46.stl, p11_v47_swept.stl, p12_v42.stl, p16_v46.stl, p10_v47.stl.
- Print-ready: p16_v47.stl, p10_v47.stl, p11_v47_swept.stl, p12_v43.stl, p13 pad, p15 straps.

## Printing
- PLA, back side down: P16 (bed-only support under ball), P10, P11 (brim), P12 (brim).
- TPU 95A flat: pad (open side down), straps at all three thicknesses.
