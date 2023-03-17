----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.09.2022 19:06:06
-- Design Name: 
-- Module Name: decod_tb - Behavioral
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

entity decod_tb is
--  Port ( );
end decod_tb;

architecture Behavioral of decod_tb is

    component decodificador_7segmentos
        Port ( bcd : in std_logic_vector (3 downto 0);
               blank : in STD_LOGIC;
               seg : out std_logic_vector (0 to 6));
                       
    end component;
    
    signal sBcd: std_logic_vector (3 downto 0);
    signal sBlank: std_logic;
    signal sSeg: std_logic_vector (0 to 6);
    
begin
    
    uut: decodificador_7segmentos port map(BCD => sBCD, Blank => sBlank, seg => sSeg);
    
    stimulus: process
        begin   
            sBlank <= '0' ; sBcd <= "0000";
            wait for 10ns;
            sBlank <= '0' ; sBcd <= "0001";
            wait for 10ns;
            sBlank <= '0' ; sBcd <= "0010";
            wait for 10ns;
            sBlank <= '0' ; sBcd <= "0011";
            wait for 10ns;
            sBlank <= '0' ; sBcd <= "0100";
            wait for 10ns;
            sBlank <= '0' ; sBcd <= "0101";
            wait for 10ns;
            sBlank <= '0' ; sBcd <= "0110";
            wait for 10ns;
            sBlank <= '0' ; sBcd <= "0111";
            wait for 10ns;
            sBlank <= '0' ; sBcd <= "1000";
            wait for 10ns;
            sBlank <= '0' ; sBcd <= "1001";
            wait for 10ns;
            sBlank <= '0' ; sBcd <= "1010";
            wait for 10ns;
            sBlank <= '0' ; sBcd <= "1011";
            wait for 10ns;
            sBlank <= '0' ; sBcd <= "1100";
            wait for 10ns;
            sBlank <= '0' ; sBcd <= "1101";
            wait for 10ns;
            sBlank <= '0' ; sBcd <= "1110";
            wait for 10ns;
            sBlank <= '0' ; sBcd <= "1111";
            wait for 10ns;
            sBlank <= '1' ; sBcd <= "0000";
            wait for 10ns;
            sBlank <= '1' ; sBcd <= "0001";
            wait for 10ns;
            sBlank <= '1' ; sBcd <= "0010";
            wait for 10ns;
            sBlank <= '1' ; sBcd <= "0011";
            wait for 10ns;
            sBlank <= '1' ; sBcd <= "0100";
            wait for 10ns;
            sBlank <= '1' ; sBcd <= "0101";
            wait for 10ns;
            sBlank <= '1' ; sBcd <= "0110";
            wait for 10ns;
            sBlank <= '1' ; sBcd <= "0111";
            wait for 10ns;
            sBlank <= '1' ; sBcd <= "1000";
            wait for 10ns;
            sBlank <= '1' ; sBcd <= "1001";
            wait for 10ns;
            sBlank <= '1' ; sBcd <= "1010";
            wait for 10ns;
            sBlank <= '1' ; sBcd <= "1011";
            wait for 10ns;
            sBlank <= '1' ; sBcd <= "1100";
            wait for 10ns;
            sBlank <= '1' ; sBcd <= "1101";
            wait for 10ns;
            sBlank <= '1' ; sBcd <= "1110";
            wait for 10ns;
            sBlank <= '1' ; sBcd <= "1111";
            wait;
            
        end process ;
end Behavioral;