# The Jorker – change log

## 2026-11-25
- Chose layout B: 5 fingers, anatomical mix. That's 9 MG90S servos: 6 in a short cuff that pull tendons, and 3 in the palm (2 for the thumb base, 1 shared splay).
- Wrote docs/dimensions.md, the full dimension spec. Parts P01–P19 and assemblies A1–A4 are defined, and nothing is modelled yet.
- Open items: RB-Y1M and G2 flange bolt patterns, RB-Y1M wrist power and data, whether the thumb base fits, and tuning the tendon lever distances.
- Superseded: the first layout model (cad/hand_layout), which used direct-drive knuckles and kept it for reference only.

- Added AGENTS.md (session workflow for context resets), STATUS.md (progress + part queue) and docs/interfaces.md.
- Found the RB-Y1 tool flange: 4× M6 on PCD 50 plus a Ø6 dowel (ISO 9409-1-50-4-M6), and 4× M4 on PCD 77. The G2 is assumed to match. That means one adapter plate fits both robots.

- Added cad/lib/params.scad (shared dimensions).
- P01 flange adapter v1: Ø88 x 8, ISO 50-4-M6 + dowel, RB-Y1 M4 ring, Ø12 cable hole, 4x M3 cuff pilots on PCD 64. cad_check PASS.
