`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2021 03:35:09 PM
// Design Name: 
// Module Name: top_tb
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


module top_tb();

    reg clk_tb;
    reg reset_tb;
    wire [7:0] cathode_tb;
    wire [7:0] anode_tb;
        
    top uut (.clk(clk_tb), .reset(reset_tb), .cathode(cathode_tb), .anode(anode_tb));
    
    initial begin
    	clk_tb = 0; 
        reset_tb = 1; 
        #50; 
        reset_tb = 0;
    end

    always
        #5 clk_tb = ~clk_tb;

endmodule
