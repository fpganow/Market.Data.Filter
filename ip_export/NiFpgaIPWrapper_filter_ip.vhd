-- VHDL wrapper for NiFpgaAG_filter_ip
-- Generated by LabVIEW FPGA IP Export Utility
--
-- Ports:
-- reset      :  Reset port. Minimum assertion length: 8 base clock cycles.
--               Minimum de-assertion length: 100 base clock cycles.
-- enable_in  :  Enable in port. Minimum re-initialization length: 7 base clock cycles.
-- enable_out :  Enable out port.
-- enable_clr :  Enable clear port.
-- ctrlind_00_Command_In_Remove : Top level control "Command.In.Remove", sync to Clk40Derived5x2B00MHz, bool
-- ctrlind_01_Command_In_Edit : Top level control "Command.In.Edit", sync to Clk40Derived5x2B00MHz, bool
-- ctrlind_02_Command_In_Add : Top level control "Command.In.Add", sync to Clk40Derived5x2B00MHz, bool
-- ctrlind_03_Command_In_Seq_No : Top level control "Command.In.Seq.No", sync to Clk40Derived5x2B00MHz, u32
-- ctrlind_04_Command_In_nanoseconds : Top level control "Command.In.nanoseconds", sync to Clk40Derived5x2B00MHz, u64
-- ctrlind_05_Command_In_seconds : Top level control "Command.In.seconds", sync to Clk40Derived5x2B00MHz, u64
-- ctrlind_06_Command_In_remaining_qty : Top level control "Command.In.remaining.qty", sync to Clk40Derived5x2B00MHz, u32
-- ctrlind_07_Command_In_canceled_qty : Top level control "Command.In.canceled.qty", sync to Clk40Derived5x2B00MHz, u32
-- ctrlind_08_Command_In_executed_qty : Top level control "Command.In.executed.qty", sync to Clk40Derived5x2B00MHz, u32
-- ctrlind_09_Command_In_price : Top level control "Command.In.price", sync to Clk40Derived5x2B00MHz, u64
-- ctrlind_10_Command_In_symbol : Top level control "Command.In.symbol", sync to Clk40Derived5x2B00MHz, u64
-- ctrlind_11_Command_In_quantity : Top level control "Command.In.quantity", sync to Clk40Derived5x2B00MHz, u32
-- ctrlind_12_Command_In_orderId : Top level control "Command.In.orderId", sync to Clk40Derived5x2B00MHz, u64
-- ctrlind_13_Command_In_side : Top level control "Command.In.side", sync to Clk40Derived5x2B00MHz, u8
-- ctrlind_14_Command_In_type : Top level control "Command.In.type", sync to Clk40Derived5x2B00MHz, enum8
-- ctrlind_15_Command_In_Valid : Top level control "Command.In.Valid", sync to Clk40Derived5x2B00MHz, bool
-- ctrlind_16_State_Out_Valid : Top level indicator "State.Out.Valid", sync to Clk40Derived5x2B00MHz, bool
-- ctrlind_17_State_Out_Quantity : Top level indicator "State.Out.Quantity", sync to Clk40Derived5x2B00MHz, u64
-- ctrlind_18_State_Out_OrderId : Top level indicator "State.Out.OrderId", sync to Clk40Derived5x2B00MHz, u64
-- ctrlind_19_Command_Out_Valid : Top level indicator "Command.Out.Valid", sync to Clk40Derived5x2B00MHz, bool
-- ctrlind_20_Command_Out_Seq_No : Top level indicator "Command.Out.Seq.No", sync to Clk40Derived5x2B00MHz, u32
-- ctrlind_21_Command_Out_Remove : Top level indicator "Command.Out.Remove", sync to Clk40Derived5x2B00MHz, bool
-- ctrlind_22_Command_Out_Edit : Top level indicator "Command.Out.Edit", sync to Clk40Derived5x2B00MHz, bool
-- ctrlind_23_Command_Out_Add : Top level indicator "Command.Out.Add", sync to Clk40Derived5x2B00MHz, bool
-- ctrlind_24_Command_Out_nanoseconds : Top level indicator "Command.Out.nanoseconds", sync to Clk40Derived5x2B00MHz, u64
-- ctrlind_25_Command_Out_seconds : Top level indicator "Command.Out.seconds", sync to Clk40Derived5x2B00MHz, u64
-- ctrlind_26_Command_Out_remaining_qty : Top level indicator "Command.Out.remaining.qty", sync to Clk40Derived5x2B00MHz, u32
-- ctrlind_27_Command_Out_canceled_qty : Top level indicator "Command.Out.canceled.qty", sync to Clk40Derived5x2B00MHz, u32
-- ctrlind_28_Command_Out_executed_qty : Top level indicator "Command.Out.executed.qty", sync to Clk40Derived5x2B00MHz, u32
-- ctrlind_29_Command_Out_price : Top level indicator "Command.Out.price", sync to Clk40Derived5x2B00MHz, u64
-- ctrlind_30_Command_Out_symbol : Top level indicator "Command.Out.symbol", sync to Clk40Derived5x2B00MHz, u64
-- ctrlind_31_Command_Out_quantity : Top level indicator "Command.Out.quantity", sync to Clk40Derived5x2B00MHz, u32
-- ctrlind_32_Command_Out_orderId : Top level indicator "Command.Out.orderId", sync to Clk40Derived5x2B00MHz, u64
-- ctrlind_33_Command_Out_side : Top level indicator "Command.Out.side", sync to Clk40Derived5x2B00MHz, u8
-- ctrlind_34_Command_Out_type : Top level indicator "Command.Out.type", sync to Clk40Derived5x2B00MHz, enum8
-- ctrlind_35_Debug_Valid : Top level indicator "Debug.Valid", sync to Clk40Derived5x2B00MHz, bool
-- ctrlind_36_Debug_Data : Top level indicator "Debug.Data", sync to Clk40Derived5x2B00MHz, cluster
-- ctrlind_37_debug : Top level control "debug", sync to Clk40Derived5x2B00MHz, bool
-- ctrlind_38_reset : Top level control "reset", sync to Clk40Derived5x2B00MHz, bool
-- ctrlind_39_Symbol_Valid : Top level control "Symbol.Valid", sync to Clk40Derived5x2B00MHz, bool
-- ctrlind_40_Symbol : Top level control "Symbol", sync to Clk40Derived5x2B00MHz, u64
-- Clk40Derived5x2B00MHz : Clock "100MHz", nominal frequency 100.00 MHz, base clock

