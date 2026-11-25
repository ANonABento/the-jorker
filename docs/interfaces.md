# Robot interfaces

## RB-Y1 / RB-Y1M tool flange
Source: RB-Y1 catalogue (KR, 2024-12-20), "DETAIL Tool flange"
https://greenbiocoss.ac.kr/fileDownload?bbsId=attachFileMgr&fileId=bdm0OTQoi7&fileSn=1&paramMenuId=attachFileMgr
- 4x M6 helicoil tapped holes, depth 9, on PCD 50, at 45°
- 1x Ø6 +0.03/0 dowel pin hole, depth 5.5, on PCD 50
- 4x M4 tapped holes, depth 7, on PCD 77 (30° offset) – used by RB gripper / FT sensor
- Flange body Ø88 (from the same drawing; confirm)
- Wrist I/O: two 8-pin connectors. A: DI×2, DO×2, V, CAN L/H, GND. B: F/T sensor + CAN.
  Supply voltage not legible in the extract – confirm in the web manual
  (rainbowrobotics.github.io/rby1-dev/).
- Payload 3 kg per arm.
- The 4x M6 / PCD 50 / Ø6 pin layout matches ISO 9409-1-50-4-M6.

## AgiBot G2 end flange
Source: G2 user manual §2.5 https://agibot.com/DOCS/OS/g2-user-manual
- "Standard robotic arm flange"; the hole layout is only an image in the manual.
  Assumed ISO 9409-1-50-4-M6 (same as RB-Y1) until the image is checked.
- Wrist connector M8, 8 pins: 24 V, 2× RS485, 1× CAN-FD. Not hot-swappable.
- Payload 5 kg per arm.

## Design consequence
One adapter plate (P01) for both robots: 4× Ø6.6 clearance holes on PCD 50 at 45°,
a Ø6 dowel boss, and an optional 4× Ø4.5 ring on PCD 77 for RB-Y1 only.
Open: confirm G2 image, confirm RB-Y1 wrist voltage.
