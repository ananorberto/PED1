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

entity Estacionamento is
    PORT( S0 : in STD_LOGIC;
          S1 : in STD_LOGIC;
          S2 : in STD_LOGIC;
          C0 : out STD_LOGIC;
          C1 : out STD_LOGIC);
 end Estacionamento;

architecture Behavioral of Estacionamento IS
begin
    C0 <= ((not S0)and(not S1)and S2)or((not S0)and(not S2)and S1)or((not S2)and(not S1)and S0) or (S0 and S1 and S2);
    C1 <= ((not S0)and S1 and S2)or( S0 and(not S1)and S2)or(S0 and(not S2)and S1) or (S0 and S1 and S2);
          
end Behavioral;