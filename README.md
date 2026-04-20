# 🚀 32-bit Arithmetic Logic Unit (ALU) Design

## 📌 Overview
This project presents the design and implementation of a **32-bit Arithmetic Logic Unit (ALU)** using **Verilog HDL** and complete **ASIC design flow**.

The ALU is a fundamental component in digital systems, responsible for performing arithmetic and logical operations in processors and embedded systems.

---

## ⚙️ Features

### 🔢 Arithmetic Operations
- Addition (A + B + Cin)
- Subtraction (using 2’s complement)

### 🔍 Logical Operations
- AND
- OR
- XOR
- XNOR
- NOT

### 🚩 Status Flags
- **Zero Flag** → Result is zero  
- **Carry Flag** → Carry generated  
- **Sign Flag** → MSB of result  

---

## 🏗️ Design Details

- 32-bit data width
- Ripple Carry Adder used for arithmetic operations
- Parallel execution of operations
- Multiplexer-based output selection using `sel` signal

---

## 🛠️ Tools & Technologies Used

- **Verilog HDL** → RTL Design  
- **Cadence Genus** → Synthesis  
- **Cadence Innovus** → Physical Design  
- **Xcelium / NC-Verilog** → Simulation  

---

## 🔄 ASIC Design Flow

1. RTL Design (Verilog)
2. Functional Simulation
3. Synthesis (Genus)
4. Placement & Routing (Innovus)
5. Timing Analysis
6. Power & Area Optimization

---

## 📊 Results

| Parameter | Value |
|----------|------|
| Power    | ~88 µW |
| Area     | 338 Standard Cells |
| Timing   | Fully optimized (No violations) |

---

## 📁 Project Structure

---

## 🚀 Applications

- Microprocessors & CPUs  
- Digital Signal Processing (DSP)  
- Embedded Systems  
- Communication Systems  
- Image & Video Processing  

---

## 📸 Key Outputs

- Functional simulation waveforms  
- Power, Area, and Timing reports  
- Physical design layout (GDSII)  

---

## 📚 Learning Outcomes

- RTL Design using Verilog  
- ASIC Design Flow understanding  
- Timing, Power, and Area optimization  
- Hands-on experience with Cadence tools  

---

## 🔗 GitHub Repository

👉 https://github.com/Avinash-av1/ALU-32bit

---