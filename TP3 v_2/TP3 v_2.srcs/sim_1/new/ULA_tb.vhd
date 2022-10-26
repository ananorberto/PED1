----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29/16/2022 11:03:12
-- Design Name: 
-- Module Name: ULA_tb - Behavioral
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

entity ULA_tb is
--  Port ( );
end ULA_tb;

architecture Behavioral of ULA_tb is

    component ULA
        Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
               B : in STD_LOGIC_VECTOR (3 downto 0);
               S : in STD_LOGIC_VECTOR (1 downto 0);
               O : inout STD_LOGIC_VECTOR (3 downto 0);
               OFL : out STD_LOGIC;
               seg : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    signal sA, sB, sO: STD_LOGIC_VECTOR (3 downto 0);
    signal sS: STD_LOGIC_VECTOR (1 downto 0);
    signal sOFL: STD_LOGIC;
    signal Seg : STD_LOGIC_VECTOR (7 downto 0);

begin

uut: ULA port map ( A => sA,
                    B => sB,
                    S => sS,
                    O => sO,
                    OFL => sOFL,
                    seg=> Seg);

process
begin

    sA <= "0101"; sB <= "1010"; sS <= "00";
    wait for 20 ns;
    sA <= "1010"; sB <= "0101"; sS <= "00";
    wait for 20 ns;
    sA <= "1111"; sB <= "0000"; sS <= "01";
    wait for 20 ns;
    sA <= "0000"; sB <= "1111"; sS <= "01";
    wait for 20 ns;
    sA <= "0111"; sB <= "0111"; sS <= "10";-- A =7, B=7
    wait for 20 ns;
    sA <= "1110"; sB <= "1101"; sS <= "10";-- A =-2, B=-3
    wait for 20 ns;
    sA <= "1011"; sB <= "0100"; sS <= "10";-- A =-5, B=4
    wait for 20 ns;
    sA <= "0110"; sB <= "1111"; sS <= "10";-- A =6, B=-1
    wait for 20 ns;
    sA <= "0111"; sB <= "0111"; sS <= "11";-- A =7, B=7
    wait for 20 ns;
    sA <= "1110"; sB <= "1101"; sS <= "11";-- A =-2, B=-3
    wait for 20 ns;
    sA <= "1011"; sB <= "0100"; sS <= "11";-- A =-5, B=4
    wait for 20 ns;
    sA <= "0110"; sB <= "1111"; sS <= "11";-- A =6, B=-1
    wait;

end process;

end Behavioral;