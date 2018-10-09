library IEEE;
use IEEE.std_logic_1164.ALL;

entity portanot is
	port (i: in std_logic;
			o: out std_logic);
end portanot;

architecture fluxo_de_dados of portanot is begin
	o <= not i;
end fluxo_de_dados;
