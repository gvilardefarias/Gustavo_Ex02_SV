module UpDownCount(input Swap, Enable, Clock, output logic[3:0] DownCountS, UpCountS);
    logic[3:0] DownCountE, UpCountE;

    Registrador DownCount(.Clock(Clock), .Entrada(DownCountE), .Saida(DownCountS)),
                UpCount(.Clock(Clock), .Entrada(UpCountE), .Saida(UpCountS));

    always_comb
        if(Enable)
            if(Swap) begin
                DownCountE = UpCountS;
                UpCountE = DownCountS;
            end
            else begin
                DownCountE = DownCountS - 1;
                UpCountE = UpCountS + 1;
            end
        else begin
            DownCountE = DownCountS;
            UpCountE = UpCountS;
        end
endmodule