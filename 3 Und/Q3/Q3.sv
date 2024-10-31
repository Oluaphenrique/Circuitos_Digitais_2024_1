module grey(
    input logic clk, rst,
    input logic gcnt, 
    output logic [2:0] s  
);

    typedef enum {a, b, c, d, e, f, g, h} t_state;
    t_state currState, nextState; 

    initial begin
        currState = a;
        s = 3'b000; 
    end 

    always @(posedge clk, posedge rst) begin
        if (rst == 1'b1) begin
            currState = a;
        end
        else begin
            currState = nextState; 
        end 
    end 

    always @* begin
        case (currState)
            a : begin
                if (gcnt == 1'b1) nextState = b;
                else nextState = a; 
            end
            b : begin
                if (gcnt == 1'b1) nextState = c;
                else nextState = b; 
            end
            c : begin
                if (gcnt == 1'b1) nextState = d;
                else nextState = c; 
            end
            d : begin
                if (gcnt == 1'b1) nextState = e;
                else nextState = d; 
            end
            e : begin
                if (gcnt == 1'b1) nextState = f;
                else nextState = e; 
            end
            f : begin
                if (gcnt == 1'b1) nextState = g;
                else nextState = f; 
            end
            g : begin
                if (gcnt == 1'b1) nextState = h;
                else nextState = g; 
            end
            h : begin
                if (gcnt == 1'b1) nextState = a;
                else nextState = h; 
            end
        endcase  
    end 

    always @* begin
        case(currState)
            a : begin
                s = 3'b000;
            end
            b : begin
                s = 3'b010;
            end
            c : begin
                s = 3'b011;
            end
            d : begin
                s = 3'b001;
            end
            e : begin
                s = 3'b101;
            end
            f : begin
                s = 3'b111;
            end
            g : begin
                s = 3'b110;
            end
            h : begin
                s = 3'b100;
            end
        endcase
    end
endmodule

 