module dknf(
        input a, b, c,
        output f
);
        assign f =  ~((~(b & c)) & (~(a & c)));
endmodule
