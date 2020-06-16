module fixed(
input [15:0] data,
output [15:0] fixed
);
/////////////////////////////bit_1_6_9
/////////////////////////////bit_1_4_11
wire sign,expo_sign;
wire [3:0] expo_value;
wire [9:0] value;
reg [14:0] fixed_value,v_abs;

assign sign = data[15];
assign expo_sign = data[14];
assign expo_value =data[13:10];
assign value = data[9:0];

initial begin
  fixed_value<=15'b0;
end
////////////////////拆分浮点数

always @ (*) begin
  if(data==16'b0) fixed_value<=0;
  else begin
    if(expo_value==0) fixed_value<={4'b0001,value,1'b0};
    else if(expo_sign)///>0.1
            fixed_value<={1'b1,value}<<(expo_value-1);
        else///<0.1
            fixed_value<={1'b1,value}>>(expo_value-1);
end
end

always @(*)
begin
  if(sign)
  v_abs=(fixed_value^16'hFFFF)+1;
  else v_abs=fixed_value;
end
// if(sign)///////////////负数
//   if(expo_sign)  /////////////////////////////////////////expo_sign=1,大于0.1，左移
//     case(expo_value)
//       4'b0000:fixed_value<={4'b1110,value,1'b0};
//       4'b0001:fixed_value<={3'b110,value,2'b0};
//       4'b0010:fixed_value<={2'b10,value,3'b0};
//       4'b0011:fixed_value<={1'b0,value,4'b0};
//       // 4'b0101:fixed_value<={1'b1,value,4'b0};
//       // 4'b0110:fixed_value<={value,5'b0};
//     endcase
//   else if(expo_sign==0)//////////////////////////////////////////////////expo_sign=0,小于0.1，右移
//     case(expo_value)
//       4'b0000:fixed_value<={head,value,1'b0};
//       4'b0001:fixed_value<={1'b1,head,value};
//       4'b0010:fixed_value<={2'h3,head,value[9:1]};
//       4'b0011:fixed_value<={3'h7,head,value[9:2]};
//       4'b0100:fixed_value<={4'hf,head,value[9:3]};
//       4'b0101:fixed_value<={5'h1f,head,value[9:4]};
//       4'b0110:fixed_value<={6'h3f,head,value[9:5]};
//       4'b0111:fixed_value<={7'h7f,head,value[9:6]};
//       4'b1000:fixed_value<={8'hff,head,value[9:7]};
//       4'b1001:fixed_value<={9'h1ff,head,value[9:8]};
//       4'b1010:fixed_value<={10'h3ff,head,value[9]};
//     endcase
//     else;
// else if(sign==0)//////////////////postive
  // if(expo_value==0) fixed_value<={4'b0001,value,1'b0};
  // else if(expo_sign)///>0.1
  //         fixed_value<={1'b1,value}<<(expo_value-1);
  //     else///<0.1
  //         fixed_value<={1'b1,value}>>(expo_value-1);
assign fixed={sign,v_abs};
endmodule
