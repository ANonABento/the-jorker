# Status (update every commit)

## Where we are
Spec v0.1. cad/lib/params.scad written. P01 flange adapter v1 modelled + checked (not printed).

## Next step
Model P02 cuff shell (6x MG90S, bolts to P01 via 4x M3 on PCD 64).

## Decisions (don't reopen unless asked)
- Layout B: 5 fingers, 9x MG90S – 6 in cuff (tendons), 3 in palm (2 thumb base, 1 shared splay).
- One flex tendon per finger, coupling all 3 joints; TPU/elastic return on the back.
- Printed breakaway snap sockets, magnet pockets (6x3) for later; crimp-loop tendon release.
- PLA bones, TPU 95A pads/springs. Right hand.
- Self-contained on the wrist flange; no tendon crosses a robot joint.
- All dimensions live in cad/lib/params.scad.

## Part queue
| ID | Part | State |
|---|---|---|
| lib | params.scad | done |
| P01 | Flange adapter | v1 modelled, awaiting test print |
| P02 | Cuff | next |
| … | rest per docs/dimensions.md | todo |

## Needs re-check
(none)

## Open questions
- G2 flange image, RB-Y1 wrist voltage
- 2x MG90S in a 32 mm thumb base
- Tendon lever arms 6/5/4 mm (tune on first finger)