library ieee;
use ieee.std_logic_1164.all;

entity NiFpgaIPWrapper_filter_ip is
		port (
			reset : in std_logic;
			enable_in : in std_logic;
			enable_out : out std_logic;
			enable_clr : in std_logic;
			ctrlind_00_Command_In_Remove : in std_logic_vector(0 downto 0);
			ctrlind_01_Command_In_Edit : in std_logic_vector(0 downto 0);
			ctrlind_02_Command_In_Add : in std_logic_vector(0 downto 0);
			ctrlind_03_Command_In_Seq_No : in std_logic_vector(31 downto 0);
			ctrlind_04_Command_In_nanoseconds : in std_logic_vector(63 downto 0);
			ctrlind_05_Command_In_seconds : in std_logic_vector(63 downto 0);
			ctrlind_06_Command_In_remaining_qty : in std_logic_vector(31 downto 0);
			ctrlind_07_Command_In_canceled_qty : in std_logic_vector(31 downto 0);
			ctrlind_08_Command_In_executed_qty : in std_logic_vector(31 downto 0);
			ctrlind_09_Command_In_price : in std_logic_vector(63 downto 0);
			ctrlind_10_Command_In_symbol : in std_logic_vector(63 downto 0);
			ctrlind_11_Command_In_quantity : in std_logic_vector(31 downto 0);
			ctrlind_12_Command_In_orderId : in std_logic_vector(63 downto 0);
			ctrlind_13_Command_In_side : in std_logic_vector(7 downto 0);
			ctrlind_14_Command_In_type : in std_logic_vector(7 downto 0);
			ctrlind_15_Command_In_Valid : in std_logic_vector(0 downto 0);
			ctrlind_16_State_Out_Valid : out std_logic_vector(0 downto 0);
			ctrlind_17_State_Out_Quantity : out std_logic_vector(63 downto 0);
			ctrlind_18_State_Out_OrderId : out std_logic_vector(63 downto 0);
			ctrlind_19_Command_Out_Valid : out std_logic_vector(0 downto 0);
			ctrlind_20_Command_Out_Seq_No : out std_logic_vector(31 downto 0);
			ctrlind_21_Command_Out_Remove : out std_logic_vector(0 downto 0);
			ctrlind_22_Command_Out_Edit : out std_logic_vector(0 downto 0);
			ctrlind_23_Command_Out_Add : out std_logic_vector(0 downto 0);
			ctrlind_24_Command_Out_nanoseconds : out std_logic_vector(63 downto 0);
			ctrlind_25_Command_Out_seconds : out std_logic_vector(63 downto 0);
			ctrlind_26_Command_Out_remaining_qty : out std_logic_vector(31 downto 0);
			ctrlind_27_Command_Out_canceled_qty : out std_logic_vector(31 downto 0);
			ctrlind_28_Command_Out_executed_qty : out std_logic_vector(31 downto 0);
			ctrlind_29_Command_Out_price : out std_logic_vector(63 downto 0);
			ctrlind_30_Command_Out_symbol : out std_logic_vector(63 downto 0);
			ctrlind_31_Command_Out_quantity : out std_logic_vector(31 downto 0);
			ctrlind_32_Command_Out_orderId : out std_logic_vector(63 downto 0);
			ctrlind_33_Command_Out_side : out std_logic_vector(7 downto 0);
			ctrlind_34_Command_Out_type : out std_logic_vector(7 downto 0);
			ctrlind_35_Debug_Valid : out std_logic_vector(0 downto 0);
			ctrlind_36_Debug_Data : out std_logic_vector(127 downto 0);
			ctrlind_37_debug : in std_logic_vector(0 downto 0);
			ctrlind_38_reset : in std_logic_vector(0 downto 0);
			ctrlind_39_Symbol_Valid : in std_logic_vector(0 downto 0);
			ctrlind_40_Symbol : in std_logic_vector(63 downto 0);
			Clk40Derived5x2B00MHz : in std_logic
		);
