module ddnf(
        input a, b, c,
        output f
);
        assign f =  ~(~c | ~( b | a ));
endmodule