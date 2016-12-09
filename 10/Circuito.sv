module Circuito(input Clock, output logic f1, f2);
    logic[12:0] countSubida, countDescida, saida1, saida2;

    ContadorDescida Count(.Clock(Clock), .Saida(countDescida));

    always_ff @(negedge Clock) begin
        if(countDescida>=13'd3849 && countDescida<13'd4149)
            f1 <= 13'd0;
        else
            f1 <= 13'd1;

        if(countDescida>=13'd3199 && countDescida<13'd3799)
            f2 <= 13'd0;
        else
            f2 <= 13'd1;
    end
endmodule