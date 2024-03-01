library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity conversor is
    port (
        entrada: in std_logic_vector(3 downto 0); -- 4 entradas
        salida: out std_logic_vector(6 downto 0) -- 7 salidas
    );
end entity conversor;

architecture behavioral of conversor is
begin
    process (entrada)
    begin
        case to_integer(unsigned(entrada)) is
            when 0 =>
                salida <= "0000001"; -- 0
            when 1 =>
                salida <= "1001111"; -- 1
            when 2 =>
                salida <= "0010010"; -- 2
            when 3 =>
                salida <= "0000110"; -- 3
            when 4 =>
                salida <= "1001100"; -- 4
            when 5 =>
                salida <= "0100100"; -- 5
            when 6 =>
                salida <= "0100000"; -- 6
            when 7 =>
                salida <= "0001111"; -- 7
            when 8 =>
                salida <= "0000000"; -- 8
            when 9 =>
                salida <= "0000100"; -- 9
            when others =>
                salida <= "1111111"; -- default: apagar todos los segmentos
        end case;
    end process;
end architecture behavioral;