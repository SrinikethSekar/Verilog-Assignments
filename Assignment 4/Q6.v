//Write Verilog code that uses different tasks to perform arithmetic operations.

module math_operations;
    reg [15:0] result;
    
    // addition
    task add;
        input [7:0] a, b;
        output [15:0] sum;
        begin
            sum = a + b;
        end
    endtask
    
    // subtraction
    task subtract;
        input [7:0] a, b;
        output [15:0] difference;
        begin
            difference = a - b;
        end
    endtask
    
    // multiplication
    task multiply;
        input [7:0] a, b;
        output [15:0] product;
        begin
            product = a * b;
        end
    endtask
    
    //division
    task divide;
        input [7:0] a, b;
        output [7:0] quotient;
        begin
            if (b != 0)
                quotient = a / b;
            else
                quotient = 8'd0; // Return 0 if division by zero
        end
    endtask
    
    // Test
    initial begin
        $display("Performing Arithmetic Operations:");
        
        add(10, 5, result);
        $display("Addition: 10 + 5 = %0d", result);
        
        subtract(10, 5, result);
        $display("Subtraction: 10 - 5 = %0d", result);
        
        multiply(10, 5, result);
        $display("Multiplication: 10 * 5 = %0d", result);
        
        divide(10, 5, result[7:0]);
        $display("Division: 10 / 5 = %0d", result[7:0]);
    end
endmodule
