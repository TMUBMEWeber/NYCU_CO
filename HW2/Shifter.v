module Shifter( result, leftRight, shamt, sftSrc  );
    
  output wire[31:0] result;

  input wire leftRight;
  input wire[4:0] shamt;
  input wire[31:0] sftSrc ;
  
  /*your code here*/ 
	wire right;
  not (right, leftRight);
  wire i1[31:0];
  wire i2[31:0];

  //i1 is and with leftRight, i2 is and with right
  and and0_i1(i1[0], sftSrc[0], leftRight);
  and and1_i1(i1[1], sftSrc[1], leftRight);
  and and1_i2(result[0], sftSrc[1], right); //result[0]
  and and2_i1(i1[2], sftSrc[2], leftRight);
  and and2_i2(i2[2], sftSrc[2], right);
  and and3_i1(i1[3], sftSrc[3], leftRight);
  and and3_i2(i2[3], sftSrc[3], right);
  and and4_i1(i1[4], sftSrc[4], leftRight);
  and and4_i2(i2[4], sftSrc[4], right);
  and and5_i1(i1[5], sftSrc[5], leftRight);
  and and5_i2(i2[5], sftSrc[5], right);
  and and6_i1(i1[6], sftSrc[6], leftRight);
  and and6_i2(i2[6], sftSrc[6], right);
  and and7_i1(i1[7], sftSrc[7], leftRight);
  and and7_i2(i2[7], sftSrc[7], right);
  and and8_i1(i1[8], sftSrc[8], leftRight);
  and and8_i2(i2[8], sftSrc[8], right);
  and and9_i1(i1[9], sftSrc[9], leftRight);
  and and9_i2(i2[9], sftSrc[9], right);
  and and10_i1(i1[10], sftSrc[10], leftRight);
  and and10_i2(i2[10], sftSrc[10], right);
  and and11_i1(i1[11], sftSrc[11], leftRight);
  and and11_i2(i2[11], sftSrc[11], right);
  and and12_i1(i1[12], sftSrc[12], leftRight);
  and and12_i2(i2[12], sftSrc[12], right);
  and and13_i1(i1[13], sftSrc[13], leftRight);
  and and13_i2(i2[13], sftSrc[13], right);
  and and14_i1(i1[14], sftSrc[14], leftRight);
  and and14_i2(i2[14], sftSrc[14], right);
  and and15_i1(i1[15], sftSrc[15], leftRight);
  and and15_i2(i2[15], sftSrc[15], right);
  and and16_i1(i1[16], sftSrc[16], leftRight);
  and and16_i2(i2[16], sftSrc[16], right);
  and and17_i1(i1[17], sftSrc[17], leftRight);
  and and17_i2(i2[17], sftSrc[17], right);
  and and18_i1(i1[18], sftSrc[18], leftRight);
  and and18_i2(i2[18], sftSrc[18], right);
  and and19_i1(i1[19], sftSrc[19], leftRight);
  and and19_i2(i2[19], sftSrc[19], right);
  and and20_i1(i1[20], sftSrc[20], leftRight);
  and and20_i2(i2[20], sftSrc[20], right);
  and and21_i1(i1[21], sftSrc[21], leftRight);
  and and21_i2(i2[21], sftSrc[21], right);
  and and22_i1(i1[22], sftSrc[22], leftRight);
  and and22_i2(i2[22], sftSrc[22], right);
  and and23_i1(i1[23], sftSrc[23], leftRight);
  and and23_i2(i2[23], sftSrc[23], right);
  and and24_i1(i1[24], sftSrc[24], leftRight);
  and and24_i2(i2[24], sftSrc[24], right);
  and and25_i1(i1[25], sftSrc[25], leftRight);
  and and25_i2(i2[25], sftSrc[25], right);
  and and26_i1(i1[26], sftSrc[26], leftRight);
  and and26_i2(i2[26], sftSrc[26], right);
  and and27_i1(i1[27], sftSrc[27], leftRight);
  and and27_i2(i2[27], sftSrc[27], right);
  and and28_i1(i1[28], sftSrc[28], leftRight);
  and and28_i2(i2[28], sftSrc[28], right);
  and and29_i1(i1[29], sftSrc[29], leftRight);
  and and29_i2(i2[29], sftSrc[29], right);
  and and30_i1(result[31], sftSrc[30], leftRight); //result 31
  and and30_i2(i2[30], sftSrc[30], right);
  and and31_i2(i2[31], sftSrc[31], right);

  or or1(result[1], i1[0], i2[2]);
  or or2(result[2], i1[1], i2[3]);
  or or3(result[3], i1[2], i2[4]);
  or or4(result[4], i1[3], i2[5]);
  or or5(result[5], i1[4], i2[6]);
  or or6(result[6], i1[5], i2[7]);
  or or7(result[7], i1[6], i2[8]);
  or or8(result[8], i1[7], i2[9]);
  or or9(result[9], i1[8], i2[10]);
  or or10(result[10], i1[9], i2[11]);
  or or11(result[11], i1[10], i2[12]);
  or or12(result[12], i1[11], i2[13]);
  or or13(result[13], i1[12], i2[14]);
  or or14(result[14], i1[13], i2[15]);
  or or15(result[15], i1[14], i2[16]);
  or or16(result[16], i1[15], i2[17]);
  or or17(result[17], i1[16], i2[18]);
  or or18(result[18], i1[17], i2[19]);
  or or19(result[19], i1[18], i2[20]);
  or or20(result[20], i1[19], i2[21]);
  or or21(result[21], i1[20], i2[22]);
  or or22(result[22], i1[21], i2[23]);
  or or23(result[23], i1[22], i2[24]);
  or or24(result[24], i1[23], i2[25]);
  or or25(result[25], i1[24], i2[26]);
  or or26(result[26], i1[25], i2[27]);
  or or27(result[27], i1[26], i2[28]);
  or or28(result[28], i1[27], i2[29]);
  or or29(result[29], i1[28], i2[30]);
  or or30(result[30], i1[29], i2[31]);
endmodule