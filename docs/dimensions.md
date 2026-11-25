# Robot Hand — Option B Dimension Spec (v0.1, 2026-11-25)

Status: DRAFT — freeze before any part modelling. All mm. Printer: Bambu P1S, 0.4 nozzle, PLA + TPU 95A.
Frame: origin = flange face centre. +Y toward fingertips, +X toward thumb side (right hand), +Z palm-back (dorsal).

## 0. Global
| Item | Value | Note |
|---|---|---|
| Hand | Right, 5 fingers | Mirror for left |
| Flange → middle fingertip | 281 | 8 + 80 + 95 + 98 |
| Print clearance, sliding fit | 0.2 / side | confirm vs library |
| Press fit (pins) | −0.05 | 3.0 pin → 2.95 hole, ream |
| Free pin hole | 3.2 | joints rotate on pin |
| Min wall | 1.6 (4 perimeters) | |
| Screws | M3 throughout, M6 flange only | |

## 1. Bought hardware (fixed — design around these)
| Part | Size | Qty |
|---|---|---|
| MG90S servo body | 22.8 × 12.2 × 28.5 (ears 32.2 wide, 2.5 thick, holes 27.8 c/c) | 9 |
| MG90S output | 20.7 from body base to ear, spline Ø4.8 | |
| Steel dowel pin | Ø3 × 16 (fingers), Ø3 × 20 (thumb) | 15 + 2 |
| PTFE tube | 4 OD / 2 ID | 1.5 m |
| Tendon | 0.6–0.8 braided PE, ≥20 kg | 5 m |
| Crimp sleeve | Ø1.6 OD Al | 20 |
| Magnet (later) | 6 × 3 disc | 10 |
| Screws | M3×8, M3×12, M3 nuts, M6×12 | kit |
| ESP32 devkit | 51 × 28 × 10 | 1 |
| PCA9685 board | 62 × 25 × 10 | 1 |
| Buck 24→6 V ≥10 A | ~60 × 50 × 22 (TBC) | 1 |

## 2. Flange plate
| Item | Value |
|---|---|
| Diameter × thickness | Ø80 × 8 |
| Robot bolts | 4× Ø6.6 on PCD 63 — PLACEHOLDER, replace per robot |
| Cable hole | Ø12 centre |
| Cuff bolts | 4× M3 on 70 × 50 rectangle |
| Variants | flange_rby1m, flange_g2 (same cuff pattern) |

## 3. Cuff (servo bay)
| Item | Value |
|---|---|
| Outside | 80 (Y) × 80 (X) × 60 (Z) |
| Wall | 2.5 |
| Servos | 6 × MG90S in one row along X, horns facing +Z, pitch 13 |
| Pulley | Ø10 working, groove 1.2 wide, 2 flanges Ø14 |
| Tendon pull per 180° | 15.7 |
| Tensioner | M3 screw per tendon, 10 travel |
| Electronics shelf | under servo row, 75 × 70 × 15 |
| Palm joint | 4× M3 on 60 × 20, tendon window 50 × 20 |
| Lid | dorsal, 2× M3 |

## 4. Palm
| Item | Value |
|---|---|
| Width at knuckles | 85 |
| Length (wrist → knuckle line) | 95 |
| Thickness at fingers | 22 |
| Thickness at thenar (thumb base) | 32 |
| Knuckle line | arc, middle MCP at Y+95, index −2, ring −3, pinky −10 (Y) |
| Finger pitch | 21 (centres X: index +31.5, middle +10.5, ring −10.5, pinky −31.5) |
| Splay servo | centre-dorsal, Y ≈ 55, horn +Z |
| Thumb servos | 2 × MG90S in thenar, X +25…+42, Y 15…60 |
| PTFE tube anchors | 4 + 1 at Y 75, Ø4.2 bores, 8 deep |
| Back lid | 50 × 40 access window, 2× M3 |
| Palm pad | TPU, 3 thick |

## 5. Fingers (module = proximal + middle + distal + pins + pads)
| Finger | Prox | Mid | Dist | Width | Thick | Splay range |
|---|---|---|---|---|---|---|
| Index | 45 | 25 | 20 | 18 | 16 | ±8° |
| Middle | 48 | 28 | 22 | 18 | 16 | 0 (fixed) |
| Ring | 46 | 27 | 21 | 17 | 15 | ±8° |
| Pinky | 38 | 21 | 18 | 15 | 14 | ±15° |

Segment lengths = pin centre to pin centre (distal = pin to tip).

| Joint | Flex range | Pin |
|---|---|---|
| MCP (knuckle) | 0–90° flex, splay on 2nd axis | Ø3 flex + Ø3 splay (perpendicular, saddle) |
| PIP | 0–100° | Ø3 |
| DIP | 0–80° | Ø3 |

| Tendon geometry | Value |
|---|---|
| Channel | Ø1.2, palmar side |
| Moment arm MCP / PIP / DIP | 6 / 5 / 4 (sets curl order: start values, tune on test finger) |
| Return | TPU strip 6 × 1.2 dorsal, or 2 elastic bands |
| Distal anchor | knot pocket Ø3 × 3 at tip |
| Base hook | crimp loop slot 2 wide at proximal base |

| Mount | Value |
|---|---|
| Finger → palm | dovetail 10 wide, 60° flanks, 0.2 clearance, printed latch |
| Breakaway | MCP snap socket, 0.3 interference; magnet pocket Ø6.2 × 3.2 |
| Splay link | ball Ø5 / socket, pops off |

## 6. Thumb
| Item | Value |
|---|---|
| Segments | metacarpal (in palm, servo-driven) + proximal 35 + distal 30 |
| Width / thick | 20 / 18 |
| Base position | X +38, Y 30, rotated 45° toward palm |
| Swing (CMC abduction) | 0–60°, direct drive |
| Opposition rotation | 0–90°, direct drive |
| MCP + IP flex | coupled tendon, 0–60° / 0–80° |

## 7. Mass budget (target)
| Group | g |
|---|---|
| Servos 9 × 13.4 | 121 |
| Prints (PLA ~25% infill) | 250 |
| Electronics + wiring | 90 |
| Hardware | 40 |
| **Total** | **~500** |

## 8. Open items (block freezing)
1. RB-Y1M flange bolt pattern + wrist power/data.
2. AgiBot G2 flange bolt pattern (G2 port: 24 V, 2× RS485, CAN-FD on M8 — confirmed from manual).
3. Two thumb MG90S fit in 32 thick thenar — verify in palm layout.
4. Tendon moment arms — tune on test finger.

## 9. Part list (one file each, then assemblies)
P01 flange_rby1m · P02 flange_g2 · P03 cuff_body · P04 cuff_lid · P05 pulley ×6 · P06 tensioner block · P07 palm_body · P08 palm_lid · P09 splay_link · P10 finger_prox (×4 sizes) · P11 finger_mid · P12 finger_dist · P13 finger_latch · P14 thumb_meta · P15 thumb_prox · P16 thumb_dist · P17 TPU pads · P18 TPU return strips · P19 test stand

Assemblies: A1 finger+stand · A2 palm · A3 cuff · A4 full hand
