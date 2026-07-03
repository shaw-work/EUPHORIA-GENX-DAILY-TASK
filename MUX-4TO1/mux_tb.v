library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_MUX4TO1 is
end tb_MUX4TO1;

architecture Behavioral of tb_MUX4TO1 is

    component MUX4TO1
        Port (
            I0 : in  STD_LOGIC;
            I1 : in  STD_LOGIC;
            I2 : in  STD_LOGIC;
            I3 : in  STD_LOGIC;
            S  : in  STD_LOGIC_VECTOR(1 downto 0);
            Y  : out STD_LOGIC
        );
    end component;

    signal I0, I1, I2, I3 : STD_LOGIC;
    signal S : STD_LOGIC_VECTOR(1 downto 0);
    signal Y : STD_LOGIC;

begin

    UUT : MUX4TO1
        port map (
            I0 => I0,
            I1 => I1,
            I2 => I2,
            I3 => I3,
            S  => S,
            Y  => Y
        );

    stim_proc : process
    begin

        -- Test Case 1
        I0 <= '0';
        I1 <= '1';
        I2 <= '0';
        I3 <= '1';

        S <= "00";
        wait for 10 ns;

        S <= "01";
        wait for 10 ns;

        S <= "10";
        wait for 10 ns;

        S <= "11";
        wait for 10 ns;

        -- Test Case 2
        I0 <= '1';
        I1 <= '0';
        I2 <= '1';
        I3 <= '0';

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