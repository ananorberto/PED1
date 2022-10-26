----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.08.2022 17:05:05
-- Design Name: 
-- Module Name: reset100 - Behavioral
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

entity reset100 is
--  Port ( );
end reset100;

architecture Behavioral of reset100 is

    signal reset : std_logic := '0';
    signal clk : std_logic := '0';
    
    constant clk_period : time := 20 ns;

begin
    
    stim_proc: process -- Stimulus process
    
    begin 
        reset <= '1';
        wait for 100 ns;
        reset <= '0';
        wait;
    end process;

end Behavioral;
