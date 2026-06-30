----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.06.2026 20:28:44
-- Design Name: 
-- Module Name: half_subtractor - Behavioral
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

entity half_subtractor is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Diff : out STD_LOGIC;
           Borrow : out STD_LOGIC);
end half_subtractor;

architecture Behavioral of half_subtractor is

begin
Diff<= A xor B;
Borrow<= (not A) and B;

end Behavioral;
