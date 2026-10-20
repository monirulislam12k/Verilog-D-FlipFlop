# 4-Bit/Single D Flip-Flop (DFF) Simulation with Edge-Triggered Logic 📉⚡

A hardware description project implementing a synchronous, positive-edge-triggered **D Flip-Flop (DFF)** using Verilog HDL. The repository features behavioral design source files, a self-checking testbench framework, and automated waveform simulations executed inside the Questa/ModelSim environment.

---

## 🚀 Architectural Overview

The D Flip-Flop operates as a fundamental sequential logic element that samples its input data (`d`) precisely on the rising edge (positive edge transition) of the clock signal (`clk`). 

### Key Characteristics:
- **Synchronous Storage:** Changes in output (`q`) occur only in sync with the clock's positive edge.
- **Data Stability:** Prevents intermediate glitches or hazards on input `d` from affecting output states outside clock edges.

---

## 🔌 Signal Interface Specifications

| Signal Name | Port Type | Bit Width | Functional Description |
| :--- | :--- | :--- | :--- |
| `clk` | Input | 1-bit | Master System Clock (Positive-Edge Triggered) |
| `d` | Input | 1-bit | Synchronous Data Input Line |
| `q` | Output | 1-bit | Registered Data Output |

---


### Waveform Visual Observation:
- Output `q` holds its prior binary value stable across all trailing clock intervals.
- Delays between input shifts (`d=1` at 2ns) and output updates (`q=1` at 5ns) visually validate the edge-triggered latching behavior.
