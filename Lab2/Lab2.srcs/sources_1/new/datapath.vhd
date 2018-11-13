----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/11/2018 02:56:45 PM
-- Design Name: 
-- Module Name: datapath - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity datapath is
port (
    -- input
    Q00 : in std_logic_vector (9 downto 0);
    Q01 : in std_logic_vector (9 downto 0);
    Q10 : in std_logic_vector (9 downto 0);
    Q11 : in std_logic_vector (9 downto 0);
    x : in std_logic_vector (7 downto 0);
    x0 : in std_logic_vector (7 downto 0);
    y : in std_logic_vector (7 downto 0);
    y0 : in std_logic_vector (7 downto 0);
    -- output
    P : out std_logic_vector (9 downto 0);
    -- control signals
    clk : in std_logic;
    reset: in std_logic;
    -- Enable mapping:
    --    4       3       2       1       0
    -- | RA(1) | RB(1) | RC(1) | RD(1) | RP(1) | 
    enables: in std_logic_vector (4 downto 0);
    -- Mux mapping:
    -- |   9:8   |    7    |   6:5   |   4:3   |    2    |    1    |    0    |
    -- | MUX1(2) | MUX2(1) | MUX3(2) | MUX4(2) | MUX5(1) | MUX6(1) | MUX7(1) |
    muxes: in std_logic_vector (9 downto 0);
    -- Adder/subtractor controller mapping:
    -- | AS1(1) | AS2(1) | (Legend - 0: ADD | 1: SUB)
    operation_selector: in std_logic_vector (1 downto 0);
    -- Truncate signal controller mapping:
    -- | TRUNCATE1(1) | TRUNCATE2(1) | (Legend - 0: Not truncate | 1: Truncate)
    truncate_selector: in std_logic_vector (1 downto 0)
);
end datapath;

architecture Behavioral of datapath is
    -- Signals

    -- Input registers
    signal RQ00 : std_logic_vector(9 downto 0);
    signal RQ01 : std_logic_vector(9 downto 0);
    signal RQ10 : std_logic_vector(9 downto 0);
    signal RQ11 : std_logic_vector(9 downto 0);
    signal Rx : std_logic_vector(7 downto 0);
    signal Rx0 : std_logic_vector(7 downto 0);
    signal Ry : std_logic_vector(7 downto 0);
    signal Ry0 : std_logic_vector(7 downto 0);

    -- Output register
    signal RP : std_logic_vector(9 downto 0);

    -- Intermediate registers:
    signal RA, RA_entry: std_logic_vector(10 downto 0); -- TODO: Check vector size
    signal RB, RB_entry: std_logic_vector(10 downto 0); -- TODO: Check vector size
    signal RC: std_logic_vector(10 downto 0); -- TODO: Check vector size
    signal RD: std_logic_vector(10 downto 0); -- TODO: Check vector size

    -- Internal signaling
    signal adder1_entry_a : signed(10 downto 0); -- TODO: Check vector size
    signal adder1_entry_b : signed(10 downto 0); -- TODO: Check vector size
    signal adder1_add: std_logic_vector(10 downto 0); -- TODO: Check vector size
    signal adder1_sub: std_logic_vector(10 downto 0); -- TODO: Check vector size
    signal adder1_result: std_logic_vector(10 downto 0); -- TODO: Check vector size
    signal adder1_truncated: std_logic_vector(10 downto 0); -- TODO: Check vector size
    signal adder1_result_truncated: std_logic_vector(10 downto 0); -- TODO: Check vector size

    signal adder2_entry_a : signed(10 downto 0); -- TODO: Check vector size
    signal adder2_entry_b : signed(10 downto 0); -- TODO: Check vector size
    signal adder2_add: std_logic_vector(10 downto 0); -- TODO: Check vector size
    signal adder2_sub: std_logic_vector(10 downto 0); -- TODO: Check vector size
    signal adder2_result: std_logic_vector(10 downto 0); -- TODO: Check vector size
    signal adder2_truncated: std_logic_vector(10 downto 0); -- TODO: Check vector size
    signal adder2_result_truncated: std_logic_vector(10 downto 0); -- TODO: Check vector size

    signal multiplier_entry_b : signed(10 downto 0); -- TODO: Check vector size
    signal multiplier_result : std_logic_vector(21 downto 0); -- TODO: Check vector size
    signal multiplier_result_truncated : std_logic_vector(10 downto 0); -- TODO: Check vector size

