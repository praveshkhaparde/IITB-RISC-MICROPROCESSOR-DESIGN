library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.ALL;

entity temp_reg is
    Port ( clk : in std_logic;
           load : in std_logic;
           data_input : in std_logic_vector(15 downto 0);
           data_output : out std_logic_vector(15 downto 0));
end temp_reg;

architecture Behavioral of temp_reg is
    signal ir_register : std_logic_vector(15 downto 0) := (others => '0');
begin
    process(clk)
    begin
        if rising_edge(clk) then
			if load = '1' then
				 ir_register <= data_input;
			end if;
        end if;
    end process;

    data_output <= ir_register;
end Behavioral;
