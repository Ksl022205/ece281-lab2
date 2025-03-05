
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sevenseg_decoder_tb is
end sevenseg_decoder_tb;

architecture test_bench of sevenseg_decoder_tb is 
    -- Declare the component under test (UUT)
    component sevenseg_decoder
        port(
            i_Hex : in STD_LOGIC_VECTOR (3 downto 0);
            o_seg_n : out STD_LOGIC_VECTOR (6 downto 0)
        );
    end component;

    -- Signals for testing
    signal w_hex : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
    signal w_seg_n : STD_LOGIC_VECTOR (6 downto 0);

begin
    -- Instantiate the UUT
    sevenseg_decoder_0: sevenseg_decoder
        port map (
            i_Hex => w_hex,
            o_seg_n(6) => w_seg_n(0),
            o_seg_n(5) => w_seg_n(1),
            o_seg_n(4) => w_seg_n(2),
            o_seg_n(3) => w_seg_n(3),
            o_seg_n(2) => w_seg_n(4),
            o_seg_n(1) => w_seg_n(5),
            o_seg_n(0) => w_seg_n(6)
            );

    -- Test process
    test_process : process
    begin
        -- Apply test cases for all hexadecimal values
        w_hex <= x"0"; wait for 10 ns;
            assert w_seg_n = "0000001" report "Error on 0" severity failure;
        w_hex <= x"1"; wait for 10 ns;
            assert w_seg_n = "1001111" report "Error on 1" severity failure;
        w_hex <= x"2"; wait for 10 ns;
            assert w_seg_n = "0010010" report "Error on 2" severity failure;
        w_hex <= x"3"; wait for 10 ns;
            assert w_seg_n = "0000110" report "Error on 3" severity failure;
        w_hex <= x"4"; wait for 10 ns;
            assert w_seg_n = "1001100" report "Error on 4" severity failure;
        w_hex <= x"5"; wait for 10 ns;
            assert w_seg_n = "0100100" report "Error on 5" severity failure;
        w_hex <= x"6"; wait for 10 ns;
            assert w_seg_n = "0100000" report "Error on 6" severity failure;
        w_hex <= x"7"; wait for 10 ns;
            assert w_seg_n = "0001111" report "Error on 7" severity failure;
        w_hex <= x"8"; wait for 10 ns;
            assert w_seg_n = "0000000" report "Error on 8" severity failure;
        w_hex <= x"9"; wait for 10 ns;
            assert w_seg_n = "0001100" report "Error on 9" severity failure;
        w_hex <= x"A"; wait for 10 ns;
            assert w_seg_n = "0001000" report "Error on A" severity failure;
        w_hex <= x"B"; wait for 10 ns;
            assert w_seg_n = "1100000" report "Error on B" severity failure;
        w_hex <= x"C"; wait for 10 ns;
            assert w_seg_n = "1110010" report "Error on C" severity failure;
        w_hex <= x"D"; wait for 10 ns;
            assert w_seg_n = "1000010" report "Error on D" severity failure;
        w_hex <= x"E"; wait for 10 ns;
            assert w_seg_n = "0110000" report "Error on E" severity failure;
        w_hex <= x"F"; wait for 10 ns;
            assert w_seg_n = "0111000" report "Error on F" severity failure;
        
        -- End test
        wait;
    end process;
end test_bench;
