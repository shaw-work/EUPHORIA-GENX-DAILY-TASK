library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hs_tb is
end hs_tb;

architecture Behavioral of hs_tb is

    component half_subtractor
        Port (
            A      : in  STD_LOGIC;
            B      : in  STD_LOGIC;
            Diff   : out STD_LOGIC;
            Borrow : out STD_LOGIC
        );
    end component;

    signal A      : STD_LOGIC := '0';
    signal B      : STD_LOGIC := '0';
    signal Diff   : STD_LOGIC;
    signal Borrow : STD_LOGIC;

begin

    UUT: half_subtractor
        port map (
            A => A,
            B => B,
            Diff => Diff,
            Borrow => Borrow
        );

    stimulus: process
    begin
        A <= '0'; B <= '0';
        wait for 10 ns;

        A <= '0'; B <= '1';
        wait for 10 ns;

        A <= '1'; B <= '0';
        wait for 10 ns;

        A <= '1'; B <= '1';
        wait for 10 ns;

        wait;
    end process;

end Behavioral;