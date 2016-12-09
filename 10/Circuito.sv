module Circuito(input Clock, output logic f1, f2);
    logic[12:0] contador;

    ContadorDescida Count(.Clock(Clock), .Saida(contador));

    always_ff @(negedge Clock) begin
        if(contador>=13'd3849 && contador<13'd4149)
            f1 <= 13'd0;
        else
            f1 <= 13'd1;

        if(contador>=13'd3199 && contador<13'd3799)
            f2 <= 13'd0;
        else
            f2 <= 13'd1;
    end
endmodule