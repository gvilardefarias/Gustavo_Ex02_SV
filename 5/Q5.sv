module Q5 (input logic resetn, clock, input logic[7:0] data_in, output logic[2:0] msb);
    integer i;

    always_ff @(posedge clock or negedge resetn) begin
        if(!resetn)
            msb <= 3'b000;
        else begin
            i = 0;
            
            while(i<8) begin
                if (data_in[i])
                    msb <= i;

                i = i + 1;
            end
        end
    end
endmodule

//Sim, é possivel a troca do for pelo o while pois temos uma quantidade fixa de repetições