# Status (update every commit)

## Where we are
Spec v0.1 written. Flange interface found (ISO 50-4-M6 on both robots, G2 unconfirmed).
No parts modelled.

## Next step
Write `cad/lib/params.scad` from docs/dimensions.md, then model P01 flange adapter.

## Decisions (don't reopen unless asked)
- Layout B: 5 fingers, 9× MG90S – 6 in cuff (tendons), 3 in palm (2 thumb base, 1 shared splay).
- One flex tendon per finger, coupling all 3 joints; TPU/elastic return on the back.
- Printed breakaway snap sockets, magnet pockets (6×3) for later; crimp-loop tendon release.
- PLA bones, TPU 95A pads/springs. Right hand.
- Self-contained on the wrist flange; no tendon crosses a robot joint.

## Part queue
| ID | Part | State |
|---|---|---|
| lib | params.scad | todo |
| P01 | Flange adapter | todo |
| … | rest per docs/dimensions.md | todo |

## Needs re-check
(none)

## Open questions
- G2 flange image, RB-Y1 wrist voltage
- 2× MG90S in a 32 mm thumb base
- Tendon lever arms 6/5/4 mm (tune on first finger)
