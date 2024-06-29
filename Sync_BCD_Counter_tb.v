`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2021 04:16:46 PM
// Design Name: 
// Module Name: Sync_BCD_Counter_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Sync_BCD_Counter_tb();

reg clk_tb, reset_tb;
wire [3:0] Q_tb;

    
Sync_BCD_Counter uut (.clk(clk_tb),.reset(reset_tb),.Q(Q_tb)); 
    
initial begin
	clk_tb = 0;
        reset_tb = 1;
        #10;
        reset_tb = 0;
        forever begin  
            #5; 
            clk_tb = ~clk_tb;
        end        
end
endmodule
