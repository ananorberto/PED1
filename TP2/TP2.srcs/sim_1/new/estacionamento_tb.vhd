----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.09.2022 18:29:18
-- Design Name: 
-- Module Name: estacionamento_tb - Behavioral
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

entity estacionamento_tb IS
end estacionamento_tb;

architecture Behavioral of estacionamento_tb is

	component estacionamento
		  Port( S0 : in STD_LOGIC;
	          S1 : in STD_LOGIC;
	          S2 : in STD_LOGIC;
	          C0 : out STD_LOGIC;
	          C1 : out STD_LOGIC);
end component;

 signal sS0 : STD_LOGIC;
 signal sS1 : STD_LOGIC;
 signal sS2 : STD_LOGIC;
 signal sC0 : STD_LOGIC;
 signal sC1 : STD_LOGIC;

begin 
	
	uut : estacionamento port map (S0 => sS0, 
								   S1 => sS1, 
								   S2 => sS2, 
								   C0 => sC0, 
								   C1 => sC1); 
    stimulus: process 
    begin
        sS0 <= '0'; sS1 <= '0'; sS2 <= '0';
        wait for 100ns;
        sS0 <= '0'; sS1 <= '0'; sS2 <= '1';
        wait for 100ns;
        sS0 <= '0'; sS1 <= '1'; sS2 <= '0';
        wait for 100ns;
        sS0 <= '0'; sS1 <= '1'; sS2 <= '1';
        wait for 100ns;
        sS0 <= '1'; sS1 <= '0'; sS2 <= '0';
        wait for 100ns;
        sS0 <= '1'; sS1 <= '0'; sS2 <= '0';
        wait for 100ns;
        sS0 <= '1'; sS1 <= '0'; sS2 <= '1';
        wait for 100ns;
        sS0 <= '1'; sS1 <= '1'; sS2 <= '0';
        wait for 100ns;
        sS0 <= '1'; sS1 <= '1'; sS2 <= '1';
        wait;
    end process ;
end Behavioral;
