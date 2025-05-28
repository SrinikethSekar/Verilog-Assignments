module testbench;
  
  reg [7:0]data;
  wire [3:0] out;
  
  initial begin
    
    data = 8'b01010101;
        data = 8'b01011111;
        data = 8'b01010101;
        data = 8'b01010001;
        data = 8'b01000001;
    
    
    $monitor("values:%0b",out);
  end
  
endmodule
