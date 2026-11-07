# Parameterized Asynchronous FIFO

## Overview

Designed and implemented a parameterized Asynchronous FIFO in Verilog, allowing data transfer between two independent clock domains.

The design uses **Gray-code pointer synchronization** to safely transfer pointer information across clock domains and includes full and empty detection logic.

The design was taken through a complete RTL-to-GDSII flow using **Yosys, OpenROAD and the SkyWater SKY130HD PDK**.

## Design Features

- Parameterized FIFO data width and depth
- Independent read and write clock domains
- Gray-code read and write pointers
- Two-stage synchronizers for clock-domain crossing
- FIFO full and empty detection
- Asynchronous reset

## Tools and Technology

| Tool | Purpose |
| Verilog | RTL Design |
| Icarus Verilog | Simulation |
| Yosys | Logic Synthesis |
| OpenROAD | Physical Design |
| OpenSTA | Static Timing Analysis |
| SkyWater SKY130HD | Standard Cell Library |

## RTL-to-GDSII Flow

1. RTL Design
2. Functional Simulation
3. Lint Checks
4. Logic Synthesis
5. Floorplanning
6. Placement
7. Clock Tree Synthesis (CTS)
8. Global and Detailed Routing
9. Parasitic Extraction
10. Static Timing and Power Analysis
11. GDSII Generation

## Physical Design Results

| Parameter | Result |
|---|---:|
| Standard Cell Area | 3402 µm² |
| Core Utilization | 47% |
| Critical Path Delay | 3.962 ns |
| Read Setup Slack | +17.30 ns |
| Write Setup Slack | +16.47 ns |
| Hold Slack | +0.44 ns |
| Total Power | 0.306 mW |
| Lint Violations | 0 |

## Final Layout

The final GDSII layout was generated using the OpenROAD flow with the SkyWater SKY130HD PDK.
