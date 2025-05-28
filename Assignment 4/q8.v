module full_adder #(parameter DATA=16)(
  input [DATA-1:0] abc,
  
  output sum,
  output carry  

);
  
  assign sum   = abc[2] ^ abc [1] ^ abc[0] ;
  
  assign carry = (abc[2] & abc [1])|(abc[2] & abc [0])|(abc[1] & abc [0]);
  
endmodule
  
  
