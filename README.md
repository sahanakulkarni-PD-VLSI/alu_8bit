# 8-Bit Arithmetic Logic Unit (ALU) Design

## Project Overview
This repository contains the design and implementation of an 8-bit Arithmetic Logic Unit (ALU) developed using the **OpenLane** open-source VLSI flow. The ALU performs arithmetic and logical operations, serving as a core component in digital systems.

## Features
- **Arithmetic Operations**: Addition, subtraction, etc.
- **Logical Operations**: AND, OR, XOR, NOT.
- **8-Bit Data Path**: Processes 8-bit inputs and outputs.
- **OpenLane Integration**: Synthesized and laid out using OpenLane tools.

## Directory Structure

alu_8bit/
├── src/                   # Verilog/SystemVerilog source files
├── runs/                  # OpenLane run outputs (excluded in .gitignore)
├── DRC_LVS rpt.png        # DRC and LVS report screenshot
├── GDS-II (Klayout).png   # GDS-II layout screenshot
├── alu_8bit.vvp           # Compiled simulation file
├── config.json            # OpenLane configuration
├── LICENSE                # License file
└── README.md              # This file


## Prerequisites
- **OpenLane**: Install via [OpenLane documentation](https://openlane.readthedocs.io/en/latest/).
- **Python 3.x**: For OpenLane scripts.
- **Git**: For repository management.

## Setup and Usage
1. **Clone the repository**:
   ```bash
   git clone git@github.com:sahanakulkarni-PD-VLSI/alu_8bit.git
   cd alu_8bit



Run OpenLane Flow:
Configure OpenLane environment.
Run:
bash
make run

Check runs/ for synthesis and layout outputs (not tracked in Git).

Simulation:
Use alu_8bit.vvp for simulation with tools like Icarus Verilog.

Contributing
1.Fork the repository.
2.Create a branch (git checkout -b feature-branch).
3.Commit changes (git commit -m "Add feature").
4.Push (git push origin feature-branch).
5.Open a pull request.

License
MIT License

Contact
Email: sahanakulkarni0012@gmail.com

Designed by Sahana Kulkarni & Amit Airodagi for VLSI coursework.