end NiFpgaIPWrapper_filter_ip;

architecture vhdl_labview of NiFpgaIPWrapper_filter_ip is

	component NiFpgaAG_filter_ip
		port (
			reset : in std_logic;
			enable_in : in std_logic;
			enable_out : out std_logic;
			enable_clr : in std_logic;
			ctrlind_00_Command_In_Remove : in std_logic_vector(0 downto 0);
			ctrlind_01_Command_In_Edit : in std_logic_vector(0 downto 0);
			ctrlind_02_Command_In_Add : in std_logic_vector(0 downto 0);
			ctrlind_03_Command_In_Seq_No : in std_logic_vector(31 downto 0);
			ctrlind_04_Command_In_nanoseconds : in std_logic_vector(63 downto 0);
			ctrlind_05_Command_In_seconds : in std_logic_vector(63 downto 0);
			ctrlind_06_Command_In_remaining_qty : in std_logic_vector(31 downto 0);
			ctrlind_07_Command_In_canceled_qty : in std_logic_vector(31 downto 0);
			ctrlind_08_Command_In_executed_qty : in std_logic_vector(31 downto 0);
			ctrlind_09_Command_In_price : in std_logic_vector(63 downto 0);
			ctrlind_10_Command_In_symbol : in std_logic_vector(63 downto 0);
			ctrlind_11_Command_In_quantity : in std_logic_vector(31 downto 0);
			ctrlind_12_Command_In_orderId : in std_logic_vector(63 downto 0);
			ctrlind_13_Command_In_side : in std_logic_vector(7 downto 0);
			ctrlind_14_Command_In_type : in std_logic_vector(7 downto 0);
			ctrlind_15_Command_In_Valid : in std_logic_vector(0 downto 0);
			ctrlind_16_State_Out_Valid : out std_logic_vector(0 downto 0);
			ctrlind_17_State_Out_Quantity : out std_logic_vector(63 downto 0);
			ctrlind_18_State_Out_OrderId : out std_logic_vector(63 downto 0);
			ctrlind_19_Command_Out_Valid : out std_logic_vector(0 downto 0);
			ctrlind_20_Command_Out_Seq_No : out std_logic_vector(31 downto 0);
			ctrlind_21_Command_Out_Remove : out std_logic_vector(0 downto 0);
			ctrlind_22_Command_Out_Edit : out std_logic_vector(0 downto 0);
			ctrlind_23_Command_Out_Add : out std_logic_vector(0 downto 0);
			ctrlind_24_Command_Out_nanoseconds : out std_logic_vector(63 downto 0);
			ctrlind_25_Command_Out_seconds : out std_logic_vector(63 downto 0);
			ctrlind_26_Command_Out_remaining_qty : out std_logic_vector(31 downto 0);
			ctrlind_27_Command_Out_canceled_qty : out std_logic_vector(31 downto 0);
			ctrlind_28_Command_Out_executed_qty : out std_logic_vector(31 downto 0);
			ctrlind_29_Command_Out_price : out std_logic_vector(63 downto 0);
			ctrlind_30_Command_Out_symbol : out std_logic_vector(63 downto 0);
			ctrlind_31_Command_Out_quantity : out std_logic_vector(31 downto 0);
			ctrlind_32_Command_Out_orderId : out std_logic_vector(63 downto 0);
			ctrlind_33_Command_Out_side : out std_logic_vector(7 downto 0);
			ctrlind_34_Command_Out_type : out std_logic_vector(7 downto 0);
			ctrlind_35_Debug_Valid : out std_logic_vector(0 downto 0);
			ctrlind_36_Debug_Data : out std_logic_vector(127 downto 0);
			ctrlind_37_debug : in std_logic_vector(0 downto 0);
			ctrlind_38_reset : in std_logic_vector(0 downto 0);
			ctrlind_39_Symbol_Valid : in std_logic_vector(0 downto 0);
			ctrlind_40_Symbol : in std_logic_vector(63 downto 0);
			Clk40Derived5x2B00MHz : in std_logic;
			tDiagramEnableOut : in std_logic
		);
	end component;

