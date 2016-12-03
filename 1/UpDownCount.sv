module UpDownCount(input Swap, Enable, Clock, Reset, output logic[3:0] DownCountS, UpCountS);
    logic[3:0] DownCountE, UpCountE;

    Registrador DownCount(.Clock(Clock), .Entrada(DownCountE), .Saida(DownCountS), .Reset(Reset)),
                UpCount(.Clock(Clock), .Entrada(UpCountE), .Saida(UpCountS), .Reset(Reset));

    always_comb
        if(Enable)
            if(Swap) begin
                DownCountE = UpCountS;
                UpCountE = DownCountS;
            end
            else begin
                DownCountE = DownCountS - 4'd1;
                UpCountE = UpCountS + 4'd1;
            end
        else begin
            DownCountE = DownCountS;
            UpCountE = UpCountS;
        end
endmodule