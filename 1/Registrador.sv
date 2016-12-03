module Registrador(input Clock, input[3:0] Entrada, output logic[3:0] Saida);
    always_ff @(posedge Clock)
        Saida <= Entrada;
endmodule