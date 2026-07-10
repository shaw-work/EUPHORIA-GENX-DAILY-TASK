library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fs_tb is
end fs_tb;

architecture Behavioral of fs_tb is

    component full_subtractor
        Port (
            A    : in  STD_LOGIC;
            B    : in  STD_LOGIC;
            Bin  : in  STD_LOGIC;
            D    : out STD_LOGIC;
            Bout : out STD_LOGIC
        );
    end component;

    signal A, B, Bin : STD_LOGIC := '0';
    signal D, Bout   : STD_LOGIC;

begin

    uut: full_subtractor
        port map (
            A => A,
            B => B,
            Bin => Bin,
            D => D,
            Bout => Bout
        );

    stim_proc: process
    begin
        A<='0'; B<='0'; Bin<='0'; wait for 10 ns;
        A<='0'; B<='0'; Bin<='1'; wait for 10 ns;
        A<='0'; B<='1'; Bin<='0'; wait for 10 ns;
        A<='0'; B<='1'; Bin<='1'; wait for 10 ns;
        A<='1'; B<='0'; Bin<='0'; wait for 10 ns;
        A<='1'; B<='0'; Bin<='1'; wait for 10 ns;
        A<='1'; B<='1'; Bin<='0'; wait for 10 ns;
        A<='1'; B<='1'; Bin<='1'; wait for 10 ns;

        wait;
    end process;

end Behavioral;