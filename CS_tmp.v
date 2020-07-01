`timescale 1ns/10ps
module CS(Y, X, reset, clk);

input clk, reset; 
input 	[7:0] X;
output reg 	[9:0] Y;

//--------------------------------------
//  \^o^/   Write your code here~  \^o^/
//--------------------------------------


reg [7:0] inputx[0:8];
wire [29:0]avg;
reg [10:0] cnt;
reg flag [0:8];
reg [7:0]xappr;
wire [11:0]xappr_m9;
wire [12:0]y_tmp;
reg start_cal;
reg [11:0]accum;
integer i;

reg [7:0] first[0:3];
reg [7:0] second[0:1];
reg [7:0] third;
reg en[0:8];
reg en2[0:3];
reg en3[0:1];

always @(posedge clk) begin
    if(reset)begin
        cnt <= 10'b0;
    end
    else begin
        cnt <= cnt + 1'b1;
    end
end

always @(cnt) begin
    if(cnt>=10'd9)begin
        start_cal = 1'b1;
    end
    else begin
        start_cal = 1'b0;
    end
end

always @(posedge clk) begin
    if(reset)begin
        for(i=0;i<9;i=i+1)begin
            inputx[i] <= 8'b0;
        end
    end
    else begin
        inputx[0] <= X;
        for(i=0;i<8;i=i+1)begin
            inputx[i+1] <= inputx[i];
        end
    end
end

always @(posedge clk) begin
	if(reset)begin
		accum <= 12'b0;
	end
	else begin
		accum <= accum + {4'b0,X} - {4'b0,inputx[8]};
	end
end

//***************Remember to shift!!!!!!!!!!!!!!!!!!!!!!!
//***************Shift from floating point to interger!!!!!!!!!!!!
//parameter one_nine = 18'b000111000111001000;
//assign avg = (accum * one_nine) >> 18;


parameter N=36;
wire [N:0]tmp_p;
wire [N:0]tmp;
wire [N:0]tmp_a;
wire [N:0]tmp2,tmp3,tmp4,tmp5,tmp6,tmp7;
wire [N:0]tmp_b,tmp_c,tmp_d,tmp_e,tmp_f;

parameter one_nine = 18'b000111000111001000;

assign tmp_p = {18'b0,one_nine,1'b0};
assign tmp = {{3{tmp_p[36]}},tmp_p[36:3]};
assign tmp_a={(tmp[36:19]-{6'b0,accum}),tmp[18:0]};
assign tmp2= {{tmp_a[36]},tmp_a[36:1]};
assign tmp_b={(tmp2[36:19]+{6'b0,accum}),tmp2[18:0]};
assign tmp3= {{2{tmp_b[36]}},tmp_b[36:2]};
assign tmp_c={(tmp3[36:19]-{6'b0,accum}),tmp3[18:0]};
assign tmp4= {{3{tmp_c[36]}},tmp_c[36:3]};
assign tmp_d={(tmp4[36:19]+{6'b0,accum}),tmp4[18:0]};
assign tmp5= {{3{tmp_d[36]}},tmp_d[36:3]};
assign tmp_e={(tmp5[36:19]-{6'b0,accum}),tmp5[18:0]};
assign tmp6= {{3{tmp_e[36]}},tmp_e[36:3]};
assign tmp_f={(tmp6[36:19]+{6'b0,accum}),tmp6[18:0]};
assign avg= {{21{tmp_f[36]}},tmp_f[36:22]};

always @(*) begin
    for(i=0;i<9;i=i+1)begin
        if(avg[7:0]>=inputx[i]) en[i]=1'b1;
        else en[i]=1'b0;
    end
end

always @(*) begin
    for(i =0 ;i<7;i=i+2)begin
        case({en[i],en[i+1]})
            2'b00:begin
                first[i>>1] = inputx[i];
            end
            2'b01:begin
                first[i>>1] = inputx[i+1];
            end
            2'b10:begin
                first[i>>1] = inputx[i];
            end
            2'b11:begin
                if((avg[7:0]-inputx[i])<=(avg[7:0]-inputx[i+1])) first[i>>1] = inputx[i];
                else first[i>>1] = inputx[i+1];
            end
        endcase
    end
end


always @(*) begin
    for(i=0;i<4;i=i+1)begin
        if(avg[7:0]>=first[i])begin
            en2[i]=1'b1;
        end
        else begin
            en2[i]=1'b0;
        end
    end
end

always @(*) begin
    for(i=0;i<4;i=i+2)begin
        case({en2[i],en2[i+1]})
            2'b00:begin
                second[i>>1] = first[i];
            end
            2'b01:begin
                second[i>>1] = first[i+1];
            end
            2'b10:begin
                second[i>>1] = first[i];
            end
            2'b11:begin
                if((avg[7:0]-first[i])<=(avg[7:0]-first[i+1])) second[i>>1] = first[i];
                else second[i>>1] = first[i+1];
            end
        endcase
    end
end

always @(*) begin
    if(avg[7:0]>=second[0])en3[0]=1'b1;
    else en3[0]=1'b0;
    if(avg[7:0]>=second[1])en3[1]=1'b1;
    else en3[1]=1'b0;
end

always @(*) begin
    case({en3[0],en3[1]})
        2'b00:begin
            third = second[0];
        end
        2'b01:begin
            third = second[1];
        end
        2'b10:begin
            third = second[0];
        end
        2'b11:begin
            if((avg[7:0]-second[0]) <= (avg[7:0]-second[1])) third = second[0];
            else third = second[1];
        end
    endcase
end

always @(*) begin
    if(en[8])begin
        if((avg[7:0] - third) <= (avg[7:0]-inputx[8])) xappr = third;
        else xappr = inputx[8];
    end
    else begin
        xappr = third;
    end
end


assign xappr_m9 = xappr * 4'b1001;
assign y_tmp = accum + xappr_m9;

always @(*)begin
    if(start_cal)begin
        Y = {1'b0,y_tmp[11:3]};
    end
    else begin
        Y = 10'b0;
    end
end



endmodule
