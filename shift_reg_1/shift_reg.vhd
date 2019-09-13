library ieee;
use ieee.std_logic_1164.all;

entity shift_reg is
	port(
		i, clk 	:		in		std_logic;
		q			:		out 	std_logic_vector(3 downto 0)
	);
end entity;

architecture main of shift_reg is
	--signal q_aux	:	std_logic_vector(3 downto 0)	:= (others => '0'); -- := "0000"
begin
	process (clk, i)
		variable q_aux	:	std_logic_vector(3 downto 0)	:= (others => '0');
	begin	
		if rising_edge(clk) then
			q_aux(0) := q_aux(1);
			q_aux(1) := q_aux(2);			
			q_aux(2) := q_aux(3);
			q_aux(3) := i;
--			q_aux <= i & q_aux(3 downto 1); 
		end if;
		q <= q_aux;
	end process;

end architecture;