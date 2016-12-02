module Teste;
    logic Swap, Enable, Clock;
    logic[3:0] DownCountS, UpCountS;

    UpDownCount Test(.Swap(Swap), .Enable(Enable), .Clock(Clock), .DownCountS(DownCountS), .UpCountS(UpCountS));

    initial begin
        Swap = 0;
        Enable = 0;
        Clock = 0;

        forever #10 Clock = ~Clock;
    end

    initial begin
        #20 Enable = 1;
        #30 Enable = 0;
        #20 Enable = 1;
    end

    initial forever #100 Swap = ~Swap;

    $monitor(Swap, Enable, Clock, DownCountS, UpCountS);
endmodule