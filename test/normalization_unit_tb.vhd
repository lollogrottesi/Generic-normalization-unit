----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 29.07.2020 12:32:14
-- Design Name: 
-- Module Name: normalization_unit_tb - Behavioral
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

entity normalization_unit_tb is
--  Port ( );
end normalization_unit_tb;

architecture Behavioral of normalization_unit_tb is

component Generic_normlization_unit is
    generic (N: integer:= 8);
    port (M: in std_logic_vector(N-1 downto 0);
          norma_M: out std_logic_vector(N-1 downto 0));
end component;

constant N : integer:= 5;
signal M, norma_m: std_logic_vector(N-1 downto 0);

begin
dut : Generic_normlization_unit generic map(N)
                                port map (M, norma_M);

    process
    begin
        M <= "00000";
        wait for 10 ns;
        M <= "01110";
        wait for 10 ns;
        M <= "00110";
        wait for 10 ns;
        M <= "00001";
        wait for 10 ns;
        M <= "01110";
        wait for 10 ns;
        M <= "00010";
        wait;
    end process;
end Behavioral;
