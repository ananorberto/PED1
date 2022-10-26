----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29/16/2022 11:08:37
-- Design Name: 
-- Module Name: ULA - Behavioral
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

entity ULA is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           S : in STD_LOGIC_VECTOR (1 downto 0);
           O : inout STD_LOGIC_VECTOR (3 downto 0);
           OFL : out STD_LOGIC;
           seg : out STD_LOGIC_VECTOR (7 downto 0));
end ULA;

architecture Behavioral of ULA is
    signal SOSUM, SOSUB: signed(4 downto 0);
begin

    with S select
    O <=    A and B when "00",
            not(A) when "01",
            std_logic_vector(SOSUM(3 downto 0)) when "10",
            std_logic_vector(SOSUB(3 downto 0)) when others;
    SOSUM <= signed(A(3)&A)+signed(B);
    SOSUB <= signed(A(3)&A)-1;
    with S select
        OFL <=      (SOSUM(4) xor SOSUM(3)) when "10",
                    (SOSUB(4) xor SOSUB(3)) when "11",
                    '0' when others;
        with O select
            seg <=  "11000000" when "0000",
                    "11111001" when "0001",
                    "10100100" when "0010",
                    "10110000" when "0011",
                    "10011001" when "0100",
                    "10010010" when "0101",
                    "10000010" when "0110",
                    "11111000" when "0111",
                    "00000000" when "1000",
                    "01111001" when "1111",
                    "00100100" when "1110",
                    "00110000" when "1101",
                    "00011001" when "1100",
                    "00010010" when "1011",
                    "00000010" when "1010",
                    "01111000" when "1001",
                    "10111111" when others;

end Behavioral;