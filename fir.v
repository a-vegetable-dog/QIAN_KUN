module fir (
input [15:0] signal,
input clk,/////50khz
output [15:0] out,

output [15:0] f1,
output [31:0] f2,f3,f4,
output [15:0] fo1
);

parameter signed[15:0] A0 = 16'b1_1111_11111110111;////0_0000_00000000111
parameter signed[15:0] A1 = 16'b1_1111_11111110101;///0000_00000001001
parameter signed[15:0] A2 = 16'b1_1111_11111110110;///0_0000_00000001000
parameter signed[15:0] A3 = 16'b0_0000_00000010010;
parameter signed[15:0] A4 = 16'b0_0000_00001011010;
parameter signed[15:0] A5 = 16'b0_0000_00011001101;
parameter signed[15:0] A6 = 16'b0_0000_00101000111;
parameter signed[15:0] A7 = 16'b0_0000_00110010111;
parameter signed[15:0] A8 = 16'b0_0000_00110010111;
parameter signed[15:0] A9 = 16'b0_0000_00101000111;
parameter signed[15:0] A10 = 16'b0_0000_00011001101;
parameter signed[15:0] A11 = 16'b0_0000_00001011010;
parameter signed[15:0] A12 = 16'b0_0000_00000010010;
parameter signed[15:0] A13 = 16'b1_1111_11111110110;
parameter signed[15:0] A14 = 16'b1_1111_11111110101;
parameter signed[15:0] A15 = 16'b1_1111_11111110111;

wire [15:0] fix;
fixed f(.data(signal),.fixed(fix));

reg signed[15:0] d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15;
reg signed[31:0] p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15;
wire [15:0] o1,o2,o3,o4,o5,o6,o7;

initial begin
d0=16'd0; d1=16'd0; d2=16'd0; d3=16'd0; d4=16'd0; d5=16'd0; d6=16'd0; d7=16'd0; d8=16'd0; d9=16'd0; d10=16'd0; d11=16'd0; d12=16'd0; d13=16'd0; d14=16'd0; d15=16'd0;
p0=16'd0;p1=16'd0;p2=16'd0;p3=16'd0;p4=16'd0;p5=16'd0;p6=16'd0;p7=16'd0;p8=16'd0;p9=16'd0;p10=16'd0;p11=16'd0;p12=16'd0;p13=16'd0;p14=16'd0;p15=16'd0;
end

always@(posedge clk)
begin
  d0<=fix;
  d1<=d0;
  d2<=d1;
  d3<=d2;
  d4<=d3;
  d5<=d4;
  d6<=d5;
  d7<=d6;
  d8<=d7;
  d9<=d8;
  d10<=d9;
  d11<=d10;
  d12<=d11;
  d13<=d12;
  d14<=d13;
  d15<=d14;

end
always@(negedge clk)
begin
  p0<=A0*d0;
  p1<=A1*d1;
  p2<=A2*d2;
  p3<=A3*d3;
  p4<=A4*d4;
  p5<=A5*d5;
  p6<=A6*d6;
  p7<=A7*d7;
  p8<=A8*d8;
  p9<=A9*d9;
  p10<=A10*d10;
  p11<=A11*d11;
  p12<=A12*d12;
  p13<=A13*d13;
  p14<=A14*d14;
  p15<=A15*d15;
end

assign o1=p0[26:11]+p1[26:11]+p2[26:11];////neg
assign o2=p3[26:11]+p4[26:11]+p5[26:11];
assign o3=p6[26:11]+p7[26:11]+p8[26:11];
assign o4=p9[26:11]+p10[26:11]+p11[26:11];
assign o5=p12[26:11]+p13[26:11]+p14[26:11];
assign o6=o1+o2+o3;
assign o7=o4+o5+p15[26:11];
assign out=o6+o7;

/////////////////////////////////////////////////////////////////////
assign f1=d0;
assign f2=p0;
assign f3=p1;
assign f4=p2;
assign fo1=o1;
//////////////////////////////////////////////////////////////////////
endmodule
