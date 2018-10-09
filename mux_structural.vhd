library IEEE;
use IEEE.std_logic_1164.ALL;

entity mux_structural is
	port (d0,d1,d2,d3,d4,d5,d6,d7,s1,s2,s3: in std_logic;
			y: out std_logic);
end mux_structural;

architecture estrutural of mux_structural is
	component portanot 
		port (i: in std_logic;
			   o: out std_logic);
	end component;
	
	component portaand
		port (i1,i2,i3,i4: in std_logic;
				o: out std_logic);
	end component;
	
	component portaor
		port (i1,i2,i3,i4,i5,i6,i7,i8: in std_logic;
				o: out std_logic);
	end component;
	
	signal sn1,sn2,sn3,sd0,sd1,sd2,sd3,sd4,sd5,sd6,sd7: std_logic;
	begin
		U1: portanot port map(s1, sn1);
		U2: portanot port map(s2, sn2);
		U3: portanot port map(s3, sn3);
		U4: portaand port map(sn1,sn2,sn3,d0,sd0);
		U5: portaand port map(sn1,sn2,s3,d1,sd1);
		U6: portaand port map(sn1,s2,sn3,d2,sd2);
		U7: portaand port map(sn1,s2,s3,d3,sd3);
		U8: portaand port map(s1,sn2,sn3,d4,sd4);
		U9: portaand port map(s1,sn2,s3,d5,sd5);
		U10: portaand port map(s1,s2,sn3,d6,sd6);
		U11: portaand port map(s1,s2,s3,d7,sd7);
		U12: portaor port map(sd0,sd1,sd2,sd3,sd4,sd5,sd6,sd7,y);
		
end estrutural;