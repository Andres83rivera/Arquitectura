--------------------------------------------------------------------------------
--                       Maria Alejandra Gomez Montoya                        --
--                       Juan Sebastian Giraldo Herrera                       --
--                       Cristhian Andr�s Rivera Osorio                       --
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           PC_in : in  STD_LOGIC_VECTOR (31 downto 0);
           PC_out : out  STD_LOGIC_VECTOR (31 downto 0));
end PC;

architecture Behavioral of PC is

begin

	process (clk, reset, PC_in)
	begin
		if (reset = '0') then
			PC_out <= (others => '0');
		else
			if(rising_edge(clk)) then
				PC_out <= PC_in;
			end if;
		end if;
end process;

end Behavioral;

