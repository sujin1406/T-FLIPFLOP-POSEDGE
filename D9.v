module D9(T, clk, Q, Qbar);

input T, clk;
output reg Q;
output Qbar;

assign Qbar = ~Q;

initial
begin
    Q = 0;
end

always @(posedge clk)
begin
    if(T == 1'b0)
        Q <= Q;        // No change
    else
        Q <= ~Q;       // Toggle
end

endmodule