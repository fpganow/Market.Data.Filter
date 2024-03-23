`timescale 1ns / 1ps

`include "sim/pysv_pkg.sv"
import pysv::*;

//////////////////////////////////////////////////////////////////////////////////
//
// Create Date: 02/10/2024 05:33 PM
// Module Name: autogenerated_tb
// Description: 
//
//
//////////////////////////////////////////////////////////////////////////////////

module autogenerated_tb();

    // 10ns = 100 MHz
    // 20ns = 50 MHz
    // 25ns = 40MHz
    // duration for each bit = 20 * timescale = 20 * 1 ns = 20 ns
    localparam period = 10;
    localparam duty_cycle = period / 2;
    localparam period_40 = 25;
    localparam duty_cycle_40 = period_40 / 2;

    reg clk40;
    reg              clk40derived5x2b00mhz;

    // 100MHz Clock
    always
    begin
        clk40derived5x2b00mhz = 1'b0;
        //Clk40Derived7x2B40MHz =  1'b0;
        #duty_cycle;

        clk40derived5x2b00mhz = 1'b1;
        //Clk40Derived7x2B40MHz =  1'b1;
        #duty_cycle;
    end

    // 40MHz Clock
    always
    begin
        clk40 = 1'b0;
        #duty_cycle_40;

        clk40 = 1'b1;
        #duty_cycle_40;
    end

    // Variables for NiFpgaIPWrapper_filter_ip
    reg              reset;
    reg              enable_in;
    wire             enable_out;
    reg              enable_clr;
    // OrderBook.Command.In
    reg    [ 0:0]    in_ip_cmd_remove;
    reg    [ 0:0]    in_ip_cmd_edit;
    reg    [ 0:0]    in_ip_cmd_add;
    reg    [31:0]    in_ip_cmd_seq_no;
    reg    [63:0]    in_ip_cmd_nanoseconds;
    reg    [63:0]    in_ip_cmd_seconds;
    reg    [31:0]    in_ip_cmd_remaining_qty;
    reg    [31:0]    in_ip_cmd_canceled_qty;
    reg    [31:0]    in_ip_cmd_executed_qty;
    reg    [63:0]    in_ip_cmd_price;
    reg    [63:0]    in_ip_cmd_symbol;
    reg    [31:0]    in_ip_cmd_quantity;
    reg    [63:0]    in_ip_cmd_orderid;
    reg    [ 7:0]    in_ip_cmd_side;
    reg    [ 7:0]    in_ip_cmd_type;
    reg    [ 0:0]    in_ip_cmd_valid;
    // State.out
    wire   [ 0:0]    out_ip_state_out_valid;
    wire   [63:0]    out_ip_state_out_quantity;
    wire   [63:0]    out_ip_state_out_orderid;
    // OrderBook.Command.Out
    wire   [ 0:0]    o_ip_cmd_valid;
    wire   [31:0]    o_ip_cmd_seq_no;
    wire   [ 0:0]    o_ip_cmd_remove;
    wire   [ 0:0]    o_ip_cmd_edit;
    wire   [ 0:0]    o_ip_cmd_add;
    wire   [63:0]    o_ip_cmd_nanoseconds;
    wire   [63:0]    o_ip_cmd_seconds;
    wire   [31:0]    o_ip_cmd_remaining_qty;
    wire   [31:0]    o_ip_cmd_canceled_qty;
    wire   [31:0]    o_ip_cmd_executed_qty;
    wire   [63:0]    o_ip_cmd_price;
    wire   [63:0]    o_ip_cmd_symbol;
    wire   [31:0]    o_ip_cmd_quantity;
    wire   [63:0]    o_ip_cmd_orderid;
    wire   [ 7:0]    o_ip_cmd_side;
    wire   [ 7:0]    o_ip_cmd_type;
    // Debug.out
    wire   [ 0:0]    out_ip_debug_valid;
    wire   [127:0]    out_ip_debug_data;
    reg    [ 0:0]    in_ip_debug;
    reg    [ 0:0]    in_ip_reset;
    reg    [ 0:0]    in_ip_symbol_valid;
    reg    [63:0]    in_ip_symbol;
