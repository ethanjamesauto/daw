-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Wed May 10 18:30:44 2023
-- Host        : DESKTOP-MJRS0I7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Ethan/Documents/daw/vivado/hw/hw.gen/sources_1/bd/system/ip/system_rgb_driver_0_0/system_rgb_driver_0_0_sim_netlist.vhdl
-- Design      : system_rgb_driver_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_rgb_driver_0_0_rgb_driver is
  port (
    g : out STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_rgb_driver_0_0_rgb_driver : entity is "rgb_driver";
end system_rgb_driver_0_0_rgb_driver;

architecture STRUCTURE of system_rgb_driver_0_0_rgb_driver is
  signal ctr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ctr[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ctr[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ctr[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of led_on : label is "soft_lutpair0";
begin
\ctr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ctr(0),
      O => p_0_in(0)
    );
\ctr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ctr(0),
      I1 => ctr(1),
      O => p_0_in(1)
    );
\ctr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => ctr(0),
      I1 => ctr(1),
      I2 => ctr(2),
      O => p_0_in(2)
    );
\ctr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(0),
      Q => ctr(0),
      R => '0'
    );
\ctr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      Q => ctr(1),
      R => '0'
    );
\ctr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(2),
      Q => ctr(2),
      R => '0'
    );
led_on: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => ctr(2),
      I1 => ctr(0),
      I2 => ctr(1),
      O => g
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_rgb_driver_0_0 is
  port (
    clk : in STD_LOGIC;
    r : out STD_LOGIC;
    g : out STD_LOGIC;
    b : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_rgb_driver_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_rgb_driver_0_0 : entity is "system_rgb_driver_0_0,rgb_driver,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_rgb_driver_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_rgb_driver_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_rgb_driver_0_0 : entity is "rgb_driver,Vivado 2022.2";
end system_rgb_driver_0_0;

architecture STRUCTURE of system_rgb_driver_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^g\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
  b <= \<const0>\;
  g <= \^g\;
  r <= \^g\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.system_rgb_driver_0_0_rgb_driver
     port map (
      clk => clk,
      g => \^g\
    );
end STRUCTURE;
