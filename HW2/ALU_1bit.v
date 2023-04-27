module ALU_1bit( result, carryOut, a, b, invertA, invertB, operation, carryIn, less ); 
  output wire result;
  output wire carryOut;
  
  input wire a;
  input wire b;
  input wire invertA;
  input wire invertB;
  input wire[1:0] operation;
  input wire carryIn;
  input wire less;
  
  /*your code here*/ 
  wire in1, in2, notA, notB;
  not (notA, a);
  not (notB, b);
  //2to1MUX for a
  wire s0, w0, w1;
  not (s0, invertA);
  and (w0, s0, a), (w1, invertA, notA);
  or  (in1, w0, w1);
   
  //2to1MUX for b
  wire s1, w2, w3;
  not (s1, invertB);
  and (w2, s1, b), (w3, invertB, notB);
  or  (in2, w2, w3);
   
  wire or_result, and_result, adder_result;
  or  (or_result, in1, in2);
  and (and_result, in1, in2);
  Full_adder FA(adder_result, carryOut, carryIn, in1, in2);
  
  //4to1MUX
  wire y0, y1, y2, y3, not_op_0, not_op_1;
  not (not_op_0, operation[0]);
  not (not_op_1, operation[1]);
  and (y0, or_result, not_op_0, not_op_1);
  and (y1, and_result, operation[0], not_op_1);
  and (y2, adder_result, operation[1], not_op_0);
  and (y3, less, operation[0], operation[1]);
  or  (result, y0, y1, y2, y3);
  
endmodule
