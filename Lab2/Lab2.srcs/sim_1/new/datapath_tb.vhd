----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/11/2018 09:02:41 PM
-- Design Name: 
-- Module Name: datapath_tb - Behavioral
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

entity datapath_tb is
end datapath_tb;

architecture Behavioral of datapath_tb is
    component datapath
    port (
        Q00 : in std_logic_vector (9 downto 0);
        Q01 : in std_logic_vector (9 downto 0);
        Q10 : in std_logic_vector (9 downto 0);
        Q11 : in std_logic_vector (9 downto 0);
        x : in std_logic_vector (7 downto 0);
        x0 : in std_logic_vector (7 downto 0);
        y : in std_logic_vector (7 downto 0);
        y0 : in std_logic_vector (7 downto 0);
        P : out std_logic_vector (9 downto 0);
        clk : in std_logic;
        reset: in std_logic;
        enables: in std_logic_vector (4 downto 0);
        muxes: in std_logic_vector (9 downto 0);
        operation_selector: in std_logic_vector (1 downto 0);
        truncate_selector: in std_logic_vector (1 downto 0)
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
    signal clk : std_logic := '0';
    signal reset : std_logic := '0';
    signal enables : std_logic_vector(4 downto 0) := (others => '0');
    signal muxes : std_logic_vector(9 downto 0) := (others => '0');
    signal operation_selector : std_logic_vector(1 downto 0) := (others => '0');
    signal truncate_selector : std_logic_vector(1 downto 0) := (others => '0');

    -- Outputs
    signal P : std_logic_vector(9 downto 0);
    
    -- Clock period definitions
    constant clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: datapath 
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
        -- hold start state for 5 clock cycles        
        reset <= '0';
        wait for 5*clk_period;
        
        -- hold reset state for 5 clock cycles        
        reset <= '1';
        wait for 5*clk_period;
        
        -- return reset to low
        reset <= '0';
        
        x <= "00100100" after 100 ns; -- 36
        y <= "00100100" after 100 ns; -- 36
        x0 <= "00010100" after 100 ns; -- 20
        y0 <= "00010100" after 100 ns; -- 20
        Q00 <= "0001100100" after 100 ns; -- 100
        Q01 <= "0011001000" after 100 ns; -- 200
        Q10 <= "0100101100" after 100 ns; -- 300
        Q11 <= "0111110100" after 100 ns; -- 500

        operation_selector <= "11" after 205 ns, -- SUB on ADDER1, SUB on ADDER2, same for 215 ns
                              "01" after 225 ns, -- ADD on ADDER1, SUB on ADDER 2, same for 235 ns, same for 245 ns
                              "00" after 255 ns; -- ADD on ADDER1, ADD on ADDER2
        
        truncate_selector <= "10" after 205 ns, -- TRUNCATE on ADDER1, same for 215 ns
                             "00" after 225 ns, -- NO TRUNCATE
                             "01" after 235 ns, -- TRUNCATE on ADDER2, same for 245 ns
                             "00" after 255 ns; -- NO TRUNCATE

        -- Enables are 1 clock cycle shifted
        enables <= "00000" after 205 ns, -- No enable
                   "11000" after 215 ns, -- Enable on RA and RB
                   "10110" after 225 ns, -- Enable on RA, RC and RD
                   "01100" after 235 ns, -- Enable on RB and RC
                   "10000" after 245 ns, -- Enable on RA
                   "00100" after 255 ns, -- Enable on RC
                   "00001" after 265 ns; -- Enable on RP

        muxes <= "0000000001" after 205 ns, -- Q10 on ADDER1_A, Q00 on ADDER1_B, x on ADDER2_A, x0 on ADDER2_B, ADDER1 on RA, ADDER2 on RB
                 "0110101000" after 215 ns, -- Q11 on ADDER1_A, Q01 on ADDER1_B, y on ADDER2_A, y0 on ADDER2_B, RB on MULT_B, ADDER1 on RA
                 "1000000000" after 225 ns, -- RC on ADDER1_A, Q00 on ADDER1_B, RB on MULT_B, ADDER1 on RB
                 "1011010010" after 235 ns, -- RC on ADDER1_A, Q01 on ADDER1_B, ADDER1 on ADDER2_A, RB on ADDER2_B, ADDER2 on RA
                 "0000000100" after 245 ns, -- RD on MULT_B
                 "0001110000" after 255 ns; -- RC on ADDER2_A, RB on ADDER2_B

        wait;
    end process;
end;
