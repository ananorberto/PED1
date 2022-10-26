----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/09/2022 02:47:22 PM
-- Design Name: 
-- Module Name: decod - Behavioral
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

entity decod is
    Port ( bcd : in STD_LOGIC_VECTOR (3 downto 0);
           blank : in STD_LOGIC;
           seg : out STD_LOGIC_VECTOR (6 downto 0));
end decod;

architecture Behavioral of decod is
    signal seg_tmp: STD_LOGIC_VECTOR (6 downto 0);
begin
    with bcd select
        seg_tmp <=  "1000000" when "0000",
                    "1111001" when "0001",
                    "0100100" when "0010",
                    "0110000" when "0011",
                    "0011001" when "0100",
                    "0010010" when "0101",
                    "0000010" when "0110",
                    "1111000" when "0111",
                    "0000000" when "1000",
                    "0010000" when "1001",
                    "0111111" when others;
        seg <=      "1111111" when blank='1' else
                    seg_tmp;

end Behavioral;