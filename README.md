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
