module ContadorDescida(input Clock, output logic[12:0] Saida);
    always_ff @(negedge Clock) begin
        if(Saida == 13'd4599)
            Saida <= 13'd0;
        else
            Saida <= Saida + 13'd1;
    end
endmodule