# T-FLIPFLOP-POSEDGE

**AIM:**

To implement  T flipflop using verilog and validating their functionality using their functional tables

**SOFTWARE REQUIRED:**

Quartus prime

**THEORY**

**T Flip-Flop**

T flip-flop is the simplified version of JK flip-flop. It is obtained by connecting the same input ‘T’ to both inputs of JK flip-flop. It operates with only positive clock transitions or negative clock transitions. The circuit diagram of T flip-flop is shown in the following figure.

![image](https://github.com/naavaneetha/T-FLIPFLOP-POSEDGE/assets/154305477/458a68fe-2d08-4a9d-ac4f-7ae0480ce0bd)

 
This circuit has single input T and two outputs Qtt & Qtt’. The operation of T flip-flop is same as that of JK flip-flop. Here, we considered the inputs of JK flip-flop as J = T and K = T in order to utilize the modified JK flip-flop for 2 combinations of inputs. So, we eliminated the other two combinations of J & K, for which those two values are complement to each other in T flip-flop. The following table shows the state table of T flip-flop.

Here, Qtt & Qt+1t+1 are present state & next state respectively. So, T flip-flop can be used for one of these two functions such as Hold, & Complement of present state based on the input conditions, when positive transition of clock signal is applied. The following table shows the characteristic table of T flip-flop. Inputs Present State Next State

![image](https://github.com/naavaneetha/T-FLIPFLOP-POSEDGE/assets/154305477/cdd7fb32-539f-4b66-bb8d-f305a153c886)

 
From the above characteristic table, we can directly write the next state equation as Q(t+1)=T′Q(t)+TQ(t)′ ⇒Q(t+1)=T⊕Q(t)

**Procedure**

1. Open Quartus Prime software.

2. Create a new project using **New Project Wizard**.

3. Enter the project name, project location, and select the FPGA device.

4. Create a new Verilog HDL file using
   **File → New → Verilog HDL File**.

5. Write the Verilog program for the T Flip-Flop.

6. Save the file with the module name
   (Example: `TFF.v`).

7. Set the Verilog file as the **Top-Level Entity**.

8. Compile the design using
   **Processing → Start Compilation**.

9. Check whether the compilation is completed successfully without errors.

10. Create a testbench file or waveform input file for simulation.

11. Apply different values to input **T** along with clock pulses.

12. Run the simulation and observe the outputs **Q** and **Qbar**.

13. Verify the obtained waveform using the T Flip-Flop truth table.

14. Observe the RTL schematic and timing waveform generated after simulation.

15. Conclude the experiment after verifying the correct operation of the T Flip-Flop.


**PROGRAM**

Developed by: Sujin M L

RegisterNumber: 212225040435

```
module D9(T, clk, Q, Qbar);

input T, clk;
output reg Q;
output Qbar;

assign Qbar = ~Q;

initial
begin
    Q = 0;
end

always @(posedge clk)
begin
    if(T == 1'b0)
        Q <= Q;        // No change
    else
        Q <= ~Q;       // Toggle
end

endmodule
```


**RTL LOGIC FOR FLIPFLOPS**
<img width="1919" height="1079" alt="Screenshot 2026-05-24 154748" src="https://github.com/user-attachments/assets/d9779ca1-8a2d-4bd9-9010-1d749fd9cd28" />


**TIMING DIGRAMS FOR FLIP FLOPS**

<img width="1919" height="1079" alt="Screenshot 2026-05-24 154850" src="https://github.com/user-attachments/assets/ce4baebe-3053-4277-94f2-365d40fd217e" />

**RESULTS**

Thus, the T Flip-Flop was successfully implemented using Verilog HDL and its functionality was verified using simulation results.