begin
    -- Architecture body
    
    -- ------------ Multiplexers ------------
    -- MUX1
    adder1_entry_a <= signed(RQ10(9) & RQ10) when muxes(9 downto 8) = "00" else
                      signed(RQ11(9) & RQ11) when muxes(9 downto 8) = "01" else
                      signed(RC) when muxes(9 downto 8) = "10";
    
    -- MUX2
    adder1_entry_b <= signed(RQ00(9) & RQ00) when muxes(7) = '0' else
                      signed(RQ01(9) & RQ01) when muxes(7) = '1';

    -- MUX3
    adder2_entry_a <= signed("000" & Rx) when muxes(6 downto 5) = "00" else
                      signed("000" & Ry) when muxes(6 downto 5) = "01" else
                      signed(adder1_result_truncated) when muxes(6 downto 5) = "10" else
                      signed(RC) when muxes(6 downto 5) = "11";

    -- MUX4
    adder2_entry_b <= signed("000" & Rx0) when muxes(4 downto 3) = "00" else
                      signed("000" & Ry0) when muxes(4 downto 3) = "01" else
                      signed(RB) when muxes(4 downto 3) = "10";
    
    -- MUX5
    multiplier_entry_b <= signed(RB) when muxes(2) = '0' else
                          signed(RD) when muxes(2) = '1';

    -- MUX6
    RA_entry <= adder1_result_truncated when muxes(1) = '0' else
                adder2_result_truncated when muxes(1) = '1';
    
    -- MUX7
    RB_entry <= adder1_result_truncated when muxes(0) = '0' else
                adder2_result_truncated when muxes(0) = '1';
    -- ------------ Multiplexers ------------

    -- --- Adders/Subtractors/Multipliers ---
    -- ADDSUB1
    adder1_add <= std_logic_vector(adder1_entry_a + adder1_entry_b);
    adder1_sub <= std_logic_vector(adder1_entry_a - adder1_entry_b);
    adder1_result <= adder1_add when operation_selector(1) = '0' else
                     adder1_sub when operation_selector(1) = '1';
                                   
    -- ADDSUB2
    adder2_add <= std_logic_vector(adder2_entry_a + adder2_entry_b);
    adder2_sub <= std_logic_vector(adder2_entry_a - adder2_entry_b);
    adder2_result <= adder2_add when operation_selector(0) = '0' else
                     adder2_sub when operation_selector(0) = '1';    
    
    -- MULTIPLIER
    multiplier_result <= std_logic_vector(signed(RA) * multiplier_entry_b);
    
    -- --- Adders/Subtractors/Multipliers ---
    
    -- ------------- Truncators -------------
    adder1_truncated(5 downto 0) <= adder1_result(10 downto 5);
    adder1_truncated(10 downto 5) <= (others => adder1_result(10));
    adder1_result_truncated <= adder1_result when truncate_selector(1) = '0' else
                               adder1_truncated when truncate_selector(1) = '1';

    adder2_truncated(5 downto 0) <= adder2_result(10 downto 5);
    adder2_truncated(10 downto 5) <= (others => adder2_result(10));
    adder2_result_truncated <= adder2_result when truncate_selector(0) = '0' else
                               adder2_truncated when truncate_selector(0) = '1';

    multiplier_result_truncated <= multiplier_result(10 downto 0);
    -- ------------- Truncators -------------

    -- Clocking data to registers
    process (clk)
    begin
        if clk'event and clk = '1' then
            -- Registers without reset/enable (inputs)
            RQ00 <= Q00;
            RQ01 <= Q01;
            RQ10 <= Q10;
            RQ11 <= Q11;
            Rx <= x;
            Rx0 <= x0;
            Ry <= y;
            Ry0 <= y0;

            -- Condition to registers with reset/enable
            if reset = '1' then
                -- reset registers
                RA <= "00000000000";
                RB <= "00000000000";
                RC <= "00000000000";
                RD <= "00000000000";
                RP <= "0000000000";
            else
                if enables(4) = '1' then
                    RA <= RA_entry;
                end if;
                if enables(3) = '1' then
                    RB <= RB_entry;
                end if;
                if enables(2) = '1' then
                    RC <= multiplier_result_truncated;
                end if;
                if enables(1) = '1' then
                    RD <= adder2_result_truncated;
                end if;
                if enables(0) = '1' then
                    RP <= adder2_result_truncated(9 downto 0);
                end if;
            end if;
        end if;
    end process;
    
    -- output
    P <= RP;
end Behavioral;
