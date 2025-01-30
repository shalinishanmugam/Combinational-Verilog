module two_step_transition (
    input [15:0] a,                
    input [15:0] b,                
    input cin,                      
    output wire [1:0] temp [16:0],  
    output wire [1:0] temp1 [16:0],
    output wire [1:0] temp2 [16:0],  
    output wire [1:0] temp3 [16:0],  
    output wire [16:0] y          
);

   
    state_transition a1 ({cin, cin}, {cin, cin}, temp[0]);
    state_transition a2 ({a[0], b[0]}, {a[0], b[0]}, temp[1]);
    state_transition a3 ({a[1], b[1]}, {a[1], b[1]}, temp[2]);
    state_transition a4 ({a[2], b[2]}, {a[2], b[2]}, temp[3]);
    state_transition a5 ({a[3], b[3]}, {a[3], b[3]}, temp[4]);
    state_transition a6 ({a[4], b[4]}, {a[4], b[4]}, temp[5]);
    state_transition a7 ({a[5], b[5]}, {a[5], b[5]}, temp[6]);
    state_transition a8 ({a[6], b[6]}, {a[6], b[6]}, temp[7]);
    state_transition a9 ({a[7], b[7]}, {a[7], b[7]}, temp[8]);
    state_transition a10 ({a[8], b[8]}, {a[8], b[8]}, temp[9]);
    state_transition a11 ({a[9], b[9]}, {a[9], b[9]}, temp[10]);
    state_transition a12 ({a[10], b[10]}, {a[10], b[10]}, temp[11]);
    state_transition a13 ({a[11], b[11]}, {a[11], b[11]}, temp[12]);
    state_transition a14 ({a[12], b[12]}, {a[12], b[12]}, temp[13]);
    state_transition a15 ({a[13], b[13]}, {a[13], b[13]}, temp[14]);
    state_transition a16 ({a[14], b[14]}, {a[14], b[14]}, temp[15]);
    state_transition a17 ({a[15], b[15]}, {a[15], b[15]}, temp[16]);

   
    assign temp1[0] = temp[0];
    state_transition a18(temp[1], temp[0], temp1[1]);
    state_transition a19(temp[2], temp[1], temp1[2]);
    state_transition a20(temp[3], temp[2], temp1[3]);
    state_transition a21(temp[4], temp[3], temp1[4]);
    state_transition a22(temp[5], temp[4], temp1[5]);
    state_transition a23(temp[6], temp[5], temp1[6]);
    state_transition a24(temp[7], temp[6], temp1[7]);
    state_transition a25(temp[8], temp[7], temp1[8]);
    state_transition a26(temp[9], temp[8], temp1[9]);
    state_transition a27(temp[10], temp[9], temp1[10]);
    state_transition a28(temp[11], temp[10], temp1[11]);
    state_transition a29(temp[12], temp[11], temp1[12]);
    state_transition a30(temp[13], temp[12], temp1[13]);
    state_transition a31(temp[14], temp[13], temp1[14]);
    state_transition a32(temp[15], temp[14], temp1[15]);
    state_transition a33(temp[16], temp[15], temp1[16]);

   
    assign temp2[0] = temp1[0];
    assign temp2[1] = temp1[1];  
    state_transition a34(temp1[2], temp1[0], temp2[2]);
    state_transition a35(temp1[3], temp1[1], temp2[3]);
    state_transition a36(temp1[4], temp1[2], temp2[4]);
    state_transition a37(temp1[5], temp1[3], temp2[5]);
    state_transition a38(temp1[6], temp1[4], temp2[6]);
    state_transition a39(temp1[7], temp1[5], temp2[7]);
    state_transition a40(temp1[8], temp1[6], temp2[8]);
    state_transition a41(temp1[9], temp1[7], temp2[9]);
    state_transition a42(temp1[10], temp1[8], temp2[10]);
    state_transition a43(temp1[11], temp1[9], temp2[11]);
    state_transition a44(temp1[12], temp1[10], temp2[12]);
    state_transition a45(temp1[13], temp1[11], temp2[13]);
    state_transition a46(temp1[14], temp1[12], temp2[14]);
    state_transition a47(temp1[15], temp1[13], temp2[15]);
    state_transition a48(temp1[16], temp1[14], temp2[16]);  

   
    assign temp3[0] = temp2[0];
    assign temp3[1] = temp2[1];  
    assign temp3[2] = temp2[2];
    assign temp3[3] = temp2[3];    
    state_transition a49(temp2[4], temp2[0], temp3[4]);
    state_transition a50(temp2[5], temp2[1], temp3[5]);
    state_transition a51(temp2[6], temp2[2], temp3[6]);
    state_transition a52(temp2[7], temp2[3], temp3[7]);
    state_transition a53(temp2[8], temp2[4], temp3[8]);
    state_transition a54(temp2[9], temp2[5], temp3[9]);
    state_transition a55(temp2[10], temp2[6], temp3[10]);
    state_transition a56(temp2[11], temp2[7], temp3[11]);
    state_transition a57(temp2[12], temp2[8], temp3[12]);
    state_transition a58(temp2[13], temp2[9], temp3[13]);
    state_transition a59(temp2[14], temp2[10], temp3[14]);
    state_transition a60(temp2[15], temp2[11], temp3[15]);
    state_transition a61(temp2[16], temp2[12], temp3[16]);

   
    assign y[0]  = a[0] ^ b[0] ^ temp3[0];  
    assign y[1]  = a[1] ^ b[1] ^ temp3[1];  
    assign y[2]  = a[2] ^ b[2] ^ temp3[2];  
    assign y[3]  = a[3] ^ b[3] ^ temp3[3];  
    assign y[4]  = a[4] ^ b[4] ^ temp3[4];  
    assign y[5]  = a[5] ^ b[5] ^ temp3[5];  
    assign y[6]  = a[6] ^ b[6] ^ temp3[6];
    assign y[7]  = a[7] ^ b[7] ^ temp3[7];  
    assign y[8]  = a[8] ^ b[8] ^ temp3[8];
    assign y[9]  = a[9] ^ b[9] ^ temp3[9];  
    assign y[10] = a[10] ^ b[10] ^ temp3[10];  
    assign y[11] = a[11] ^ b[11] ^ temp3[11];  
    assign y[12] = a[12] ^ b[12] ^ temp3[12];  
    assign y[13] = a[13] ^ b[13] ^ temp3[13];  
    assign y[14] = a[14] ^ b[14] ^ temp3[14];  
    assign y[15] = a[15] ^ b[15] ^ temp3[15];  
    assign y[16] = 1'b0 ^ 1'b0 ^ temp3[16][0];  

endmodule


module state_transition (
    input [1:0] present_stage,
    input [1:0] prev_stage,
    output reg [1:0] next_stage
);

    localparam K = 2'b00;  
    localparam P = 2'b01;  
    localparam G = 2'b11;  
    localparam Q = 2'b10;  

    always @(*) begin
        case ({present_stage, prev_stage})
            {G, G}: next_stage = G;  
            {G, P}: next_stage = G;  
            {G, K}: next_stage = G;  
            {G, Q}: next_stage = G;
            {P, G}: next_stage = G;  
            {P, P}: next_stage = P;  
            {P, K}: next_stage = K;  
            {P, Q}: next_stage = Q;
            {K, P}: next_stage = K;  
            {K, K}: next_stage = K;  
            {K, G}: next_stage = K;  
            {K, Q}: next_stage = K;
            {Q, G}: next_stage = G;  
            {Q, P}: next_stage = Q;  
            {Q, K}: next_stage = K;  
            {Q, Q}: next_stage = Q;  
            default: next_stage = K;  
        endcase
    end
endmodule