//    reg              Clk40Derived7x2B40MHz;

    NiFpgaIPWrapper_filter_ip UUT (
        .reset(reset),
        .enable_in(enable_in),
        .enable_out(enable_out),
        .enable_clr(enable_clr),

        .ctrlind_00_Command_In_Remove(in_ip_cmd_remove),
        .ctrlind_01_Command_In_Edit(in_ip_cmd_edit),
        .ctrlind_02_Command_In_Add(in_ip_cmd_add),
        .ctrlind_03_Command_In_Seq_No(in_ip_cmd_seq_no),
        .ctrlind_04_Command_In_nanoseconds(in_ip_cmd_nanoseconds),
        .ctrlind_05_Command_In_seconds(in_ip_cmd_seconds),
        .ctrlind_06_Command_In_remaining_qty(in_ip_cmd_remaining_qty),
        .ctrlind_07_Command_In_canceled_qty(in_ip_cmd_canceled_qty),
        .ctrlind_08_Command_In_executed_qty(in_ip_cmd_executed_qty),
        .ctrlind_09_Command_In_price(in_ip_cmd_price),
        .ctrlind_10_Command_In_symbol(in_ip_cmd_symbol),
        .ctrlind_11_Command_In_quantity(in_ip_cmd_quantity),
        .ctrlind_12_Command_In_orderId(in_ip_cmd_orderid),
        .ctrlind_13_Command_In_side(in_ip_cmd_side),
        .ctrlind_14_Command_In_type(in_ip_cmd_type),
        .ctrlind_15_Command_In_Valid(in_ip_cmd_valid),

        .ctrlind_16_State_Out_Valid(out_ip_state_out_valid),
        .ctrlind_17_State_Out_Quantity(out_ip_state_out_quantity),
        .ctrlind_18_State_Out_OrderId(out_ip_state_out_orderid),

        .ctrlind_19_Command_Out_Valid(o_ip_cmd_valid),
        .ctrlind_20_Command_Out_Seq_No(o_ip_cmd_seq_no),
        .ctrlind_21_Command_Out_Remove(o_ip_cmd_remove),
        .ctrlind_22_Command_Out_Edit(o_ip_cmd_edit),
        .ctrlind_23_Command_Out_Add(o_ip_cmd_add),
        .ctrlind_24_Command_Out_nanoseconds(o_ip_cmd_nanoseconds),
        .ctrlind_25_Command_Out_seconds(o_ip_cmd_seconds),
        .ctrlind_26_Command_Out_remaining_qty(o_ip_cmd_remaining_qty),
        .ctrlind_27_Command_Out_canceled_qty(o_ip_cmd_canceled_qty),
        .ctrlind_28_Command_Out_executed_qty(o_ip_cmd_executed_qty),
        .ctrlind_29_Command_Out_price(o_ip_cmd_price),
        .ctrlind_30_Command_Out_symbol(o_ip_cmd_symbol),
        .ctrlind_31_Command_Out_quantity(o_ip_cmd_quantity),
        .ctrlind_32_Command_Out_orderId(o_ip_cmd_orderid),
        .ctrlind_33_Command_Out_side(o_ip_cmd_side),
        .ctrlind_34_Command_Out_type(o_ip_cmd_type),

        .ctrlind_35_Debug_Valid(out_ip_debug_valid),
        .ctrlind_36_Debug_Data(out_ip_debug_data),
        .ctrlind_37_debug(in_ip_debug),
        .ctrlind_38_reset(in_ip_reset),
        .ctrlind_39_Symbol_Valid(in_ip_symbol_valid),
        .ctrlind_40_Symbol(in_ip_symbol),
        .Clk40Derived5x2B00MHz(clk40derived5x2b00mhz)
        //.Clk40(clk40),
        //.Clk40Derived7x2B40MHz(Clk40Derived7x2B40MHz)
    );

    initial
    begin
        FilterBench filter_bench;
        MyList my_list;
        OBCommand ob_cmd;
        int watchlist_len;
        int counter;
        int i, n;

        @(posedge clk40derived5x2b00mhz);
