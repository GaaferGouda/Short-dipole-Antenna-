# Short Dipole Antenna Radiation Pattern Visualization

> **Author:** Ahmed Khaled Fathy
>
> **Supervisors:**
>
> - Dr. Nur ad-Din M. Salem
> - Eng. Ehab

This MATLAB project provides comprehensive visualizations of short dipole antenna radiation patterns, demonstrating both E-plane (E*θ) and H-plane (H*φ) patterns in multiple coordinate systems. The project helps understand the characteristic radiation behavior of short dipole antennas through various graphical representations.

## Contents

1. [Project Description](#project-description)
2. [MATLAB Scripts](#matlab-scripts)
3. [Results](#results)
4. [How to Run](#how-to-run)
5. [Additional Resources](#additional-resources)

## Project Description

The code generates detailed visualizations of radiation patterns characteristic of short dipole antennas, including:

- **E-plane Patterns:** Shows the figure-8 shaped pattern typical of dipole radiation in the E-plane
- **H-plane Patterns:** Demonstrates the omnidirectional radiation pattern in the H-plane
- **Multiple Representations:**
  - Polar coordinate plots for intuitive pattern visualization
  - Cartesian coordinate plots for precise measurement reference
  - 3D visualization combining both patterns
- **Normalized Field Strengths:** All patterns are normalized for standardized comparison

## MATLAB Scripts

The project consists of two main MATLAB scripts:

1. [`task3.m`](task3.m)

   - Generates four separate plots:
     - E-plane pattern in polar coordinates
     - H-plane pattern in polar coordinates
     - E-plane pattern in Cartesian coordinates
     - H-plane pattern in Cartesian coordinates
   - Includes proper axis labeling and grid formatting

2. [`extra.m`](extra.m)
   - Creates a 3D visualization combining both patterns
   - Features interactive viewing capabilities
   - Includes a cutaway view for better pattern observation

## Results

### E-Plane Radiation Pattern (Polar Coordinates)

![E-Theta on polar](/Assits/Epolar.png)

shaped radiation pattern showing the characteristic E-plane distribution

### H-Plane Radiation Pattern (Polar Coordinates)

![H-Phi on polar](/Assits/Hpolar.png)

Uniform circular pattern demonstrating omnidirectional radiation in the H-plane

### E-Plane Radiation Pattern (Cartesian Coordinates)

![E-Theta on Cartesian](/Assits/Ecart.png)

E-plane pattern mapped to Cartesian coordinates for precise measurement reference

### H-Plane Radiation Pattern (Cartesian Coordinates)

![H-Phi on Cartesian](/Assits/Hcart.png)

H-plane omnidirectional pattern represented in Cartesian coordinates

### Combined 3D Radiation Pattern

![E-Theta and H-Phi on 3D Cartesian](/Assits/3dplot.png)

Three-dimensional visualization showing the complete radiation pattern with cutaway view

## How to Run

1. **Prerequisites:**

   - MATLAB (any recent version)
   - Basic MATLAB plotting toolbox

2. **Installation:**

   - Clone this repository: `git clone https://github.com/AhmedKhaledp-0/Short-dipole`
   - Or download the ZIP file and extract

3. **Execution:**

   - Open MATLAB and navigate to the project directory
   - For 2D patterns:
     ```matlab
     run task3.m
     ```
   - For 3D visualization:
     ```matlab
     run extra.m
     ```

4. **Viewing Results:**
   - Multiple figure windows will open automatically
   - Use MATLAB's figure window controls to:
     - Zoom in/out
     - Rotate 3D views
     - Save plots as images

## Additional Resources

- [`task3.pdf`](/Assits/task3.pdf): Comprehensive technical documentation including:
  - Theoretical background
  - Mathematical formulations
  - Detailed code explanations
  - Implementation considerations
  - Additional visualizations and analysis

## Technical Notes

- The E-plane pattern follows a sin(θ) distribution
- The H-plane pattern is uniform (constant value of 1)
- All patterns are normalized for consistency
- Coordinates:
  - θ: 0 to π (E-plane)
  - φ: 0 to 2π (H-plane)
