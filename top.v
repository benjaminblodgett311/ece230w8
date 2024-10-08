module top (
	input [3:0] sw,
	output led
);

	mux4x1 Obama(
		.D(sw[3]),
		.C(sw[2]),
        .B(sw[1]),
        .A(sw[0]),
        .Y(led),
        .Sel(sw[3:2])
	);

    endmodule