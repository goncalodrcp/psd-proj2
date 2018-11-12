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
--                enables <= "00000";
--                muxes <= "0000000000";
--                operation_selector <= "00";
--                truncate_selector <= "00";
            when s_cycle1 =>
                nextstate <= s_cycle2;
--                enables <= "00000";
--                muxes <= "0000000000";
--                operation_selector <= "00";
--                truncate_selector <= "00";
            when s_cycle2 =>
                nextstate <= s_cycle3;
--                enables <= "00000";
--                muxes <= "0000000000";
--                operation_selector <= "00";
--                truncate_selector <= "00";
            when s_cycle3 =>
                nextstate <= s_cycle4;
--                enables <= "00000";
--                muxes <= "0000000000";
--                operation_selector <= "00";
--                truncate_selector <= "00";
            when s_cycle4 =>
                nextstate <= s_cycle5;
--                enables <= "00000";
--                muxes <= "0000000000";
--                operation_selector <= "00";
--                truncate_selector <= "00";
            when s_cycle5 =>
                nextstate <= s_cycle6;
--                enables <= "00000";
--                muxes <= "0000000000";
--                operation_selector <= "00";
--                truncate_selector <= "00";
            when s_cycle6 =>
                nextstate <= s_end;
--                enables <= "00000";
--                muxes <= "0000000000";
--                operation_selector <= "00";
--                truncate_selector <= "00";
            when s_end =>
                if reset = '1' then
                    nextstate <= s_initial;
                else
                    nextstate <= s_end;
                end if;
--                enables <= "00000";
--                muxes <= "0000000000";
--                operation_selector <= "00";
--                truncate_selector <= "00";
        end case;
    end process;
end Behavioral;