begin
	MyLabVIEWIP : NiFpgaAG_filter_ip
		port map(
			reset => reset,
			enable_in => enable_in,
			enable_out => enable_out,
			enable_clr => enable_clr,
			ctrlind_00_Command_In_Remove => ctrlind_00_Command_In_Remove,
			ctrlind_01_Command_In_Edit => ctrlind_01_Command_In_Edit,
			ctrlind_02_Command_In_Add => ctrlind_02_Command_In_Add,
			ctrlind_03_Command_In_Seq_No => ctrlind_03_Command_In_Seq_No,
			ctrlind_04_Command_In_nanoseconds => ctrlind_04_Command_In_nanoseconds,
			ctrlind_05_Command_In_seconds => ctrlind_05_Command_In_seconds,
			ctrlind_06_Command_In_remaining_qty => ctrlind_06_Command_In_remaining_qty,
			ctrlind_07_Command_In_canceled_qty => ctrlind_07_Command_In_canceled_qty,
			ctrlind_08_Command_In_executed_qty => ctrlind_08_Command_In_executed_qty,
			ctrlind_09_Command_In_price => ctrlind_09_Command_In_price,
			ctrlind_10_Command_In_symbol => ctrlind_10_Command_In_symbol,
			ctrlind_11_Command_In_quantity => ctrlind_11_Command_In_quantity,
			ctrlind_12_Command_In_orderId => ctrlind_12_Command_In_orderId,
			ctrlind_13_Command_In_side => ctrlind_13_Command_In_side,
			ctrlind_14_Command_In_type => ctrlind_14_Command_In_type,
			ctrlind_15_Command_In_Valid => ctrlind_15_Command_In_Valid,
			ctrlind_16_State_Out_Valid => ctrlind_16_State_Out_Valid,
			ctrlind_17_State_Out_Quantity => ctrlind_17_State_Out_Quantity,
			ctrlind_18_State_Out_OrderId => ctrlind_18_State_Out_OrderId,
			ctrlind_19_Command_Out_Valid => ctrlind_19_Command_Out_Valid,
			ctrlind_20_Command_Out_Seq_No => ctrlind_20_Command_Out_Seq_No,
			ctrlind_21_Command_Out_Remove => ctrlind_21_Command_Out_Remove,
			ctrlind_22_Command_Out_Edit => ctrlind_22_Command_Out_Edit,
			ctrlind_23_Command_Out_Add => ctrlind_23_Command_Out_Add,
			ctrlind_24_Command_Out_nanoseconds => ctrlind_24_Command_Out_nanoseconds,
			ctrlind_25_Command_Out_seconds => ctrlind_25_Command_Out_seconds,
			ctrlind_26_Command_Out_remaining_qty => ctrlind_26_Command_Out_remaining_qty,
			ctrlind_27_Command_Out_canceled_qty => ctrlind_27_Command_Out_canceled_qty,
			ctrlind_28_Command_Out_executed_qty => ctrlind_28_Command_Out_executed_qty,
			ctrlind_29_Command_Out_price => ctrlind_29_Command_Out_price,
			ctrlind_30_Command_Out_symbol => ctrlind_30_Command_Out_symbol,
			ctrlind_31_Command_Out_quantity => ctrlind_31_Command_Out_quantity,
			ctrlind_32_Command_Out_orderId => ctrlind_32_Command_Out_orderId,
			ctrlind_33_Command_Out_side => ctrlind_33_Command_Out_side,
			ctrlind_34_Command_Out_type => ctrlind_34_Command_Out_type,
			ctrlind_35_Debug_Valid => ctrlind_35_Debug_Valid,
			ctrlind_36_Debug_Data => ctrlind_36_Debug_Data,
			ctrlind_37_debug => ctrlind_37_debug,
			ctrlind_38_reset => ctrlind_38_reset,
			ctrlind_39_Symbol_Valid => ctrlind_39_Symbol_Valid,
			ctrlind_40_Symbol => ctrlind_40_Symbol,
			Clk40Derived5x2B00MHz => Clk40Derived5x2B00MHz,
			tDiagramEnableOut => '1'
		);

end vhdl_labview;

