module Registrador(input Clock, Reset, input[3:0] Entrada, output logic[3:0] Saida);
    always_ff @(posedge Clock or posedge Reset)
        if(Reset)
            Saida <= 4'd0;
        else
            Saida <= Entrada;
endmodule