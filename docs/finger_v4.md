# Finger v4 (anatomical, pinless, breakaway) - first test print

Parts: `cad/parts/finger_v4/`. Open each .scad in OpenSCAD and export STL.

## Decisions (do not reopen)
- Joints: rounded head in shallow cup, 0.3 mm clearance, no pins. Held by TPU side straps (P15) that stretch so the joint pops out under overload.
- Pivots at z=7.2 in every bone frame; P10 joint span 45, P11 span 28.
- Strap pegs at x=+-6.2, one peg on each pivot, other 6 mm past it: strap span stays 6.00 mm through the curl (checked).
- Full curl 85/90/75 deg. Knuckle end stop ~84 deg (0.22 mm3 contact, accepted). Tip joint end stop at full curl (0.04 mm3, accepted).
- Pad P13: 0.05 mm clearance per side on P12 stud, held by 0.5 mm snap lip. Pad rim sits ~2 mm past bone each side (fleshy tip).
- Knuckle strap goes ~1.4 mm slack at 90 deg (safe direction).
- Clash check: 0 mm3 straight and half curl; straps clear all bones at all poses.

## Print
| Part | Material | Orientation | Notes |
|---|---|---|---|
| P16 metacarpal | PLA | back down | small bed-only support under ball |
| P10 proximal | PLA | back down | bed-only tree supports, keep out of socket |
| P11 middle | PLA | back down | brim (53 mm2 contact) |
| P12 tip | PLA | back down | brim (39 mm2 contact) |
| P13 pad | TPU 95A | open side down | 20-30 mm/s, outside AMS, 3 walls |
| P15 strap x6 | TPU 95A | flat | print t=1.2, 1.6, 2.0; 100% infill, brim |

## Bought parts
- 3x1 mm N52 magnet (pad), 2x M3x12 self-tapping (P16 base)
- 0.6-0.8 mm Dyneema tendon, elastic cord return
- MLX90393 board <= 6.4x6.4x1.8 (optional for first print)

## What to feel for on the test print
1. Strap eyelets onto pegs: too tight / too loose?
2. Which strap thickness holds a light grip but pops off at ~1-2 kg sideways?
3. Joints: smooth curl, any binding, does it reach full curl by hand?
4. Knuckle socket on ball: snaps on and off by hand?
5. Pad snap: stays on, swaps by hand?
6. Look and proportion vs your own finger.

Not yet verified: preview images not reviewed by eye; eyelet seating depth not modelled; sizes not yet moved into cad/lib/params.scad; STATUS.md/CHANGELOG.md to be updated after test print feedback.
