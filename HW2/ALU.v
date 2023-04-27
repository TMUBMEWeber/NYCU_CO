module ALU( result, zero, overflow, aluSrc1, aluSrc2, invertA, invertB, operation );
   
  output wire[31:0] result;
  output wire zero;
  output wire overflow;

  input wire[31:0] aluSrc1;
  input wire[31:0] aluSrc2;
  input wire invertA;
  input wire invertB;
  input wire[1:0] operation;
  
  /*your code here*/

  //0-30 ALU (normal)
  //ALU_1bit( result, carryOut, a, b, invertA, invertB, operation, carryIn, less ); 
  wire carryout[31:0], adder_result_31;
  
  ALU_1bit alu_0(result[0], carryout[0], aluSrc1[0], aluSrc2[0], invertA, invertB, operation, invertB, adder_result_31);
  ALU_1bit alu_1(result[1], carryout[1], aluSrc1[1], aluSrc2[1], invertA, invertB, operation, carryout[0], 1'b0);
  ALU_1bit alu_2(result[2], carryout[2], aluSrc1[2], aluSrc2[2], invertA, invertB, operation, carryout[1], 1'b0);
  ALU_1bit alu_3(result[3], carryout[3], aluSrc1[3], aluSrc2[3], invertA, invertB, operation, carryout[2], 1'b0);
  ALU_1bit alu_4(result[4], carryout[4], aluSrc1[4], aluSrc2[4], invertA, invertB, operation, carryout[3], 1'b0);
  ALU_1bit alu_5(result[5], carryout[5], aluSrc1[5], aluSrc2[5], invertA, invertB, operation, carryout[4], 1'b0);
  ALU_1bit alu_6(result[6], carryout[6], aluSrc1[6], aluSrc2[6], invertA, invertB, operation, carryout[5], 1'b0);
  ALU_1bit alu_7(result[7], carryout[7], aluSrc1[7], aluSrc2[7], invertA, invertB, operation, carryout[6], 1'b0);
  ALU_1bit alu_8(result[8], carryout[8], aluSrc1[8], aluSrc2[8], invertA, invertB, operation, carryout[7], 1'b0);
  ALU_1bit alu_9(result[9], carryout[9], aluSrc1[9], aluSrc2[9], invertA, invertB, operation, carryout[8], 1'b0);
  ALU_1bit alu_10(result[10], carryout[10], aluSrc1[10], aluSrc2[10], invertA, invertB, operation, carryout[9], 1'b0);
  ALU_1bit alu_11(result[11], carryout[11], aluSrc1[11], aluSrc2[11], invertA, invertB, operation, carryout[10], 1'b0);
  ALU_1bit alu_12(result[12], carryout[12], aluSrc1[12], aluSrc2[12], invertA, invertB, operation, carryout[11], 1'b0);
  ALU_1bit alu_13(result[13], carryout[13], aluSrc1[13], aluSrc2[13], invertA, invertB, operation, carryout[12], 1'b0);
  ALU_1bit alu_14(result[14], carryout[14], aluSrc1[14], aluSrc2[14], invertA, invertB, operation, carryout[13], 1'b0);
  ALU_1bit alu_15(result[15], carryout[15], aluSrc1[15], aluSrc2[15], invertA, invertB, operation, carryout[14], 1'b0);
  ALU_1bit alu_16(result[16], carryout[16], aluSrc1[16], aluSrc2[16], invertA, invertB, operation, carryout[15], 1'b0);
  ALU_1bit alu_17(result[17], carryout[17], aluSrc1[17], aluSrc2[17], invertA, invertB, operation, carryout[16], 1'b0);
  ALU_1bit alu_18(result[18], carryout[18], aluSrc1[18], aluSrc2[18], invertA, invertB, operation, carryout[17], 1'b0);
  ALU_1bit alu_19(result[19], carryout[19], aluSrc1[19], aluSrc2[19], invertA, invertB, operation, carryout[18], 1'b0);
  ALU_1bit alu_20(result[20], carryout[20], aluSrc1[20], aluSrc2[20], invertA, invertB, operation, carryout[19], 1'b0);
  ALU_1bit alu_21(result[21], carryout[21], aluSrc1[21], aluSrc2[21], invertA, invertB, operation, carryout[20], 1'b0);
  ALU_1bit alu_22(result[22], carryout[22], aluSrc1[22], aluSrc2[22], invertA, invertB, operation, carryout[21], 1'b0);
  ALU_1bit alu_23(result[23], carryout[23], aluSrc1[23], aluSrc2[23], invertA, invertB, operation, carryout[22], 1'b0);
  ALU_1bit alu_24(result[24], carryout[24], aluSrc1[24], aluSrc2[24], invertA, invertB, operation, carryout[23], 1'b0);
  ALU_1bit alu_25(result[25], carryout[25], aluSrc1[25], aluSrc2[25], invertA, invertB, operation, carryout[24], 1'b0);
  ALU_1bit alu_26(result[26], carryout[26], aluSrc1[26], aluSrc2[26], invertA, invertB, operation, carryout[25], 1'b0);
  ALU_1bit alu_27(result[27], carryout[27], aluSrc1[27], aluSrc2[27], invertA, invertB, operation, carryout[26], 1'b0);
  ALU_1bit alu_28(result[28], carryout[28], aluSrc1[28], aluSrc2[28], invertA, invertB, operation, carryout[27], 1'b0);
  ALU_1bit alu_29(result[29], carryout[29], aluSrc1[29], aluSrc2[29], invertA, invertB, operation, carryout[28], 1'b0);
  ALU_1bit alu_30(result[30], carryout[30], aluSrc1[30], aluSrc2[30], invertA, invertB, operation, carryout[29], 1'b0);
  
  
  //design of ALU31
  //2to1MUX for a
  wire k0, r0, r1, inner1, notA_31, notB_31;
  not (notA_31, aluSrc1[31]);
  not (notB_31, aluSrc2[31]);
  not (k0,invertA);
  and (r0, k0, aluSrc1[31]), (r1, invertA, notA_31);
  or  (inner1, r0, r1);
   
  //2to1MUX for b
  wire k1, r2, r3, inner2;
  not (k1, invertB);
  and (r2, k1, aluSrc2[31]), (r3, invertB, notB_31);
  or  (inner2, r2, r3);

  wire or_result_31, and_result_31;
  or  (or_result_31, inner1, inner2);
  and (and_result_31, inner1, inner2);
  Full_adder FA(adder_result_31, carryout[31], carryout[30], inner1, inner2); //adder_result_31 == set == less in alu_0
  
  wire y0, y1, y2, y3, not_op_0, not_op_1, and_result, or_result;
  not (not_op_0, operation[0]);
  not (not_op_1, operation[1]);
  and (y0, or_result_31, not_op_0, not_op_1);
  and (y1, and_result_31, not_op_1, operation[0]);
  and (y2, adder_result_31, not_op_0, operation[1]);
  and (y3, 1'b0, operation[1], operation[0]);
  or  (result[31], y0, y1, y2, y3);

  //zero signal 
  nor (zero, result[0],result[1],result[2], result[3], result[4], result[5], result[6], result[7], result[8], result[9], result[10],
             result[11], result[12], result[13], result[14], result[15], result[16], result[17], result[18], result[19], result[20],
             result[21], result[22], result[23], result[24], result[25], result[26], result[27], result[28], result[29], result[30], result[31]);

  //overflow detection
  xor (overflow, carryout[30], carryout[31]);

endmodule
