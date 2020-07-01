`timescale 1ns/10ps
module CS(Y, X, reset, clk);

input clk, reset; 
input 	[7:0] X;
output 	[9:0] Y;

//--------------------------------------
//  \^o^/   Write your code here~  \^o^/
//--------------------------------------

wire[8:0] flag;
reg [7:0]inputx[0:8];
integer i;
reg [11:0] accum;
wire  [12:0] sum;
wire[29:0] avg;
wire o_valid_11,o_valid_12,o_valid_13,o_valid_14,o_valid_21,o_valid_22,o_valid_31,
    o_valid_41;

wire [7:0] o_value_11,o_value_12,o_value_13,o_value_14,o_value_21,o_value_22,
            o_value_31,o_value_41;



always @(posedge clk or posedge reset) begin
    if(reset)begin
        for(i=0;i<9;i=i+1)begin
            inputx[i]<=8'b0;
        end
    end
    else begin
        inputx[0] <= X;
        for(i=0;i<8;i=i+1)begin
            inputx[i+1] <= inputx[i];
        end
    end    
end

always @(posedge clk or posedge reset)begin
    if(reset)begin
        accum <= 8'b0;
    end
    else begin
        accum <= accum + {4'b0,X} - {4'b0,inputx[8]};
    end
end

parameter one_nine = 18'b000111000111001000;
wire [29:0]a;
//assign avg = (accum * one_nine)>>18;
assign a = {4'b0,accum,14'b0}+{5'b0,accum,13'b0}+{6'b0,accum,12'b0}+{10'b0,accum,8'b0}+{11'b0,accum,7'b0}+{12'b0,accum,6'b0}+{15'b0,accum,3'b0};
assign avg = a>>18;
assign flag[0] = inputx[0] > avg[7:0];
assign flag[1] = inputx[1] > avg[7:0];
assign flag[2] = inputx[2] > avg[7:0];
assign flag[3] = inputx[3] > avg[7:0];
assign flag[4] = inputx[4] > avg[7:0];
assign flag[5] = inputx[5] > avg[7:0];
assign flag[6] = inputx[6] > avg[7:0];
assign flag[7] = inputx[7] > avg[7:0];
assign flag[8] = inputx[8] > avg[7:0];

Compare c11(flag[0],flag[1],inputx[0],inputx[1],o_valid_11,o_value_11);
Compare c12(flag[2],flag[3],inputx[2],inputx[3],o_valid_12,o_value_12);
Compare c13(flag[4],flag[5],inputx[4],inputx[5],o_valid_13,o_value_13);
Compare c14(flag[6],flag[7],inputx[6],inputx[7],o_valid_14,o_value_14);
Compare c21(o_valid_11,o_valid_12,o_value_11,o_value_12,o_valid_21,o_value_21);
Compare c22(o_valid_13,o_valid_14,o_value_13,o_value_14,o_valid_22,o_value_22);
Compare c31(o_valid_21,o_valid_22,o_value_21,o_value_22,o_valid_31,o_value_31);
Compare c41(o_valid_31,flag[8],o_value_31,inputx[8],o_valid_41,o_value_41);

wire [11:0]xappr9;
assign xappr9 = {1'b0,o_value_41,3'b0} + {4'b0,o_value_41};
//assign xappr9 = o_value_41*4'b1001;
assign sum = accum + xappr9;
assign Y = sum[12:3];


endmodule




module Compare (in_valid1,in_valid2,in_value1,in_value2,out_valid,out_value);

input in_valid1;
input in_valid2;
input [7:0]in_value1;
input [7:0]in_value2;
output reg out_valid;
output reg [7:0]out_value;
wire flag;

assign flag = in_value1 > in_value2;

always @(*) begin
    case({in_valid1,in_valid2})
        2'b00:begin
            out_valid = 1'b0;
            if(flag) out_value = in_value1;
            else out_value = in_value2;
        end
        2'b01:begin
            out_valid = 1'b0;
            out_value = in_value1;
        end
        2'b10:begin
            out_valid = 1'b0;
            out_value = in_value2;
        end
        default:begin
            out_valid = 1'b1;
            out_value = 8'bx;
        end
    endcase
end




endmodule






