----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.09.2022 10:38:26
-- Design Name: 
-- Module Name: projeto_1 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity projeto_1 is
    Port ( LOAD, CLK, DUP, CTEN: in STD_LOGIC;
           D : in STD_LOGIC_VECTOR (3 downto 0);
           Q : out STD_LOGIC_VECTOR (3 downto 0);
           MAXMIN, RCO : out STD_LOGIC);
end projeto_1;

architecture Behavioral of projeto_1 is
    signal sQ: unsigned (3 downto 0);
begin
    process
        begin
        if LOAD = '0' then
            if D < "1010" then
                Q <= D;
            else
                Q <= "1001";
            end if;
        elsif rising_edge (CLK) then
            if CTEN = '0' then
                if DUP = '0' then
                    sQ <= sQ + 1;
                else
                    sQ <= sQ - 1;
                end if;
            end if;
        end if;
        
    end process;

end Behavioral;
