module Circuito(input Clock, output logic f1, f2);
    logic[2:0] countSubida, countDescida, saida1, saida2;

    ContadorSubida Subida(.Clock(Clock), .Saida(countSubida));
    ContadorDescida Descida(.Clock(Clock), .Saida(countDescida));

    always_ff @(posedge Clock)
        if(countSubida == 3'd3)
            saida1 <= 3'd0;
        else
            saida1 <= 3'd1;

    always_ff @(negedge Clock)
        if(countDescida == 3'd2)
            saida2 <= 3'd0;
        else
            saida2 <= 3'd1;

    always_comb
        f1 = saida1 || saida2;
endmodule