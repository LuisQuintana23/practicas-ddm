-- Paquetes
library IEEE;
use IEEE.std_logic_1164.all;

-- Entidad (mismo nombre de proyecto)
entity sist_entr is
port( entradas: in std_logic_vector(2 downto 0);
		display: out std_logic_vector(6 downto 0)
);
end entity;

-- Arquitectura

architecture behavioral of sist_entr is
-- declaraciones

begin
	-- 6 5 4 3 2 1 0
	-- G F E D C B A
	with entradas select
		display <= "1000000" when "000",	
					  "0110000" when "001",
					  "0100100" when "010",
					  "0100100" when "011",
					  "1111001" when others;
					  
	
end architecture;