//        $display("START_TIME: %d", $time);
        #(duty_cycle);

        // Set default control signal values
        reset = 0;
        enable_in = 0;
        enable_clr = 0;
        reset = 0;

        // Set default LabVIEW values
        // Control Signals
        in_ip_debug = 0;
        in_ip_reset = 0;
        in_ip_symbol_valid = 0;
        in_ip_cmd_valid = 0;
        // Misc values
        in_ip_symbol = 0;
        in_ip_cmd_nanoseconds = 0;
        in_ip_cmd_seconds = 0;
        in_ip_cmd_remaining_qty = 0;
        in_ip_cmd_canceled_qty = 0;
        in_ip_cmd_executed_qty = 0;
        in_ip_cmd_price = 0;
        in_ip_cmd_symbol = 0;
        in_ip_cmd_quantity = 0;
        in_ip_cmd_orderid = 0;
        in_ip_cmd_side = 0;
        in_ip_cmd_type = 0;
        #(period*5);

        // Reset IP - Hold for 2 clock cycles
        reset = 1;
        #(period * 20);
        $display("[%d] Reset IP", $time);

        // Enable IP - Wait for 4 clock cycles
        enable_in = 1;
        reset = 0;
        #(period * 40);

        // Enable IP - Wait for 2 clock cycles
        enable_in = 1;
        #(period*20);

        #(period*5);

        $display("+=============================================================================+");
        $display("[%d] Start of Tests", $time);
        $display("+-----------------------------------------------------------------------------+");

        $display("  IP Reset (in_ip_reset)");
        // IP Reset
        in_ip_reset = 1;
        #(period);

        in_ip_reset = 0;
        #(period*5);

        // Current Working Directory is ip_export/sim/synth/func
        filter_bench = new("../../bench_1.cfg", "../../../../../../sim/bench_1.cfg",
                           period);

        // Step #1 - Send WatchList
        $display("  [%d] Step #1 - Send WatchList", $time);
        $display("  Using config file: %s", filter_bench.get_config_file());
        $display("  %s", filter_bench.print_header());

        watchlist_len = filter_bench.watchlist_get_size();
        $display("  Writing watchList Length: %d\n", watchlist_len);
        in_ip_symbol = watchlist_len;
        in_ip_symbol_valid = 1;
        #(period*1);

        for (int i=0; i<watchlist_len; i++)
        begin
            $display("  Sending:");
            $display("    - %s", filter_bench.watchlist_get_item_str(i));
            $display("    - 0x%x", filter_bench.watchlist_get_item(i));
            in_ip_symbol = filter_bench.watchlist_get_item(i);
            #(period*1);
        end

        in_ip_symbol_valid = 0;
        in_ip_symbol = 0;
        #(period*3);

        // Step #2 - Send Commands
        ob_cmd = new();
        $display("\n");
        $display("%d  Step #2 - Sending Commands", $time);
        counter = 1;
        while (filter_bench.has_more_commands())
        begin
            $display("  <= Retrieving command #%3d  %d", counter, $time);
            filter_bench.get_next_command(ob_cmd);
            $display("      {");
            $display("          Type: %2d,", ob_cmd.cmd_type());
            $display("          Side: 0x%x,", ob_cmd.cmd_side());
            $display("          OrderId: 0x%8x,", ob_cmd.cmd_orderid());
            $display("          Quantity: %4d,", ob_cmd.cmd_quantity());
            $display("          Symbol: 0x%8x", ob_cmd.cmd_symbol());
            $display("          Price: 0x%8d", ob_cmd.cmd_price());
            $display("          Quantity (exe, can, rem) : %4d  %4d  %4d",
                                    ob_cmd.cmd_executed_qty(),
                                    ob_cmd.cmd_canceled_qty(),
                                    ob_cmd.cmd_remaining_qty());
            $display("          Seconds: %d", ob_cmd.cmd_seconds());
            $display("          Nanoseconds: %d", ob_cmd.cmd_nanoseconds());
            $display("          (Add, Edit, Remove): %d  %d  %d",
                                    ob_cmd.cmd_add(),
                                    ob_cmd.cmd_edit(),
                                    ob_cmd.cmd_remove());
            $display("          Seq No: %d", ob_cmd.cmd_seq_no());
            $display("      }\n");

            // Use object
            $display("  => Writing command #%3d to FPGA", counter);
            filter_bench.log_command_send(ob_cmd.cmd_orderid(),
                                          ob_cmd.cmd_seq_no(),
                                          ob_cmd.cmd_seconds(),
                                          ob_cmd.cmd_nanoseconds(),
                                          $time);

            in_ip_cmd_valid = 1;
            in_ip_cmd_type = ob_cmd.cmd_type();
            in_ip_cmd_side = ob_cmd.cmd_side();
            in_ip_cmd_orderid = ob_cmd.cmd_orderid();
            in_ip_cmd_quantity = ob_cmd.cmd_quantity();
            in_ip_cmd_symbol = ob_cmd.cmd_symbol();
            in_ip_cmd_price = ob_cmd.cmd_price();
            in_ip_cmd_executed_qty = ob_cmd.cmd_executed_qty();
            in_ip_cmd_canceled_qty = ob_cmd.cmd_canceled_qty();
            in_ip_cmd_remaining_qty = ob_cmd.cmd_remaining_qty();
            in_ip_cmd_seconds = ob_cmd.cmd_seconds();
            in_ip_cmd_nanoseconds = ob_cmd.cmd_nanoseconds();
            in_ip_cmd_add = ob_cmd.cmd_add();
            in_ip_cmd_edit = ob_cmd.cmd_edit();
            in_ip_cmd_remove = ob_cmd.cmd_remove();
            in_ip_cmd_seq_no = ob_cmd.cmd_seq_no();

            counter++;
            #(period*1);
        end
        in_ip_cmd_valid = 0;

        $display("  Finished sending commands");
