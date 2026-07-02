----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.06.2026 21:10:38
-- Design Name: 
-- Module Name: full_subtractor - Behavioral
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

entity full_subtractor is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Bin : in STD_LOGIC;
           D : out STD_LOGIC;
           Bout : out STD_LOGIC);
end full_subtractor;

architecture Behavioral of full_subtractor is

begin
D<=A xor B xor Bin;
Bout<=((not A)and B) or (B and Bin) or (not A and Bin);

end Behavioral;
