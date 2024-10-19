module top (
	input [3:0] sw,
	output led // This needs to be able to match to the constraints file
			   // You can either remove the [0] from the led entry in the
			   // constraints file, or change this to be a 1-bit wide vector
			   // [0:0]
);

	mux4x1 Obama(
		.D(sw[3]), // Your switches are hooked up in the wrong order
		.C(sw[2]),
        .B(sw[1]),
        .A(sw[0]),
        .Y(led),
        .Sel(sw[3:2])
	);

	// According to the IO table in the assignment:
	// D = sw[0]
	// C = sw[1]
	// B = sw[2]
	// A = sw[3]

    endmodule