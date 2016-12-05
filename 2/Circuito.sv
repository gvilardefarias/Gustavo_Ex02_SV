module Circuito(input Clock, output logic f);
    logic[8:0] count, EntradaCount, EntradaSaida;

    Registrador Count(.Clock(Clock), .Entrada(EntradaCount), .Saida(count)),
                Saida(.Clock(Clock), .Entrada(EntradaSaida), .Saida(f));

    always_comb begin
        if(count==9'd499)
            EntradaCount = 9'd0;
        else
            EntradaCount = count + 9'd1;

        if(count>9'd19 && count<9'd90)
            EntradaSaida = 9'd0;
        else
            EntradaSaida = 9'd1;
    end
endmodule