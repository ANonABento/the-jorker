# The Jorker – agent workflow (read this first, every session)

Context gets reset often. Everything needed to continue lives in this repo:
https://github.com/ANonABento/the-jorker

## Start of every session
1. Read `AGENTS.md` (this file), then `STATUS.md` (where we are + next step).
2. Read `docs/dimensions.md` only for the part you're working on (find it by its P-number).
3. Read `docs/interfaces.md` if the part touches the robot flange or wiring.
4. Read the last 3 entries of `CHANGELOG.md`.
Do not re-decide anything listed under "Decisions" in STATUS.md unless the user asks.

## One part per iteration
1. Pick the next part from the part queue in STATUS.md.
2. Model it in `cad/parts/Pxx_<name>/Pxx_<name>.scad`. All sizes come from
   `cad/lib/params.scad` (single source of truth, mirrors docs/dimensions.md).
3. Run cad_check, fix every FAIL, look at the renders.
4. Save `.scad`, `.stl`, iso/front/top `.png` in that folder, and a short `NOTES.md`
   (check output, print orientation, material, hardware, open questions).
5. Update STATUS.md (mark part done, set next step) and add a CHANGELOG entry.
6. Commit all of it in one commit: `Pxx <name> vN: <what changed>`.

## Assemblies
`cad/assemblies/Ax_<name>.scad` only `use <>`s part files – never copy geometry.
Rebuild and re-check the assembly whenever a part in it changes.

## Changing a dimension
Change `docs/dimensions.md` and `cad/lib/params.scad` in the same commit, note it in
CHANGELOG, and list every part that uses it in STATUS.md as "needs re-check".

## Conventions
- Units mm. Origin = robot flange face centre, +Z toward the fingertips,
  +X toward the thumb side (right hand), +Y out of the back of the hand.
- Printer: Bambu P1S, 0.4 nozzle, PLA bones / TPU 95A soft parts.
- Part IDs P01–P19, assemblies A1–A4 (defined in docs/dimensions.md).
