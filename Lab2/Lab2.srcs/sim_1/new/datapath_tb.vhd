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
        Q01 <= "0011001000" after 100 ns; -- 200
        Q11 <= "0011001000" after 100 ns; -- 200
        
        Q00 <= "0001100100" after 100 ns, -- 100
               "0111111111" after 300 ns, -- 511
               "0000000000" after 400 ns, -- 0
               "1000000000" after 500 ns; -- -512

        Q10 <= "0001100100" after 100 ns, -- 100
               "1000000000" after 300 ns, -- -512
               "0000000000" after 500 ns, -- 0
               "0111111111" after 600 ns; -- 511

        operation_selector <= "00" after 200 ns, -- ADD on ADDER1, ADD on ADDER2
                              "10" after 300 ns; -- SUB on ADDER1, ADD on ADDER2
 
        truncate_selector <= "00" after 300 ns, -- NO TRUNCATION
                             "10" after 350 ns, -- TRUNCATION on ADDER1
                             "00" after 400 ns, -- NO TRUNCATION
                             "10" after 450 ns, -- TRUNCATION on ADDER1 
                             "00" after 500 ns, -- NO TRUNCATION
                             "10" after 550 ns, -- TRUNCATION on ADDER1
                             "00" after 600 ns, -- NO TRUNCATION
                             "10" after 650 ns, -- TRUNCATION on ADDER1
                             "00" after 700 ns, -- NO TRUNCATION
                             "10" after 750 ns; -- TRUNCATION on ADDER1
        
        enables <= "00000" after 300 ns, -- NO ENABLE
                   "10000" after 320 ns, -- ENABLE ON RA
                   "00000" after 330 ns, -- NO ENABLE
                   "10000" after 370 ns, -- ENABLE ON RA
                   "00000" after 380 ns, -- NO ENABLE
                   "10000" after 420 ns, -- ENABLE ON RA
                   "00000" after 430 ns, -- NO ENABLE
                   "10000" after 470 ns, -- ENABLE ON RA
                   "00000" after 480 ns, -- NO ENABLE
                   "10000" after 520 ns, -- ENABLE ON RA
                   "00000" after 530 ns, -- NO ENABLE
                   "10000" after 570 ns, -- ENABLE ON RA
                   "00000" after 580 ns, -- NO ENABLE
                   "10000" after 620 ns, -- ENABLE ON RA
                   "00000" after 630 ns, -- NO ENABLE
                   "10000" after 670 ns, -- ENABLE ON RA
                   "00000" after 680 ns, -- NO ENABLE
                   "10000" after 720 ns, -- ENABLE ON RA
                   "00000" after 730 ns, -- NO ENABLE
                   "10000" after 770 ns, -- ENABLE ON RA
                   "00000" after 780 ns; -- NO ENABLE
        wait;
    end process;
end;
