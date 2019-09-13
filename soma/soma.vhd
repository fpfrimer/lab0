entity soma is
	port(
		ai, bi	:	in		bit_vector(7 downto 0);
		so			:	out	bit_vector(7 downto 0)
	);
end entity;

architecture main of soma is

	function	"+"(
		a	:	bit_vector;
		b	:	bit_vector
	) return bit_vector is		
		variable c	:	bit_vector(0 to 8) := (others => '0');
		variable s  :  bit_vector(7 downto 0);
	begin
		c(0) := '0';
		loop_soma : for i in a'reverse_range loop
			s(i) := a(i) xor b(i) xor c(i);
			c(i + 1) := (a(i) and b(i)) or (a(i) and c(i)) or (c(i) and b(i));
		end loop loop_soma;
		return s;
	end function;	
	
begin
	--so <= somar(b => bi, a => ai);
	so <= ai + bi;
end architecture;