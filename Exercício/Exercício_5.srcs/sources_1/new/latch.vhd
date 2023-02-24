----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.08.2022 15:05:01
-- Design Name: 
-- Module Name: latch - Behavioral
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


--library IEEE;
--use IEEE.STD_LOGIC_1164.ALL;

---- Uncomment the following library declaration if using
---- arithmetic functions with Signed or Unsigned values
----use IEEE.NUMERIC_STD.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx leaf cells in this code.
----library UNISIM;
----use UNISIM.VComponents.all;

--entity latch is
----  Port ( );
--end latch;

--architecture Behavioral of latch is

--begin


--end Behavioral;



entity tb is
end tb;

architecture arch of tb is
    component FFD
    port (d, clk, rest : in STD_LOGIC;
                    q : out STD_LOGIC);
                 
end component;


signal sd, sclk, srst, sq : STD_LOGIC; 
--signal clk_period : ... :20ns;

begin

    port map (d => sd,
              clk => sclk,
              rst => srst,
              q => sq);
    process
 
begin
    slk <= '0'; wait for 10 ns;
    slk <= '1'; wait for 10 ns;
end process;
    
process 

begin 
srst <= '1'; sd <= '0';
wait for 100ns;
srst <= '0'; sd <= '1';
wait for 30ns;
--sd <= '0';
--wait for 10ns;
end process;


--SIMULAÇÃO FLIP-FLOP

entity ffd is
Port (
d: in std_logic 
rst : in std_logic 
clk : in std_logic 
q: out std_logic );
    end ffd;
    
    begin 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    