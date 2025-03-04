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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity sevenseg_decoder_tb is
-- Test bench has no ports
end sevenseg_decoder_tb;

architecture tb of sevenseg_decoder_tb is
    -- Component declaration
    component sevenseg_decoder
        port (
            i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
            o_seg_n : out STD_LOGIC_VECTOR (6 downto 0)
        );
    end component;

    -- Signals for testbench
    signal i_Hex_tb : STD_LOGIC_VECTOR (3 downto 0);
    signal o_seg_n_tb : STD_LOGIC_VECTOR (6 downto 0);

begin
    -- Instantiate the sevenseg_decoder
    UUT: sevenseg_decoder
        port map (
            i_Hex => i_Hex_tb,
            o_seg_n => o_seg_n_tb
        );

    -- Stimulus process
    stim_proc: process
    begin
        -- Test all possible inputs (0-F in hex)
        i_Hex_tb <= "0000"; wait for 10 ns; -- 0
        i_Hex_tb <= "0001"; wait for 10 ns; -- 1
        i_Hex_tb <= "0010"; wait for 10 ns; -- 2
        i_Hex_tb <= "0011"; wait for 10 ns; -- 3
        i_Hex_tb <= "0100"; wait for 10 ns; -- 4
        i_Hex_tb <= "0101"; wait for 10 ns; -- 5
        i_Hex_tb <= "0110"; wait for 10 ns; -- 6
        i_Hex_tb <= "0111"; wait for 10 ns; -- 7
        i_Hex_tb <= "1000"; wait for 10 ns; -- 8
        i_Hex_tb <= "1001"; wait for 10 ns; -- 9
        i_Hex_tb <= "1010"; wait for 10 ns; -- A
        i_Hex_tb <= "1011"; wait for 10 ns; -- B
        i_Hex_tb <= "1100"; wait for 10 ns; -- C
        i_Hex_tb <= "1101"; wait for 10 ns; -- D
        i_Hex_tb <= "1110"; wait for 10 ns; -- E
        i_Hex_tb <= "1111"; wait for 10 ns; -- F

        -- End simulation
        wait;
    end process;
end tb;
