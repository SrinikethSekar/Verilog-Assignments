module clock;
reg clk;
reg clk1=0;
  
  initial clk = 0;
  always #50 clk1 = ~clk1;
  
  always@(posedge clk1)
    
    
    clk = ~clk;
     
  
  initial begin
    $dumpfile("Waves.vcd");
    $dumpvars;
    #1000;
    $finish;
  end
  
endmodule
