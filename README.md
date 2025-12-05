# TinySoC – 8-bit Microcontroller SoC on Sky130 (LibreLane / OpenROAD Flow)

TinySoC is a minimal 8-bit microcontroller-style SoC implemented on the open-source **SkyWater SKY130** process using the **LibreLane** ASIC flow (OpenROAD, Yosys, Magic, Netgen, KLayout).

The goal of this project is to demonstrate a **complete RTL → GDSII flow** for a small but realistic SoC:
- Custom 8-bit CPU
- Data RAM
- Memory-mapped UART peripheral
- Memory-mapped timer
- Simple address-decoded bus interconnect

This repo is designed as a **portfolio project** to showcase:
- Digital design (RTL)
- SoC integration
- Physical design (PnR)
- Physical verification (DRC/LVS)
- Use of open-source EDA tools

---

## Block Diagram

```text
           +-----------------------------+
           |           TinySoC           |
           |                             |
           |   +-----------+             |
   clk --->|-->|           |             |
 rst_n --->|-->|  tiny_cpu |             |
           |   |           |             |
           |   +-----------+             |
           |      |   |                  |
           |  bus |   | acc_out[7:0]     |
           |      v   v                  |
           |   +-----------+             |
           |   | soc_bus   |             |
           |   +--+-----+--+             |
           |      |     |                |
           |   +--+--+  |   +---------+  |
           |   | RAM |  |   |  UART   |--+--> uart_tx
           |   +-----+  |   +---------+  |
           |            |   +---------+  |
           |            +-->+ TIMER   |  |
           |                +---------+  |
           |                             |
           |      gpio[3:0] <= ACC[3:0]  |
           +-----------------------------+
````
---

## About
> **Designed and implemented an 8-bit microcontroller-style SoC (“TinySoC”) on the open-source SkyWater SKY130 process using the LibreLane ASIC flow (Yosys, OpenROAD, Magic, Netgen, KLayout).**

> **Implemented a custom 8-bit accumulator CPU with memory-mapped peripherals (UART and timer), including bus interconnect, single-port data RAM, and program ROM in synthesizable Verilog.**

> **Completed full RTL → GDSII flow: Verilator lint, Yosys synthesis, OpenROAD floorplanning, placement, clock tree synthesis, routing, timing optimization, Magic DRC, Netgen LVS, and KLayout final GDS inspection.**

> **Analyzed post-route timing (WNS / TNS), area, and utilization; tuned floorplan and placement density to meet a 50 MHz clock target on SKY130 standard-cell libraries.**

> **Generated documentation and waveform/layout screenshots demonstrating SoC behavior (CPU instruction execution, UART transmissions, timer operation) and physical implementation results.**

> **Tools:** LibreLane, Yosys, OpenROAD, Magic, Netgen, KLayout, Verilator, Icarus Verilog, GTKWave.

---

## 1️⃣ GitHub Repo Structure

```text
tiny-soc-sky130/
  rtl/
    tiny_soc.v
    tiny_cpu.v
    tiny_rom.v
    soc_bus.v
    ram_1p_128x8.v
    uart_tx.v
    uart_rx.v
    uart_mmio.v
    timer_mmio.v
  sim/
    tb_tiny_soc.v
    run_sim.sh           # (optional) iverilog/verilator script
  config/
    config.json          # LibreLane config
  runs/                  # (optional) include a *trimmed* run or just logs
    README_runs.md       # explain how to regenerate
  docs/
    block_diagram.png
    soc_architecture.md
    wave_uart_tx.png
    klayout_top.png
    klayout_core_zoom.png
    timing_report.txt
    drc_summary.txt
    lvs_summary.txt
  README.md
  LICENSE
