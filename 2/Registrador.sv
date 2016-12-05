module Registrador(input Clock, input[8:0] Entrada, output logic[8:0] Saida);
    always_ff @(posedge Clock)
        Saida <= Entrada;
endmodule