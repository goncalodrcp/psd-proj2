----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2018 03:54:06 PM
-- Design Name: 
-- Module Name: control_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity control_tb is
end control_tb;

architecture Behavioral of control_tb is
    component control is
    port ( 
        clk : in std_logic;
        reset : in std_logic;
        enables: out std_logic_vector (4 downto 0);
        muxes: out std_logic_vector (9 downto 0);
        operation_selector: out std_logic_vector (1 downto 0);
        truncate_selector: out std_logic_vector (1 downto 0)
    );
    end component;

    -- Inputs
    signal clk : std_logic := '0';
    signal reset : std_logic := '1';

    -- Outputs
    signal enables : std_logic_vector(4 downto 0);
    signal muxes : std_logic_vector(9 downto 0);
    signal operation_selector : std_logic_vector(1 downto 0);
    signal truncate_selector : std_logic_vector(1 downto 0);
    
    -- Clock period definitions
    constant clk_period : time := 10 ns;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: control 
    port map (
        clk => clk,
        reset => reset,
        enables => enables,
        muxes => muxes,
        operation_selector => operation_selector,
        truncate_selector => truncate_selector
    );

    -- Clock definition
    clk <= not clk after clk_period/2;

    -- Stimulus process
    stim_proc: process
    begin
        
        -- hold reset state for 10 clock cycles        
        reset <= '1';
        wait for 10*clk_period;
        
        -- return reset to low
        reset <= '0';
        wait for 10*clk_period;
        
        reset <= '1';
        wait for 5*clk_period;
        
        reset <= '0';
        
        wait;
    end process;
end;
