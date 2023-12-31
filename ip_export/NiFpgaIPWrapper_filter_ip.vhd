-- VHDL wrapper for NiFpgaAG_filter_ip
-- Generated by LabVIEW FPGA IP Export Utility
--
-- Ports:
-- reset      :  Reset port. Minimum assertion length: 2 base clock cycles.
--               Minimum de-assertion length: 40 base clock cycles.
-- enable_in  :  Enable in port. Minimum re-initialization length: 7 base clock cycles.
-- enable_out :  Enable out port.
-- enable_clr :  Enable clear port.
-- ctrlind_00_State_Out_Valid : Top level indicator "State.Out.Valid", sync to Clk40Derived4x1B60MHz, bool
-- ctrlind_01_State_Out_Quantity : Top level indicator "State.Out.Quantity", sync to Clk40Derived4x1B60MHz, u64
-- ctrlind_02_State_Out_OrderId : Top level indicator "State.Out.OrderId", sync to Clk40Derived4x1B60MHz, u64
-- ctrlind_03_Command_Out_Valid : Top level indicator "Command.Out.Valid", sync to Clk40Derived4x1B60MHz, bool
-- ctrlind_04_Command_Out : Top level indicator "Command.Out", sync to Clk40Derived4x1B60MHz, cluster
-- ctrlind_05_Debug_Valid : Top level indicator "Debug.Valid", sync to Clk40Derived4x1B60MHz, bool
-- ctrlind_06_Debug_Data : Top level indicator "Debug.Data", sync to Clk40Derived4x1B60MHz, cluster
-- ctrlind_07_Command_In : Top level control "Command.In", sync to Clk40Derived4x1B60MHz, array
-- ctrlind_08_Command_In_Valid : Top level control "Command.In.Valid", sync to Clk40Derived4x1B60MHz, bool
-- ctrlind_09_reset : Top level control "reset", sync to Clk40Derived4x1B60MHz, bool
-- ctrlind_10_debug : Top level control "debug", sync to Clk40Derived4x1B60MHz, bool
-- ctrlind_11_Symbol : Top level control "Symbol", sync to Clk40Derived4x1B60MHz, u64
-- ctrlind_12_Symbol_Valid : Top level control "Symbol.Valid", sync to Clk40Derived4x1B60MHz, bool
-- Clk40 : Clock "40 MHz Onboard Clock", nominal frequency 40.00 MHz, base clock
-- Clk40Derived4x1B60MHz : Clock "160MHz", nominal frequency 160.00 MHz

library ieee;
use ieee.std_logic_1164.all;

entity NiFpgaIPWrapper_filter_ip is
		port (
			reset : in std_logic;
			enable_in : in std_logic;
			enable_out : out std_logic;
			enable_clr : in std_logic;
			ctrlind_00_State_Out_Valid : out std_logic_vector(0 downto 0);
			ctrlind_01_State_Out_Quantity : out std_logic_vector(63 downto 0);
			ctrlind_02_State_Out_OrderId : out std_logic_vector(63 downto 0);
			ctrlind_03_Command_Out_Valid : out std_logic_vector(0 downto 0);
			ctrlind_04_Command_Out : out std_logic_vector(466 downto 0);
			ctrlind_05_Debug_Valid : out std_logic_vector(0 downto 0);
			ctrlind_06_Debug_Data : out std_logic_vector(127 downto 0);
			ctrlind_07_Command_In : in std_logic_vector(1023 downto 0);
			ctrlind_08_Command_In_Valid : in std_logic_vector(0 downto 0);
			ctrlind_09_reset : in std_logic_vector(0 downto 0);
			ctrlind_10_debug : in std_logic_vector(0 downto 0);
			ctrlind_11_Symbol : in std_logic_vector(63 downto 0);
			ctrlind_12_Symbol_Valid : in std_logic_vector(0 downto 0);
			Clk40 : in std_logic;
			Clk40Derived4x1B60MHz : in std_logic
		);
end NiFpgaIPWrapper_filter_ip;

architecture vhdl_labview of NiFpgaIPWrapper_filter_ip is

	component NiFpgaAG_filter_ip
		port (
			reset : in std_logic;
			enable_in : in std_logic;
			enable_out : out std_logic;
			enable_clr : in std_logic;
			ctrlind_00_State_Out_Valid : out std_logic_vector(0 downto 0);
			ctrlind_01_State_Out_Quantity : out std_logic_vector(63 downto 0);
			ctrlind_02_State_Out_OrderId : out std_logic_vector(63 downto 0);
			ctrlind_03_Command_Out_Valid : out std_logic_vector(0 downto 0);
			ctrlind_04_Command_Out : out std_logic_vector(466 downto 0);
			ctrlind_05_Debug_Valid : out std_logic_vector(0 downto 0);
			ctrlind_06_Debug_Data : out std_logic_vector(127 downto 0);
			ctrlind_07_Command_In : in std_logic_vector(1023 downto 0);
			ctrlind_08_Command_In_Valid : in std_logic_vector(0 downto 0);
			ctrlind_09_reset : in std_logic_vector(0 downto 0);
			ctrlind_10_debug : in std_logic_vector(0 downto 0);
			ctrlind_11_Symbol : in std_logic_vector(63 downto 0);
			ctrlind_12_Symbol_Valid : in std_logic_vector(0 downto 0);
			Clk40 : in std_logic;
			Clk40Derived4x1B60MHz : in std_logic;
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
			ctrlind_00_State_Out_Valid => ctrlind_00_State_Out_Valid,
			ctrlind_01_State_Out_Quantity => ctrlind_01_State_Out_Quantity,
			ctrlind_02_State_Out_OrderId => ctrlind_02_State_Out_OrderId,
			ctrlind_03_Command_Out_Valid => ctrlind_03_Command_Out_Valid,
			ctrlind_04_Command_Out => ctrlind_04_Command_Out,
			ctrlind_05_Debug_Valid => ctrlind_05_Debug_Valid,
			ctrlind_06_Debug_Data => ctrlind_06_Debug_Data,
			ctrlind_07_Command_In => ctrlind_07_Command_In,
			ctrlind_08_Command_In_Valid => ctrlind_08_Command_In_Valid,
			ctrlind_09_reset => ctrlind_09_reset,
			ctrlind_10_debug => ctrlind_10_debug,
			ctrlind_11_Symbol => ctrlind_11_Symbol,
			ctrlind_12_Symbol_Valid => ctrlind_12_Symbol_Valid,
			Clk40 => Clk40,
			Clk40Derived4x1B60MHz => Clk40Derived4x1B60MHz,
			tDiagramEnableOut => '1'
		);

end vhdl_labview;