```
---

## Features

* **Technology:** SkyWater SKY130 (e.g. `sky130_fd_sc_hd`)
* **CPU:**

  * 8-bit accumulator-based core
  * Simple instruction set (LDI, ADDI, SUBI, JMP, JZ, OUT, LOAD)
  * Program stored in internal ROM (`tiny_rom`)
* **Memory:**

  * 128 × 8 single-port RAM (data memory)
* **Peripherals (memory-mapped):**

  * UART (8N1):

    * TX and RX
    * Status register (TX busy, RX ready)
  * Timer:

    * 16-bit free-running counter
    * Enable/clear control register
* **Bus Interconnect:**

  * Simple 8-bit address bus
  * Address decoding:

    * `0x00–0x7F` → Data RAM
    * `0x80–0x8F` → UART
    * `0x90–0x9F` → Timer
* **Top-level I/O:**

  * `clk`, `rst_n`
  * `uart_tx`, `uart_rx`
  * `gpio[3:0]` (mapped to ACC lower bits)

---

## Tool Flow

This project uses **LibreLane** to orchestrate the full open-source flow:

* **Lint & Simulation:**

  * Verilator (lint)
  * Optional RTL simulation with Icarus/Verilator
* **Synthesis:**

  * Yosys + ABC
* **Place & Route (PnR):**

  * OpenROAD:

    * Floorplanning
    * Tapcell & decap insertion
    * Power distribution network (PDN)
    * Global placement (RePlAce)
    * Detailed placement (OpenDP)
    * Clock tree synthesis (TritonCTS)
    * Routing (FastRoute + TritonRoute)
    * Timing repair (Resizer)
* **Physical Verification:**

  * Magic (DRC + GDS streamout)
  * Netgen (LVS)
* **Layout Viewing:**

  * KLayout (final GDS inspection)

---

## Directory Structure

```text
rtl/          # All synthesizable Verilog RTL
sim/          # Testbench and simulation scripts
config/       # LibreLane config.json
docs/         # Block diagrams, reports, screenshots
runs/         # (optional) Example LibreLane run artifacts
```

Key RTL files:

* `tiny_soc.v`      – SoC top-level (clock, reset, UART pins, GPIO)
* `tiny_cpu.v`      – 8-bit accumulator CPU + bus master
* `tiny_rom.v`      – Hard-coded program ROM
* `soc_bus.v`       – Address decoder and read mux
* `ram_1p_128x8.v`  – 128 × 8 single-port data RAM
* `uart_tx.v`       – UART transmitter (8N1)
* `uart_rx.v`       – UART receiver (8N1)
* `uart_mmio.v`     – Memory-mapped UART wrapper
* `timer_mmio.v`    – Memory-mapped timer

---

## How to Run the Flow (LibreLane)

From within a Nix shell (LibreLane environment):

```bash
cd /path/to/tiny-soc-sky130

# Run the full "Classic" RTL → GDS flow
librelane config/config.json
```

LibreLane will create a run directory, e.g.:

```text
runs/RUN_2025-11-25_21-08-04/
```

The final GDS and DEF are located under:

```text
runs/RUN_.../final/gds/tiny_soc.gds
runs/RUN_.../final/def/tiny_soc.def
```

---

## Simulation

A simple testbench is provided in `sim/tb_tiny_soc.v`.

Example (with Icarus Verilog):

```bash
cd sim
iverilog -o tiny_soc_tb.vvp ../rtl/*.v tb_tiny_soc.v
vvp tiny_soc_tb.vvp
gtkwave tiny_soc.vcd &
```

This exercises:

* Reset sequence
* CPU executing the ROM program
* UART TX activity
* Timer counting

---

### Magic DRC (Design Rule Check)

The final post-route GDS was checked using Magic with the Sky130A
technology.

Key results (from `docs/magic_drc/magic-drc.log`):

- **DRC engine:** Magic 8.3, Sky130A tech
- **DRC style:** drc(full)
- **Total DRC errors:** 0

Magic reports:

> `No errors found.`
> `COUNT: 0`

A detailed violation report is available in
`docs/magic_drc/drc_violations.magic.rpt`.

---

## Possible Extensions / Future Work

* Add GPIO / SPI peripheral
* Implement interrupts for the timer
* Replace flop-based RAM with a hard DFFRAM or SRAM macro
* Run gate-level simulation with SDF back-annotation
* Map the same RTL to an FPGA and compare area/timing/power

---

## License

MIT

---
