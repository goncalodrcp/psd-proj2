----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/12/2018 03:42:48 PM
-- Design Name: 
-- Module Name: control - Behavioral
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

entity control is
port ( 
    clk : in std_logic;
    reset : in std_logic;
    enables: out std_logic_vector (4 downto 0);
    muxes: out std_logic_vector (9 downto 0);
    operation_selector: out std_logic_vector (1 downto 0);
    truncate_selector: out std_logic_vector (1 downto 0)
);
end control;

architecture Behavioral of control is
    type fsm_states is (s_initial, s_cycle1, s_cycle2, s_cycle3, s_cycle4, s_cycle5, s_cycle6, s_end);
    signal currstate, nextstate: fsm_states;
begin
    -- state update / reset
    state_reg: process (clk)
    begin 
        if clk'event and clk = '1' then
            if reset = '1' then
                currstate <= s_initial ;
            else
                currstate <= nextstate ;
            end if ;
        end if ;
    end process;

    state_comb: process (currstate, reset)
    begin  
        case currstate is
            when s_initial =>
                if reset = '1' then
                    nextstate <= s_initial;
                else
                    nextstate <= s_cycle1;
                end if;
                enables <= "00000";
                muxes <= "0000000000";
                operation_selector <= "00";
                truncate_selector <= "00";
            when s_cycle1 =>
                nextstate <= s_cycle2;
                operation_selector <= "11"; -- SUB on ADDER1, SUB on ADDER2
                truncate_selector <= "10"; -- TRUNCATE on ADDER1, NO TRUNCATE on ADDER2
                muxes <= "0000000001"; -- Q10 on ADDER1_A, Q00 on ADDER1_B, x on ADDER2_A, x0 on ADDER2_B, ADDER1 on RA, ADDER2 on RB
--                enables <= "00000"; -- No enable
                enables <= "11000"; -- Enable on RA and RB
            when s_cycle2 =>
                nextstate <= s_cycle3;
                operation_selector <= "11"; -- SUB on ADDER1, SUB on ADDER2
                truncate_selector <= "10"; -- TRUNCATE on ADDER1, NO TRUNCATE on ADDER2
                muxes <= "0110101000"; -- Q11 on ADDER1_A, Q01 on ADDER1_B, y on ADDER2_A, y0 on ADDER2_B, RB on MULT_B, ADDER1 on RA
--                enables <= "11000"; -- Enable on RA and RB
                enables <= "10110"; -- Enable on RA, RC and RD
            when s_cycle3 =>
                nextstate <= s_cycle4;
                operation_selector <= "01"; -- ADD on ADDER1, SUB on ADDER2
                truncate_selector <= "00"; -- NO TRUNCATE on ADDER1, NO TRUNCATE on ADDER2
                muxes <= "1000000000"; -- RC on ADDER1_A, Q00 on ADDER1_B, RB on MULT_B, ADDER1 on RB
--                enables <= "10110"; -- Enable on RA, RC and RD
                enables <= "01100"; -- Enable on RB and RC
            when s_cycle4 =>
                nextstate <= s_cycle5;
                operation_selector <= "01"; -- ADD on ADDER1, SUB on ADDER2
                truncate_selector <= "01"; -- NO TRUNCATE on ADDER1, TRUNCATE on ADDER2
                muxes <= "1011010010"; -- RC on ADDER1_A, Q01 on ADDER1_B, ADDER1 on ADDER2_A, RB on ADDER2_B, ADDER2 on RA
--                enables <= "01100"; -- Enable on RB and RC
                enables <= "10000"; -- Enable on RA
            when s_cycle5 =>
                nextstate <= s_cycle6;
                operation_selector <= "01"; -- ADD on ADDER1, SUB on ADDER2
                truncate_selector <= "01"; -- NO TRUNCATE on ADDER1, TRUNCATE on ADDER2
                muxes <= "0000000100"; -- RD on MULT_B
--                enables <= "10000"; -- Enable on RA
                enables <= "00100"; -- Enable on RC
            when s_cycle6 =>
                nextstate <= s_end;
                operation_selector <= "00"; -- ADD on ADDER1, ADD on ADDER2
                truncate_selector <= "00"; -- NO TRUNCATE on ADDER1, NO TRUNCATE on ADDER2
                muxes <= "0001110000"; -- RC on ADDER2_A, RB on ADDER2_B
--                enables <= "00100"; -- Enable on RC
                enables <= "00001"; -- Enable on RP
            when s_end =>
                if reset = '1' then
                    nextstate <= s_initial;
                else
                    nextstate <= s_end;
                end if;
                operation_selector <= "00"; -- ---
                truncate_selector <= "00"; -- ---
                muxes <= "0001110000"; -- ---
                enables <= "00000"; -- ---
        end case;
    end process;
end Behavioral;
