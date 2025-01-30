module tb_two_step_transition;
    reg [15:0] a;
    reg [15:0] b;
    reg cin;
   
    wire [1:0] temp [16:0];  
    wire [1:0] temp1 [16:0];
    wire [1:0] temp2 [16:0];
    wire [1:0] temp3 [16:0];
    wire [16:0] y;          

    two_step_transition uut (
        .a(a),
        .b(b),
        .cin(cin),
        .temp(temp),
        .temp1(temp1),
        .temp2(temp2),
        .temp3(temp3),
        .y(y)
    );

    initial begin
        // Test Case 1
        a = 16'b1111111111111111;  // a = 65535
        b = 16'b1111111111111111;  // b = 65535
        cin = 1;                    // Carry-in = 1
        #10;      

        // Test Case 2
        a = 16'h0f0f;  // a = 3855
        b = 16'h1010;  // b = 4112
        cin = 1;       // Carry-in = 1
        #10;

        // Test Case 3
        a = 16'hA5A5;  // a = 42613
        b = 16'h5A5A;  // b = 23130
        cin = 0;       // Carry-in = 0
        #10;

        // Test Case 4
        a = 16'hFFFF;  // a = 65535
        b = 16'h0001;  // b = 1
        cin = 1;       // Carry-in = 1
        #10;

        // Test Case 5
        a = 16'h1234;  // a = 4660
        b = 16'h5678;  // b = 22136
        cin = 0;       // Carry-in = 0
        #10;

        // Test Case 6
        a = 16'h1111;  // a = 4369
        b = 16'h2222;  // b = 8738
        cin = 1;       // Carry-in = 1
        #10;

        $finish;
    end

    initial begin
        $monitor("\nTime = %0t\n",
                 $time,
                 
                 // Display temp values
                 "Temp Labels:  temp[16] temp[15] temp[14] temp[13] temp[12] temp[11] temp[10] temp[9]  temp[8]  temp[7]  temp[6]  temp[5]  temp[4]  temp[3]  temp[2]  temp[1]  temp[0]\n",
                 "Temp Values:   %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b\n",
                 temp[16], temp[15], temp[14], temp[13], temp[12], temp[11], temp[10], temp[9], temp[8], temp[7], temp[6], temp[5], temp[4], temp[3], temp[2], temp[1], temp[0],
                 
                 // Display temp1 values
                 "Temp1 Labels: temp1[16] temp1[15] temp1[14] temp1[13] temp1[12] temp1[11] temp1[10] temp1[9]  temp1[8]  temp1[7]  temp1[6]  temp1[5]  temp1[4]  temp1[3]  temp1[2]  temp1[1]  temp1[0]\n",
                 "Temp1 Values:  %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b\n",
                 temp1[16], temp1[15], temp1[14], temp1[13], temp1[12], temp1[11], temp1[10], temp1[9], temp1[8], temp1[7], temp1[6], temp1[5], temp1[4], temp1[3], temp1[2], temp1[1], temp1[0],
                 
                 // Display temp2 values
                 "Temp2 Labels: temp2[16] temp2[15] temp2[14] temp2[13] temp2[12] temp2[11] temp2[10] temp2[9]  temp2[8]  temp2[7]  temp2[6]  temp2[5]  temp2[4]  temp2[3]  temp2[2]  temp2[1]  temp2[0]\n",
                 "Temp2 Values:  %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b\n",
                 temp2[16], temp2[15], temp2[14], temp2[13], temp2[12], temp2[11], temp2[10], temp2[9], temp2[8], temp2[7], temp2[6], temp2[5], temp2[4], temp2[3], temp2[2], temp2[1], temp2[0],
                 
                 // Display temp3 values
                 "Temp3 Labels: temp3[16] temp3[15] temp3[14] temp3[13] temp3[12] temp3[11] temp3[10] temp3[9]  temp3[8]  temp3[7]  temp3[6]  temp3[5]  temp3[4]  temp3[3]  temp3[2]  temp3[1]  temp3[0]\n",
                 "Temp3 Values:  %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b\n",
                 temp3[16], temp3[15], temp3[14], temp3[13], temp3[12], temp3[11], temp3[10], temp3[9], temp3[8], temp3[7], temp3[6], temp3[5], temp3[4], temp3[3], temp3[2], temp3[1], temp3[0],
                 
                 // Display output y values
                 "y Labels:    y[16]   y[15]   y[14]   y[13]   y[12]   y[11]   y[10]   y[9]    y[8]    y[7]    y[6]    y[5]    y[4]    y[3]    y[2]    y[1]    y[0]\n",
                 "y Values:    %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b       %b\n",
                 y[16], y[15], y[14], y[13], y[12], y[11], y[10], y[9], y[8], y[7], y[6], y[5], y[4], y[3], y[2], y[1], y[0]);
    end
endmodule
