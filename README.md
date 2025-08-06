# JTAG-TAP-Controller
This project implements a **16-state JTAG TAP (Test Access Port) Controller** in **Verilog**, compliant with the **IEEE 1149.1** standard. The TAP controller is a key part of boundary scan testing in digital systems, allowing test and debug access to on-chip components without physical probing.
It features a clean, modular FSM design and includes a simulation testbench that drives TMS sequences to verify correct TAP state transitions.
## what is a TAP Controller?
The **Test Access Port (TAP) Controller** is a finite state machine that governs the operation of the JTAG interface. It controls data flow between the JTAG interface and internal scan chains through instructions and data registers.
This project simulates that FSM, enabling transitions between the 16 standardized TAP states using `TCK`, `TMS`, and `TRST_N`.
## TAP Controller State Encoding
| State Name         | Binary Value | Decimal |
|--------------------|--------------|---------|
| TEST_LOGIC_RESET   | 4'b0000      | 0       |
| RUN_TEST_IDLE      | 4'b0001      | 1       |
| SELECT_DR_SCAN     | 4'b0010      | 2       |
| CAPTURE_DR         | 4'b0011      | 3       |
| SHIFT_DR           | 4'b0100      | 4       |
| EXIT1_DR           | 4'b0101      | 5       |
| PAUSE_DR           | 4'b0110      | 6       |
| EXIT2_DR           | 4'b0111      | 7       |
| UPDATE_DR          | 4'b1000      | 8       |
| SELECT_IR_SCAN     | 4'b1001      | 9       |
| CAPTURE_IR         | 4'b1010      | 10      |
| SHIFT_IR           | 4'b1011      | 11      |
| EXIT1_IR           | 4'b1100      | 12      |
| PAUSE_IR           | 4'b1101      | 13      |
| EXIT2_IR           | 4'b1110      | 14      |
| UPDATE_IR          | 4'b1111      | 15      |
