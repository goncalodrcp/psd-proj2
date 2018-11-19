----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/13/2018 01:26:11 AM
-- Design Name: 
-- Module Name: circuit - Behavioral
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

entity circuit is
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
    P : out std_logic_vector (9 downto 0);
    done : out std_logic
);
end circuit;

architecture Behavioral of circuit is
    component control
    port (
        clk : in std_logic;
        reset : in std_logic;
        enables : out std_logic_vector (4 downto 0);
        muxes : out std_logic_vector (9 downto 0);
        operation_selector : out std_logic_vector (1 downto 0);
        truncate_selector : out std_logic_vector (1 downto 0);
        done : out std_logic
    );
    end component;
    
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
        reset : in std_logic;
        enables : in std_logic_vector (4 downto 0);
        muxes : in std_logic_vector (9 downto 0);
        operation_selector : in std_logic_vector (1 downto 0);
        truncate_selector : in std_logic_vector (1 downto 0)
    );
    end component;
    
    -- Extra signals here
    signal enables : std_logic_vector(4 downto 0);
    signal muxes : std_logic_vector(9 downto 0);
    signal operation_selector : std_logic_vector(1 downto 0);
    signal truncate_selector : std_logic_vector(1 downto 0);

begin
    inst_control: control
    port map (
        clk =>  clk,
        reset => reset,
        enables => enables,
        muxes => muxes,
        operation_selector => operation_selector,
        truncate_selector => truncate_selector,
        done => done
    );
    
    inst_datapath: datapath
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
end Behavioral;
