library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_DEMUX1TO4 is
end tb_DEMUX1TO4;

architecture Behavioral of tb_DEMUX1TO4 is

    component DEMUX1TO4
        Port (
            D  : in  STD_LOGIC;
            S  : in  STD_LOGIC_VECTOR(1 downto 0);
            Y0 : out STD_LOGIC;
            Y1 : out STD_LOGIC;
            Y2 : out STD_LOGIC;
            Y3 : out STD_LOGIC
        );
    end component;

    signal D : STD_LOGIC;
    signal S : STD_LOGIC_VECTOR(1 downto 0);
    signal Y0, Y1, Y2, Y3 : STD_LOGIC;

begin

    UUT: DEMUX1TO4
        port map (
            D  => D,
            S  => S,
            Y0 => Y0,
            Y1 => Y1,
            Y2 => Y2,
            Y3 => Y3
        );

    stim_proc: process
    begin

        -- D = 1
        D <= '0';

        S <= "00";
        wait for 10 ns;

        S <= "01";
        wait for 10 ns;

        S <= "10";
        wait for 10 ns;

        S <= "11";
        wait for 10 ns;

        -- D = 0
        D <= '1';

        S <= "00";
        wait for 10 ns;

        S <= "01";
        wait for 10 ns;

        S <= "10";
        wait for 10 ns;

        S <= "11";
        wait for 10 ns;

        wait;

    end process;

end Behavioral;