# Traffic Light Controller

This project implements a traffic light controller system in both C and Verilog. The C implementation simulates the traffic light controller in a console application, while the Verilog implementation is designed for FPGA simulation.

## Project Description

The traffic light controller system is designed to manage the traffic lights at an intersection. It controls the sequence of lights (red, yellow, green) for multiple directions to ensure smooth and safe traffic flow. The system can be simulated in a console application using C or implemented on an FPGA using Verilog.

### Features

- **C Implementation**: Simulates the traffic light controller in a console application.
- **Verilog Implementation**: Designed for FPGA simulation, allowing for real-time traffic light control.
- **Clock Divider**: A Verilog module to divide the clock frequency for timing control.
- **Serial Bit Sequence Detector**: A Verilog module to detect specific bit sequences, useful for input signal processing.

## Project Structure
FPGA-Traffic-Light-Controller/
├── include/
│   └── traffic_light_controller.h
├── src/
│   ├── main.c
│   ├── traffic_light_controller.c
├── verilog/
│   ├── Traffic_Light_Controller.v
│   ├── traffic_light_tb.v
│   ├── Serial_Bit_Sequence_Detector.v
│   └── Clock_Divider.v
├── Makefile
└── README.md


## Implementation

### C Implementation

The C implementation consists of the following files:

- `include/traffic_light_controller.h`: Header file defining the traffic light controller structure and functions.
- `src/main.c`: Main file that initializes and updates the traffic light controller.
- `src/traffic_light_controller.c`: Implementation of the traffic light controller functions.
- `Makefile`: Makefile to build the C project.

### Verilog Implementation
The Verilog implementation consists of the following files:

- `verilog/Clock_Divider.v`: Module to divide the clock frequency.
- `Serial_Bit_Sequence_Detector.v`: Module to detect a specific bit sequence.
- `Traffic_Light_Controller.v`: Main traffic light controller module.
- `traffic_light_tb.v`: Testbench for the traffic light controller.

## Building and Running

To build the C project, run the following command:

```sh
make    #build
./traffic_light_controller  #run the executable
```

## Simulation
To simulate the Verilog modules, use a Verilog simulator like ModelSim or Vivado. Load the traffic_light_tb.v file and run the simulation.

