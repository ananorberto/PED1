-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ULA_tb is
--  Port ( );
end ULA_tb;

architecture Behavioral of ULA_tb is

    component ULA
        Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
               B : in STD_LOGIC_VECTOR (3 downto 0);
               S : in STD_LOGIC_VECTOR (1 downto 0);
               O : out STD_LOGIC_VECTOR (3 downto 0);
               OFL : out STD_LOGIC);
    end component;
    
    signal sA, sB, sO: STD_LOGIC_VECTOR (3 downto 0);
    signal sS: STD_LOGIC_VECTOR (1 downto 0);
    signal sOFL: STD_LOGIC;

begin

uut: ULA port map ( A => sA,
                    B => sB,
                    S => sS,
                    O => sO,
                    OFL => sOFL);

process
begin

    sA <= "0101"; sB <= "1010"; sS <= "00";
    wait for 20 ns;
    sA <= "1111"; sB <= "0000"; sS <= "01";
    wait for 20 ns;
    sA <= "0111"; sB <= "0111"; sS <= "10";-- A =7, B=7
    wait for 20 ns;
    sA <= "0000"; sB <= "1111"; sS <= "11";-- A =0, B=-1
    wait;

end process;

end Behavioral;