/*
        // Final Step Read Debug Values
        #(period*10);
        $display("\n");
        $display("  Final Step - Read Debug Values");
        in_ip_debug = 1;
        #(period*1);

        in_ip_debug = 0;

        // TODO: Put a termination or timeout for debug
        //   - Polling with count of clock cycles with nothing
        i = 0;
        n = 2;
        $display("  Reading %d Debug Values", n);
        while (i < n)
        begin
            i++;
            wait (out_ip_debug_valid == 1);
            @(posedge clk40derived5x2b00mhz);
            $display("  - [%6d] Debug_value: %x", $time, out_ip_debug_data);
            #(duty_cycle*2);
        end
*/

        // TODO: Receive multiple <- return value from filter_bench.get_num_expected()
        i = 0;
        n = 4;
        $display("  Reading %d Commands", n);
        while (i < n)
        begin
            i++;
            wait (o_ip_cmd_valid == 1);
            @(posedge clk40derived5x2b00mhz);
            filter_bench.log_command_receive(o_ip_cmd_orderid,
                                             o_ip_cmd_seq_no,
                                             o_ip_cmd_seconds,
                                             o_ip_cmd_nanoseconds,
                                             $time);

            $display(" [%6d] - Valid Command received:", $time);
            $display("  {");
            $display("            type:     %6d", o_ip_cmd_type);
            $display("            side:       0x%2x", o_ip_cmd_side);
            $display("         orderid: 0x%8x", o_ip_cmd_orderid);
            $display("          symbol: 0x%8x", o_ip_cmd_symbol);
            $display("        quantity:     %6d", o_ip_cmd_quantity);
            $display("           price: %.4f", o_ip_cmd_price);
            $display("    Quantity (exe, can, rem): %6d  %6d   %6d", o_ip_cmd_executed_qty,
                                o_ip_cmd_canceled_qty, o_ip_cmd_remaining_qty);
            $display("         seconds:     %6d", o_ip_cmd_seconds);
            $display("     nanoseconds:     %6d", o_ip_cmd_nanoseconds);
            $display("    (Add, Edit, Remove):  %1d  %1d  %1d", o_ip_cmd_add,
                                o_ip_cmd_edit,
                                o_ip_cmd_remove);
            $display("          seq_no:     %6d", o_ip_cmd_seq_no);
            $display("      }\n");
            #(duty_cycle*2);
        end

        $display("%s", filter_bench.get_results());

        $display("+-----------------------------------------------------------------------------+");
        $display("| End of TEST BENCH                                                           |");
        $display("+=============================================================================+");
        $display("");
// */
        $finish;
    end
endmodule

// AUTO_GENERATED_CODE_END: ip_export.py
