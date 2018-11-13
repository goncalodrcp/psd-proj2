----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/13/2018 01:44:36 AM
-- Design Name: 
-- Module Name: circuit_tb - Behavioral
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

entity circuit_tb is
end circuit_tb;

architecture Behavioral of circuit_tb is
    component circuit
    port (
        Q00 : in std_logic_vector (9 downto 0);
        Q01 : in std_logic_vector (9 downto 0);
        Q10 : in std_logic_vector (9 downto 0);
        Q11 : in std_logic_vector (9 downto 0);
        x : in std_logic_vector (7 downto 0);
        x0 : in std_logic_vector (7 downto 0);
        y : in std_logic_vector (7 downto 0);
        y0 : in std_logic_vector (7 downto 0);
        clk : in std_logic;
        reset: in std_logic;
        P : out std_logic_vector (9 downto 0)
    );
    end component;

    -- Inputs
    signal Q00 : std_logic_vector(9 downto 0);
    signal Q01 : std_logic_vector(9 downto 0);
    signal Q10 : std_logic_vector(9 downto 0);
    signal Q11 : std_logic_vector(9 downto 0);
    signal x : std_logic_vector(7 downto 0);
    signal x0 : std_logic_vector(7 downto 0);
    signal y : std_logic_vector(7 downto 0);
    signal y0 : std_logic_vector(7 downto 0);
    
    signal clk : std_logic := '1';
    signal reset : std_logic := '0';

    -- Outputs
    signal P : std_logic_vector(9 downto 0);
    
    -- Clock period definitions
    constant clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: circuit 
    port map (
        Q00 => Q00,
        Q01 => Q01,
        Q10 => Q10,
        Q11 => Q11,
        x => x,
        x0 => x0,
        y => y,
        y0 => y0,
        P => P,
        clk => clk,
        reset => reset
    );

    -- Clock definition
    clk <= not clk after clk_period/2;

    -- Stimulus process
    stim_proc: process
    begin
        reset <= '1';
        wait for 10*clk_period;
        
        x <= "00100100" after 50 ns; -- 36
        y <= "00100100" after 50 ns; -- 36
        x0 <= "00010100" after 50 ns; -- 20
        y0 <= "00010100" after 50 ns; -- 20
        Q00 <= "0001100100" after 50 ns; -- 100
        Q01 <= "0011001000" after 50 ns; -- 200
        Q10 <= "0100101100" after 50 ns; -- 300
        Q11 <= "0111110100" after 50 ns; -- 500
        
        reset <= '0' after 100 ns,
                 '1' after 400 ns,
                 '0' after 450 ns;
 
        wait;
    end process;
end;
