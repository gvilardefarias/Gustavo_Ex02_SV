module Circuito(input Clock, output logic f);
    logic[8:0] count, EntradaCount, EntradaSaida;

    Registrador Count(.Clock(Clock), .Entrada(EntradaCount), .Saida(count)),
                Saida(.Clock(Clock), .Entrada(EntradaSaida), .Saida(f));

    always_comb begin
        if(count==499)
            Entrada = 0;
        else
            Entrada = Entrada + 9'd1;

        if(count>19 && count<90)
            EntradaSaida = 9'd0;
        else
            EntradaSaida = 9'd1;
    end
endmodule