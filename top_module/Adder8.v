////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 14.7
//  \   \         Application : sch2hdl
//  /   /         Filename : Adder8.vf
// /___/   /\     Timestamp : 01/13/2020 12:47:07
// \   \  /  \ 
//  \___\/\___\ 
//
//Command: sch2hdl -intstyle ise -family kintex7 -verilog "C:/Vincent/ZJU/ZJU_Fall_2019/Digital_Logic_Design/Project/Our project/Adder8/Adder8.vf" -w "C:/Vincent/ZJU/ZJU_Fall_2019/Digital_Logic_Design/Project/Our project/Adder8/Adder8.sch"
//Design Name: Adder8
//Device: kintex7
//Purpose:
//    This verilog netlist is translated from an ECS schematic.It can be 
//    synthesized and simulated, but it should not be modified. 
//
`timescale 1ns / 1ps

module Adder8(A, 
              B, 
              C, 
              Co, 
              Sum);

    input [7:0] A;
    input [7:0] B;
    input C;
   output Co;
   output [7:0] Sum;
   
   wire XLXN_12;
   
   Adder4  XLXI_1 (.A(A[3:0]), 
                  .B(B[3:0]), 
                  .C(C), 
                  .Co(XLXN_12), 
                  .Sum(Sum[3:0]));
   Adder4  XLXI_2 (.A(A[7:4]), 
                  .B(B[7:4]), 
                  .C(XLXN_12), 
                  .Co(Co), 
                  .Sum(Sum[7:4]));
endmodule