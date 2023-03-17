----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.08.2022 18:31:13
-- Design Name: 
-- Module Name: tb_ula - Behavioral
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

entity tb_ula is
--  Port ( );
end tb_ula;

architecture Behavioral of tb_ula is

component top is
    Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
           B : in STD_LOGIC_VECTOR (3 downto 0);
           S : out STD_LOGIC_VECTOR (3 downto 0);
           SEL : in STD_LOGIC_VECTOR (1 downto 0);
           OFL : out STD_LOGIC);
end component;

signal sA, sB, sS : STD_LOGIC_VECTOR (3 downto 0);
signal SSEL : STD_LOGIC_VECTOR (1 DOWNTO 0);
signal SOFL : STD_LOGIC;

begin

uut : top port map(
    A => SA,
    B => SB,
    S => SS,
    SEL => SSEL,
    OFL => SOFL);

    
    SA <= "0011";
    SB <= "0010";
    SSEL <= "11";


end Behavioral;
