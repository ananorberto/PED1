----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/16/2022 03:06:43 PM
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
           O : out STD_LOGIC_VECTOR (3 downto 0);
           OFL : out STD_LOGIC);
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
    OFL <= SOSUM(4) xor SOSUM(3);

end Behavioral;