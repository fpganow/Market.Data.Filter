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

    // 40MHz Clock
    always
    begin
        Clk40Derived7x2B40MHz =  1'b0;
        #duty_cycle;

        Clk40Derived7x2B40MHz =  1'b1;
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
    wire   [ 0:0]    out_ip_state_out_valid;
    wire   [63:0]    out_ip_state_out_quantity;
    wire   [63:0]    out_ip_state_out_orderid;
    wire   [ 0:0]    out_ip_command_out_valid;
    wire   [ 0:0]    out_ip_command_out_remove;
    wire   [ 0:0]    out_ip_command_out_edit;
    wire   [ 0:0]    out_ip_command_out_add;
    wire   [63:0]    out_ip_command_out_nanoseconds;
    wire   [63:0]    out_ip_command_out_seconds;
    wire   [31:0]    out_ip_command_out_remaining_qty;
    wire   [31:0]    out_ip_command_out_canceled_qty;
    wire   [31:0]    out_ip_command_out_executed_qty;
    wire   [63:0]    out_ip_command_out_price;
    wire   [63:0]    out_ip_command_out_symbol;
    wire   [31:0]    out_ip_command_out_quantity;
    wire   [63:0]    out_ip_command_out_orderid;
    wire   [ 7:0]    out_ip_command_out_side;
    wire   [ 7:0]    out_ip_command_out_type;
    wire   [ 0:0]    out_ip_debug_valid;
    wire   [127:0]    out_ip_debug_data;
    reg    [ 0:0]    in_ip_debug;
    reg    [ 0:0]    in_ip_reset;
    reg    [ 0:0]    in_ip_symbol_valid;
    reg    [63:0]    in_ip_symbol;
    reg    [63:0]    in_ip_command_in_nanoseconds;
    reg    [63:0]    in_ip_command_in_seconds;
    reg    [31:0]    in_ip_command_in_remaining_qty;
    reg    [31:0]    in_ip_command_in_canceled_qty;
    reg    [31:0]    in_ip_command_in_executed_qty;
    reg    [63:0]    in_ip_command_in_price;
    reg    [63:0]    in_ip_command_in_symbol;
    reg    [31:0]    in_ip_command_in_quantity;
    reg    [63:0]    in_ip_command_in_orderid;
    reg    [ 7:0]    in_ip_command_in_side;
    reg    [ 7:0]    in_ip_command_in_type;
    reg    [ 0:0]    in_ip_command_in_valid;
    reg              Clk40Derived7x2B40MHz;

    NiFpgaIPWrapper_filter_ip UUT (
        .reset(reset),
        .enable_in(enable_in),
        .enable_out(enable_out),
        .enable_clr(enable_clr),
        .ctrlind_00_State_Out_Valid(out_ip_state_out_valid),
        .ctrlind_01_State_Out_Quantity(out_ip_state_out_quantity),
        .ctrlind_02_State_Out_OrderId(out_ip_state_out_orderid),
        .ctrlind_03_Command_Out_Valid(out_ip_command_out_valid),
        .ctrlind_04_Command_Out_Remove(out_ip_command_out_remove),
        .ctrlind_05_Command_Out_Edit(out_ip_command_out_edit),
        .ctrlind_06_Command_Out_Add(out_ip_command_out_add),
        .ctrlind_07_Command_Out_nanoseconds(out_ip_command_out_nanoseconds),
        .ctrlind_08_Command_Out_seconds(out_ip_command_out_seconds),
        .ctrlind_09_Command_Out_remaining_qty(out_ip_command_out_remaining_qty),
        .ctrlind_10_Command_Out_canceled_qty(out_ip_command_out_canceled_qty),
        .ctrlind_11_Command_Out_executed_qty(out_ip_command_out_executed_qty),
        .ctrlind_12_Command_Out_price(out_ip_command_out_price),
        .ctrlind_13_Command_Out_symbol(out_ip_command_out_symbol),
        .ctrlind_14_Command_Out_quantity(out_ip_command_out_quantity),
        .ctrlind_15_Command_Out_orderId(out_ip_command_out_orderid),
        .ctrlind_16_Command_Out_side(out_ip_command_out_side),
        .ctrlind_17_Command_Out_type(out_ip_command_out_type),
        .ctrlind_18_Debug_Valid(out_ip_debug_valid),
        .ctrlind_19_Debug_Data(out_ip_debug_data),
        .ctrlind_20_debug(in_ip_debug),
        .ctrlind_21_reset(in_ip_reset),
        .ctrlind_22_Symbol_Valid(in_ip_symbol_valid),
        .ctrlind_23_Symbol(in_ip_symbol),
        .ctrlind_24_Command_In_nanoseconds(in_ip_command_in_nanoseconds),
        .ctrlind_25_Command_In_seconds(in_ip_command_in_seconds),
        .ctrlind_26_Command_In_remaining_qty(in_ip_command_in_remaining_qty),
        .ctrlind_27_Command_In_canceled_qty(in_ip_command_in_canceled_qty),
        .ctrlind_28_Command_In_executed_qty(in_ip_command_in_executed_qty),
        .ctrlind_29_Command_In_price(in_ip_command_in_price),
        .ctrlind_30_Command_In_symbol(in_ip_command_in_symbol),
        .ctrlind_31_Command_In_quantity(in_ip_command_in_quantity),
        .ctrlind_32_Command_In_orderId(in_ip_command_in_orderid),
        .ctrlind_33_Command_In_side(in_ip_command_in_side),
        .ctrlind_34_Command_In_type(in_ip_command_in_type),
        .ctrlind_35_Command_In_Valid(in_ip_command_in_valid),
        .Clk40(clk40),
        .Clk40Derived7x2B40MHz(Clk40Derived7x2B40MHz)
    );

    initial
    begin
        FilterBench filter_bench;
        MyList my_list;
        OBCommand ob_cmd;
        int watchlist_len;
        int counter;
        int i, n;

        #(duty_cycle/2);

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
        in_ip_command_in_valid = 0;
        // Misc values
        in_ip_symbol = 0;
        in_ip_command_in_nanoseconds = 0;
        in_ip_command_in_seconds = 0;
        in_ip_command_in_remaining_qty = 0;
        in_ip_command_in_canceled_qty = 0;
        in_ip_command_in_executed_qty = 0;
        in_ip_command_in_price = 0;
        in_ip_command_in_symbol = 0;
        in_ip_command_in_quantity = 0;
        in_ip_command_in_orderid = 0;
        in_ip_command_in_side = 0;
        in_ip_command_in_type = 0;
        #(period*5);

        // Reset IP - Hold for 2 clock cycles
        reset = 1;
        #(period * 20);
        $display("Reset IP");

        // Enable IP - Wait for 4 clock cycles
        enable_in = 1;
        reset = 0;
        #(period * 40);

        // Enable IP - Wait for 2 clock cycles
        enable_in = 1;
        #(period*20);

        #(period*5);

        $display("+=============================================================================+");
        $display("| Start of Tests ");
        $display("+-----------------------------------------------------------------------------+");

        $display("  IP Reset (in_ip_reset)");
        // IP Reset
        in_ip_reset = 1;
        #(period);

        in_ip_reset = 0;
        #(period*5);

        // Current Working Directory is ip_export/sim/synth/func
        filter_bench = new("../../bench_1.cfg", "../../../../../../sim/bench_1.cfg");

        // Step #1 - Send WatchList
        $display("  Step #1 - Send WatchList");
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
        $display("  Step #2 - Sending Commands");
        counter = 1;
        while (filter_bench.has_more_commands())
        begin
            $display("  <= Retrieving command #%3d", counter);
            filter_bench.get_next_command(ob_cmd);
            $display("      {");
            $display("          Command Type: %2d,", ob_cmd.cmd_type());
            $display("          Side: 0x%x,", ob_cmd.cmd_side());
            $display("          OrderId: 0x%8x,", ob_cmd.cmd_orderid());
            $display("          Quantity: %4d,", ob_cmd.cmd_quantity());
            $display("          Symbol: 0x%8x", ob_cmd.cmd_symbol());
            $display("          Price: 0x%8d", ob_cmd.cmd_price());
            $display("          Executed  Quantity: %4d", ob_cmd.cmd_executed_qty());
            $display("          Canceled  Quantity: %4d", ob_cmd.cmd_canceled_qty());
            $display("          Remaining Quantity: %4d", ob_cmd.cmd_remaining_qty());
            $display("          Seconds: %d", ob_cmd.cmd_seconds());
            $display("          Nanoseconds: %d", ob_cmd.cmd_nanoseconds());
            $display("          Add: %d", ob_cmd.cmd_add());
            $display("          Edit: %d", ob_cmd.cmd_edit());
            $display("          Remove: %d", ob_cmd.cmd_remove());
            $display("      }\n");

            // Use object
            $display("  => Writing command #%3d to FPGA", counter);
            filter_bench.log_command_send();

            in_ip_command_in_valid = 1;
            in_ip_command_in_type = ob_cmd.cmd_type();
            in_ip_command_in_side = ob_cmd.cmd_side();
            in_ip_command_in_orderid = ob_cmd.cmd_orderid();
            in_ip_command_in_quantity = ob_cmd.cmd_quantity();
            in_ip_command_in_symbol = ob_cmd.cmd_symbol();
            in_ip_command_in_price = ob_cmd.cmd_price();
            in_ip_command_in_executed_qty = ob_cmd.cmd_executed_qty();
            in_ip_command_in_canceled_qty = ob_cmd.cmd_canceled_qty();
            in_ip_command_in_remaining_qty = ob_cmd.cmd_remaining_qty();
            in_ip_command_in_seconds = ob_cmd.cmd_seconds();
            in_ip_command_in_nanoseconds = ob_cmd.cmd_nanoseconds();

            counter++;
            #(period*1);
        end
        in_ip_command_in_valid = 0;

        $display("  Finished sending commands");

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
            @(posedge Clk40Derived7x2B40MHz);
            $display("  - [%6d] Debug_value: %x", $time, out_ip_debug_data);
            #(duty_cycle*2);
        end

        // TODO: Receive multiple
        i = 0;
        n = 2;
        $display("  Reading %d Commands", n);
        while (i < n)
        begin
            i++;
            wait (out_ip_command_out_valid == 1);
            @(posedge Clk40Derived7x2B40MHz);
            filter_bench.log_command_receive();

            $display("  [%6d] - Valid Command received:", $time);
            $display("      {");
            $display("          out_ip_command_out_valid: %d", out_ip_command_out_valid);
            $display("          out_ip_command_out_type: %2d", out_ip_command_out_type);
            $display("          out_ip_command_out_side: %x", out_ip_command_out_side);

            $display("          out_ip_command_out_orderid: %8x", out_ip_command_out_orderid);
            $display("          out_ip_command_out_symbol: %d", out_ip_command_out_symbol);
            $display("          out_ip_command_out_quantity: %d", out_ip_command_out_quantity);
            $display("          out_ip_command_out_price: %d", out_ip_command_out_price);
            $display("          out_ip_command_out_executed_qty: %d", out_ip_command_out_executed_qty);
            $display("          out_ip_command_out_canceled_qty: %d", out_ip_command_out_canceled_qty);
            $display("          out_ip_command_out_remaining_qty: %d", out_ip_command_out_remaining_qty);
            $display("          out_ip_command_out_seconds: %d", out_ip_command_out_seconds);
            $display("          out_ip_command_out_nanoseconds: %d", out_ip_command_out_nanoseconds);
            $display("          out_ip_command_out_add: %d", out_ip_command_out_add);
            $display("          out_ip_command_out_edit: %d", out_ip_command_out_edit);
            $display("          out_ip_command_out_remove: %d", out_ip_command_out_remove);
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
