module test;
  
  parameter DATA = 8;
  
  reg [DATA-1:0] abc;
  
  wire           sum;
  
  wire           carry;
  
  
  full_adder #(.DATA(DATA))dut(
    .abc(abc),
    .sum(sum),
    .carry(carry)
  );
  
  
  initial begin
    $dumpfile("waves.vcd");
    $dumpvars;
  end
  
  initial begin
     
    repeat(10) begin
    abc[2]=$random;
    abc[1]=$random;
    abc[0]=$random;
      
   
    $strobe("Value of the a=%b b=%b c=%b sum=%0b carry=%0d",abc[2],abc[1],abc[0],sum,carry);
    
      
    end
     
    
  end
  
  
  
endmodule
    
