`include "nor_gate.v"
module nor_gate_tb;
reg a,b;
wire y;

nor_gate td (
    .a(a),
    .b(b),
    .y(y)
);
initial begin 
    $dumpfile("nor_gate.vcd");//making the vcd file for timing diagram
    $dumpvars(0,nor_gate_tb);// dumps all  the variables of the testbench module 

    //initialise test inputs
            a=0; b=0;
        #10 a=0; b=1;
        #10 a=1; b=0;
        #10 a=1; b=1;
        #10
        $finish;
end
initial begin
    $monitor("Time =%0t a=%b b=%b y=%b",$time ,a,b,y); // helps in verifying the test cases
end
endmodule