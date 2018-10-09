library IEEE;
use IEEE.std_logic_1164.ALL;

entity portaor is
	port (i1,i2,i3,i4,i5,i6,i7,i8: in std_logic;
			o: out std_logic);
end portaor;

architecture fluxo_de_dados of portaor is begin
	o <= i1 or i2 or i3 or i4 or i5 or i6 or i7 or i8;
end fluxo_de_dados;