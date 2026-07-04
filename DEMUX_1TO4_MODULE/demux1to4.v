library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DEMUX1TO4 is
    Port (
        D  : in  STD_LOGIC;
        S  : in  STD_LOGIC_VECTOR(1 downto 0);
        Y0 : out STD_LOGIC;
        Y1 : out STD_LOGIC;
        Y2 : out STD_LOGIC;
        Y3 : out STD_LOGIC
    );
end DEMUX1TO4;

architecture Behavioral of DEMUX1TO4 is
begin
    process(D, S)
    begin
        Y0 <= '0';
        Y1 <= '0';
        Y2 <= '0';
        Y3 <= '0';

        case S is
            when "00" =>
                Y0 <= D;
            when "01" =>
                Y1 <= D;
            when "10" =>
                Y2 <= D;
            when "11" =>
                Y3 <= D;
            when others =>
                null;
        end case;
    end process;
end Behavioral;