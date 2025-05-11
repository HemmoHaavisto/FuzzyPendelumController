# Fuzzy Pendulum Controller

This repository contains Julia Pluto notebooks demonstrating control methods for an inverted pendulum system using two different approaches:

## Files

### 1. `PID.jl`

This file implements a classic PID (Proportional-Integral-Derivative) controller to balance an inverted pendulum mounted on a cart. The notebook includes:

- Definitions of system parameters (pendulum mass, cart mass, length, gravitational constant).
- PID controller algorithm with specified gains (`Kp`, `Ki`, and `Kd`).
- Simulation loop using Euler integration for solving system dynamics.
- Visualizations: pendulum angle, cart position, and control force over time.

### 2. `plutoPendelum.jl`

This notebook presents a fuzzy logic-based control method (Sugeno-type fuzzy inference system) to stabilize the inverted pendulum. Key features include:

- Definition and configuration of fuzzy variables (angle, angular velocity, position, and velocity).
- Construction of Sugeno-type fuzzy inference rules.
- Simulation of system dynamics using fuzzy logic control.
- Visualization of pendulum angle, cart position, and fuzzy control force.

## Requirements

Ensure Julia and Pluto.jl are installed. Additionally, these notebooks require:

- `Plots.jl`
- `FuzzyLogic.jl` (for the fuzzy logic controller)

## Usage

To run the simulations:

1. Launch Julia and start Pluto:

   ```julia
   using Pluto
   Pluto.run()
   ```

2. Open either `PID.jl` or `plutoPendelum.jl` notebook from the repository.

3. Execute the notebook cells in order to simulate the pendulum control system and visualize the results.
