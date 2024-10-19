`timescale 1ps/1ps

module test();

    reg [3:0] sw;
    wire [0:0] led;

    wire [15:0] answers;
    assign answers = 'b1010101011101010;

    reg [4:0] i;

    top uut(
        .sw(sw),
        .led(led)
    );

    initial begin
        $dumpvars(0,test);
        for (i = 0; i < 16; i = i + 1) begin
            sw = i;
            #5;
            if (answers[i] != led) begin
                $display("Your circutit has failed.");
                $finish;
            end
            #5;
        end

        $display("Your circutit has passed!");
        $finish;
    end

endmodule