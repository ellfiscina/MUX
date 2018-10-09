library IEEE;
use IEEE.std_logic_1164.ALL;

entity portaand is
	port (i1,i2,i3,i4: in std_logic;
			o: out std_logic);
end portaand;

architecture fluxo_de_dados of portaand is begin
	o <= i1 and i2 and i3 and i4;
end fluxo_de_dados;