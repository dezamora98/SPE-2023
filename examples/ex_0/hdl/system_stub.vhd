-------------------------------------------------------------------------------
-- system_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity system_stub is
  port (
    fpga_0_LEDs_8Bit_GPIO_IO_O_pin : out std_logic_vector(0 to 7);
    fpga_0_DIP_Switches_4Bit_GPIO_IO_I_pin : in std_logic_vector(0 to 3);
    fpga_0_Buttons_3Bit_GPIO_IO_I_pin : in std_logic_vector(0 to 2);
    fpga_0_clk_1_sys_clk_pin : in std_logic;
    fpga_0_rst_1_sys_rst_pin : in std_logic
  );
end system_stub;

architecture STRUCTURE of system_stub is

  component system is
    port (
      fpga_0_LEDs_8Bit_GPIO_IO_O_pin : out std_logic_vector(0 to 7);
      fpga_0_DIP_Switches_4Bit_GPIO_IO_I_pin : in std_logic_vector(0 to 3);
      fpga_0_Buttons_3Bit_GPIO_IO_I_pin : in std_logic_vector(0 to 2);
      fpga_0_clk_1_sys_clk_pin : in std_logic;
      fpga_0_rst_1_sys_rst_pin : in std_logic
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of system : component is "user_black_box";

begin

  system_i : system
    port map (
      fpga_0_LEDs_8Bit_GPIO_IO_O_pin => fpga_0_LEDs_8Bit_GPIO_IO_O_pin,
      fpga_0_DIP_Switches_4Bit_GPIO_IO_I_pin => fpga_0_DIP_Switches_4Bit_GPIO_IO_I_pin,
      fpga_0_Buttons_3Bit_GPIO_IO_I_pin => fpga_0_Buttons_3Bit_GPIO_IO_I_pin,
      fpga_0_clk_1_sys_clk_pin => fpga_0_clk_1_sys_clk_pin,
      fpga_0_rst_1_sys_rst_pin => fpga_0_rst_1_sys_rst_pin
    );

end architecture STRUCTURE;

