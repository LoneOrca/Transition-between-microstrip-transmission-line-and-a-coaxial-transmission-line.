
# Microwave Engineering: Microstrip-to-Coaxial Transition Design

## Project Overview

This project focuses on the design and simulation of a high-performance transition between a **50 Ω microstrip transmission line** and a **50 Ω coaxial transmission line (SMA connector)**. The primary objective was to achieve a well-matched transition at a frequency of **5 GHz**, specifically targeting a return loss ($|S_{11}|$) of **-25 dB or better**.

## Design Specifications

* **Target Frequency:** 5 GHz 
* **Substrate:** 1.27 mm thick Duroid 6010 
* **Dielectric Constant ($\epsilon_{r}$):** 10.7 
* **Dissipation Factor ($tan \delta$):** 0.0023 
* **SMA Connector Dielectric:** Teflon ($\epsilon_{r} = 2.1$) 



## Methodology

The design process involved multiple stages of simulation and optimization using industry-standard tools:

1. **Initial Junction Simulation:** Modeled the direct connection between the microstrip and SMA connector using **Ansys HFSS**.

2. **Impedance Matching:** Designed a matching network using a **shunt stub** to minimize reflections.

3. **ADS Simulation (MStrip V1-V3):** Developed and tuned the matching network in **Keysight ADS**, incorporating microstrip T-junctions (MTEE) and open-end effects (MLEF).

4. **Full-Wave Verification:** Performed a final 3D electromagnetic simulation of the optimized design in **HFSS** to verify performance across a 3 GHz to 7 GHz range.



## Key Results (at 5 GHz)

| Simulation Case | $S_{11}$ (dB) | $S_{21}$ (dB) |
|-----------------|---------------|---------------|
| ADS (MStrip V3) | -56.75 dB | -0.042 dB |
| HFSS (Final V3) | -28.61 dB | -0.051 dB |

*All results successfully met the initial design requirement of |S11| ≤ -25 dB.*

## Tools Used

* **Ansys HFSS:** 3D Electromagnetic simulation.
* **Keysight ADS:** Schematic-level simulation and tuning.
* **MATLAB:** Post-processing and data visualization.

---
Developed as part of the Microwave Engineering (EE 514/414) curriculum at Western New England University.
