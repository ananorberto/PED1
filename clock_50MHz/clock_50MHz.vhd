----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.08.2022 09:56:33
-- Design Name: 
-- Module Name: clock_50MHz - Behavioral
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

entity clock_50MHz is
--  Port ( );
end clock_50MHz;


ARCHITECTURE Behavior OF clock_50MHz IS 
    signal clk : std_logic  := '0';
    constant clk_period : time := 20 ns;
BEGIN

    clk_process :process
    begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
    end process;

end Behavior;
