module ContadorSubida(input Clock, output logic[2:0] Saida);
    always_ff @(posedge Clock) begin
        if(Saida == 3'd4)
            Saida <= 3'd0;
        else
            Saida <= Saida + 3'd1;
    end
endmodule

module ContadorDescida(input Clock, output logic[2:0] Saida);
    always_ff @(negedge Clock) begin
        if(Saida == 3'd4)
            Saida <= 3'd0;
        else
            Saida <= Saida + 3'd1;
    end
endmodule