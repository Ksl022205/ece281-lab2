----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/02/2025 08:12:25 PM
-- Design Name: 
-- Module Name: sevenseg_decoder_tb - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture Behavioral of sevenseg_decoder_tb is
    signal i_Hex : STD_LOGIC_VECTOR (3 downto 0);
    signal o_seg_n : STD_LOGIC_VECTOR (6 downto 0);

    -- Instantiate the Unit Under Test (UUT)
    component sevenseg_decoder
        Port ( i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
               o_seg_n : out STD_LOGIC_VECTOR (6 downto 0));
    end component;

begin
    uut: sevenseg_decoder port map (
        i_Hex => i_Hex,
        o_seg_n => o_seg_n
    );

    process
    begin
        -- Iterate through all possible 4-bit values (0 to F in hex)
        for i in 0 to 15 loop
            i_Hex <= std_logic_vector(to_unsigned(i, 4));
            wait for 10 ns; -- Wait time for simulation to observe changes
        end loop;
        
        wait; -- Stop simulation
    end process;
end Behavioral;
