-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Feb 10 11:08:23 2021
-- Host        : DESKTOP-4A9L7PJ running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Bachelor1/i2c/LA_i2c_nILA/LogicAnalyzer.sim/sim_1/impl/func/xsim/tb_i2c_main_func_impl.vhd
-- Design      : i2c_main
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity debouncer is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    button_stb : out STD_LOGIC;
    temp_sig2_reg : out STD_LOGIC;
    \FSM_onehot_state_reg[3]\ : out STD_LOGIC;
    reset_btn_IBUF : in STD_LOGIC;
    CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    new_byte_reg : in STD_LOGIC;
    scl_in_IBUF : in STD_LOGIC;
    temp_sig2 : in STD_LOGIC;
    \FSM_onehot_next_state_reg[0]\ : in STD_LOGIC;
    \FSM_onehot_next_state_reg[0]_0\ : in STD_LOGIC;
    sda_in_IBUF : in STD_LOGIC;
    temp_sda_reg : in STD_LOGIC;
    new_byte_reg_0 : in STD_LOGIC
  );
end debouncer;

architecture STRUCTURE of debouncer is
  signal \FSM_onehot_next_state[7]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state[7]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state[7]_i_6_n_0\ : STD_LOGIC;
  signal button_q0 : STD_LOGIC;
  signal button_q1 : STD_LOGIC;
  signal button_q2 : STD_LOGIC;
  signal button_q2_i_1_n_0 : STD_LOGIC;
  signal button_q3 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal \cnt_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_cnt_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_reg[0]_i_2\ : label is 11;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \cnt_reg[0]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \cnt_reg[12]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \cnt_reg[12]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \cnt_reg[16]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \cnt_reg[16]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \cnt_reg[4]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \cnt_reg[4]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \cnt_reg[8]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \cnt_reg[8]_i_1\ : label is "SWEEP";
begin
\FSM_onehot_next_state[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEAAAA"
    )
        port map (
      I0 => \FSM_onehot_next_state[7]_i_3_n_0\,
      I1 => Q(2),
      I2 => new_byte_reg,
      I3 => Q(4),
      I4 => \FSM_onehot_next_state[7]_i_5_n_0\,
      I5 => \FSM_onehot_next_state[7]_i_6_n_0\,
      O => E(0)
    );
\FSM_onehot_next_state[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00F0E0000000E000"
    )
        port map (
      I0 => Q(5),
      I1 => Q(1),
      I2 => \FSM_onehot_next_state[7]_i_5_n_0\,
      I3 => scl_in_IBUF,
      I4 => temp_sig2,
      I5 => Q(6),
      O => \FSM_onehot_next_state[7]_i_3_n_0\
    );
\FSM_onehot_next_state[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => button_q2,
      I1 => button_q3,
      O => \FSM_onehot_next_state[7]_i_5_n_0\
    );
\FSM_onehot_next_state[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC00000E0E00000"
    )
        port map (
      I0 => temp_sig2,
      I1 => \FSM_onehot_next_state_reg[0]\,
      I2 => Q(3),
      I3 => \FSM_onehot_next_state_reg[0]_0\,
      I4 => \FSM_onehot_next_state[7]_i_5_n_0\,
      I5 => scl_in_IBUF,
      O => \FSM_onehot_next_state[7]_i_6_n_0\
    );
\FSM_onehot_state[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => button_q3,
      I1 => button_q2,
      O => button_stb
    );
button_q0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => reset_btn_IBUF,
      Q => button_q0,
      R => '0'
    );
button_q1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => button_q0,
      Q => button_q1,
      R => '0'
    );
button_q2_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => button_q1,
      I1 => clear,
      I2 => button_q2,
      O => button_q2_i_1_n_0
    );
button_q2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => button_q2_i_1_n_0,
      Q => button_q2,
      R => '0'
    );
button_q3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => button_q2,
      Q => button_q3,
      R => '0'
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \cnt[0]_i_3_n_0\,
      I1 => \cnt[0]_i_4_n_0\,
      I2 => \cnt[0]_i_5_n_0\,
      I3 => cnt_reg(0),
      I4 => cnt_reg(1),
      O => clear
    );
\cnt[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => cnt_reg(16),
      I1 => cnt_reg(17),
      I2 => cnt_reg(14),
      I3 => cnt_reg(15),
      I4 => cnt_reg(19),
      I5 => cnt_reg(18),
      O => \cnt[0]_i_3_n_0\
    );
\cnt[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => cnt_reg(4),
      I1 => cnt_reg(5),
      I2 => cnt_reg(2),
      I3 => cnt_reg(3),
      I4 => cnt_reg(7),
      I5 => cnt_reg(6),
      O => \cnt[0]_i_4_n_0\
    );
\cnt[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => cnt_reg(10),
      I1 => cnt_reg(11),
      I2 => cnt_reg(9),
      I3 => cnt_reg(8),
      I4 => cnt_reg(13),
      I5 => cnt_reg(12),
      O => \cnt[0]_i_5_n_0\
    );
\cnt[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(0),
      O => \cnt[0]_i_6_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[0]_i_2_n_7\,
      Q => cnt_reg(0),
      R => clear
    );
\cnt_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_reg[0]_i_2_n_0\,
      CO(2 downto 0) => \NLW_cnt_reg[0]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cnt_reg[0]_i_2_n_4\,
      O(2) => \cnt_reg[0]_i_2_n_5\,
      O(1) => \cnt_reg[0]_i_2_n_6\,
      O(0) => \cnt_reg[0]_i_2_n_7\,
      S(3 downto 1) => cnt_reg(3 downto 1),
      S(0) => \cnt[0]_i_6_n_0\
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_5\,
      Q => cnt_reg(10),
      R => clear
    );
\cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_4\,
      Q => cnt_reg(11),
      R => clear
    );
\cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[12]_i_1_n_7\,
      Q => cnt_reg(12),
      R => clear
    );
\cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[8]_i_1_n_0\,
      CO(3) => \cnt_reg[12]_i_1_n_0\,
      CO(2 downto 0) => \NLW_cnt_reg[12]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[12]_i_1_n_4\,
      O(2) => \cnt_reg[12]_i_1_n_5\,
      O(1) => \cnt_reg[12]_i_1_n_6\,
      O(0) => \cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(15 downto 12)
    );
\cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[12]_i_1_n_6\,
      Q => cnt_reg(13),
      R => clear
    );
\cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[12]_i_1_n_5\,
      Q => cnt_reg(14),
      R => clear
    );
\cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[12]_i_1_n_4\,
      Q => cnt_reg(15),
      R => clear
    );
\cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[16]_i_1_n_7\,
      Q => cnt_reg(16),
      R => clear
    );
\cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[12]_i_1_n_0\,
      CO(3 downto 0) => \NLW_cnt_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[16]_i_1_n_4\,
      O(2) => \cnt_reg[16]_i_1_n_5\,
      O(1) => \cnt_reg[16]_i_1_n_6\,
      O(0) => \cnt_reg[16]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(19 downto 16)
    );
\cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[16]_i_1_n_6\,
      Q => cnt_reg(17),
      R => clear
    );
\cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[16]_i_1_n_5\,
      Q => cnt_reg(18),
      R => clear
    );
\cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[16]_i_1_n_4\,
      Q => cnt_reg(19),
      R => clear
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[0]_i_2_n_6\,
      Q => cnt_reg(1),
      R => clear
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[0]_i_2_n_5\,
      Q => cnt_reg(2),
      R => clear
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[0]_i_2_n_4\,
      Q => cnt_reg(3),
      R => clear
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_7\,
      Q => cnt_reg(4),
      R => clear
    );
\cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[0]_i_2_n_0\,
      CO(3) => \cnt_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_cnt_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[4]_i_1_n_4\,
      O(2) => \cnt_reg[4]_i_1_n_5\,
      O(1) => \cnt_reg[4]_i_1_n_6\,
      O(0) => \cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(7 downto 4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_6\,
      Q => cnt_reg(5),
      R => clear
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_5\,
      Q => cnt_reg(6),
      R => clear
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[4]_i_1_n_4\,
      Q => cnt_reg(7),
      R => clear
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_7\,
      Q => cnt_reg(8),
      R => clear
    );
\cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[4]_i_1_n_0\,
      CO(3) => \cnt_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_cnt_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[8]_i_1_n_4\,
      O(2) => \cnt_reg[8]_i_1_n_5\,
      O(1) => \cnt_reg[8]_i_1_n_6\,
      O(0) => \cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(11 downto 8)
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \cnt_reg[8]_i_1_n_6\,
      Q => cnt_reg(9),
      R => clear
    );
new_byte_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1FFF1F1F000F0F0"
    )
        port map (
      I0 => new_byte_reg,
      I1 => Q(2),
      I2 => Q(6),
      I3 => button_q2,
      I4 => button_q3,
      I5 => new_byte_reg_0,
      O => \FSM_onehot_state_reg[3]\
    );
temp_sda_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF40000000"
    )
        port map (
      I0 => temp_sig2,
      I1 => scl_in_IBUF,
      I2 => sda_in_IBUF,
      I3 => \FSM_onehot_next_state[7]_i_5_n_0\,
      I4 => Q(0),
      I5 => temp_sda_reg,
      O => temp_sig2_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity i2c_main is
  port (
    sda_in : in STD_LOGIC;
    scl_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset_btn : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of i2c_main : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of i2c_main : entity is "f381dff1";
end i2c_main;

architecture STRUCTURE of i2c_main is
  signal \FSM_onehot_next_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state[7]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state[7]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state[7]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state[7]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state[7]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state[7]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state[7]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state[7]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state[7]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state[7]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state[7]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_next_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[7]\ : STD_LOGIC;
  signal RST_BTN_n_0 : STD_LOGIC;
  signal RST_BTN_n_2 : STD_LOGIC;
  signal RST_BTN_n_3 : STD_LOGIC;
  signal bit_cnt : STD_LOGIC;
  signal \bit_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[12]_i_3_n_0\ : STD_LOGIC;
  signal \bit_cnt[12]_i_4_n_0\ : STD_LOGIC;
  signal \bit_cnt[12]_i_5_n_0\ : STD_LOGIC;
  signal \bit_cnt[12]_i_6_n_0\ : STD_LOGIC;
  signal \bit_cnt[13]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[14]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[16]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[16]_i_3_n_0\ : STD_LOGIC;
  signal \bit_cnt[16]_i_4_n_0\ : STD_LOGIC;
  signal \bit_cnt[16]_i_5_n_0\ : STD_LOGIC;
  signal \bit_cnt[16]_i_6_n_0\ : STD_LOGIC;
  signal \bit_cnt[17]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[18]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[19]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[20]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[20]_i_3_n_0\ : STD_LOGIC;
  signal \bit_cnt[20]_i_4_n_0\ : STD_LOGIC;
  signal \bit_cnt[20]_i_5_n_0\ : STD_LOGIC;
  signal \bit_cnt[20]_i_6_n_0\ : STD_LOGIC;
  signal \bit_cnt[21]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[22]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[23]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[24]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[24]_i_3_n_0\ : STD_LOGIC;
  signal \bit_cnt[24]_i_4_n_0\ : STD_LOGIC;
  signal \bit_cnt[24]_i_5_n_0\ : STD_LOGIC;
  signal \bit_cnt[24]_i_6_n_0\ : STD_LOGIC;
  signal \bit_cnt[25]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[26]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[27]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[28]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[28]_i_3_n_0\ : STD_LOGIC;
  signal \bit_cnt[28]_i_4_n_0\ : STD_LOGIC;
  signal \bit_cnt[28]_i_5_n_0\ : STD_LOGIC;
  signal \bit_cnt[28]_i_6_n_0\ : STD_LOGIC;
  signal \bit_cnt[29]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[30]_i_2_n_0\ : STD_LOGIC;
  signal \bit_cnt[30]_i_4_n_0\ : STD_LOGIC;
  signal \bit_cnt[30]_i_5_n_0\ : STD_LOGIC;
  signal \bit_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[4]_i_3_n_0\ : STD_LOGIC;
  signal \bit_cnt[4]_i_4_n_0\ : STD_LOGIC;
  signal \bit_cnt[4]_i_5_n_0\ : STD_LOGIC;
  signal \bit_cnt[4]_i_6_n_0\ : STD_LOGIC;
  signal \bit_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \bit_cnt[8]_i_4_n_0\ : STD_LOGIC;
  signal \bit_cnt[8]_i_5_n_0\ : STD_LOGIC;
  signal \bit_cnt[8]_i_6_n_0\ : STD_LOGIC;
  signal \bit_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \bit_cnt_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \bit_cnt_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \bit_cnt_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \bit_cnt_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \bit_cnt_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \bit_cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \bit_cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[12]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[13]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[14]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[15]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[16]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[17]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[18]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[19]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[20]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[21]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[22]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[23]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[24]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[25]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[26]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[27]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[28]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[29]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[30]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \bit_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal button_stb : STD_LOGIC;
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal in12 : STD_LOGIC_VECTOR ( 30 downto 1 );
  signal led_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal new_byte_reg_n_0 : STD_LOGIC;
  signal \pack_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal pack_cnt_en_i_1_n_0 : STD_LOGIC;
  signal pack_cnt_en_reg_n_0 : STD_LOGIC;
  signal pack_cnt_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pack_cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \pack_cnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \pack_cnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \pack_cnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \pack_cnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \pack_cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \pack_cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \pack_cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \pack_cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \pack_cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \pack_cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \pack_cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \pack_cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \pack_cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \pack_cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \pack_cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \pack_cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \pack_cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \pack_cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal read_now_i_1_n_0 : STD_LOGIC;
  signal read_now_reg_n_0 : STD_LOGIC;
  signal reset_btn_IBUF : STD_LOGIC;
  signal scl_in_IBUF : STD_LOGIC;
  signal sda_in_IBUF : STD_LOGIC;
  signal temp_sda : STD_LOGIC;
  signal temp_sda_reg_n_0 : STD_LOGIC;
  signal temp_sig1 : STD_LOGIC;
  signal temp_sig2 : STD_LOGIC;
  signal \NLW_bit_cnt_reg[12]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_bit_cnt_reg[16]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_bit_cnt_reg[20]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_bit_cnt_reg[24]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_bit_cnt_reg[28]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_bit_cnt_reg[30]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_bit_cnt_reg[30]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_bit_cnt_reg[4]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_bit_cnt_reg[8]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_pack_cnt_reg[0]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_pack_cnt_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pack_cnt_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_pack_cnt_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_next_state[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_next_state[3]_i_1\ : label is "soft_lutpair2";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "read:00010000,wait_next_bit:01000000,start:00000100,idle:00000010,wait_for_start:00000001,stop:00001000,read_ack_bit:10000000,error:1000,cnt_bit:00100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "read:00010000,wait_next_bit:01000000,start:00000100,idle:00000010,wait_for_start:00000001,stop:00001000,read_ack_bit:10000000,error:1000,cnt_bit:00100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "read:00010000,wait_next_bit:01000000,start:00000100,idle:00000010,wait_for_start:00000001,stop:00001000,read_ack_bit:10000000,error:1000,cnt_bit:00100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "read:00010000,wait_next_bit:01000000,start:00000100,idle:00000010,wait_for_start:00000001,stop:00001000,read_ack_bit:10000000,error:1000,cnt_bit:00100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "read:00010000,wait_next_bit:01000000,start:00000100,idle:00000010,wait_for_start:00000001,stop:00001000,read_ack_bit:10000000,error:1000,cnt_bit:00100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "read:00010000,wait_next_bit:01000000,start:00000100,idle:00000010,wait_for_start:00000001,stop:00001000,read_ack_bit:10000000,error:1000,cnt_bit:00100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "read:00010000,wait_next_bit:01000000,start:00000100,idle:00000010,wait_for_start:00000001,stop:00001000,read_ack_bit:10000000,error:1000,cnt_bit:00100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "read:00010000,wait_next_bit:01000000,start:00000100,idle:00000010,wait_for_start:00000001,stop:00001000,read_ack_bit:10000000,error:1000,cnt_bit:00100000";
  attribute SOFT_HLUTNM of \bit_cnt[0]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bit_cnt[10]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bit_cnt[11]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \bit_cnt[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \bit_cnt[13]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bit_cnt[14]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bit_cnt[15]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \bit_cnt[16]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \bit_cnt[17]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bit_cnt[18]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bit_cnt[19]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \bit_cnt[1]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bit_cnt[20]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \bit_cnt[21]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bit_cnt[22]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bit_cnt[23]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \bit_cnt[24]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \bit_cnt[25]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bit_cnt[26]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bit_cnt[27]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \bit_cnt[28]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \bit_cnt[29]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bit_cnt[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bit_cnt[30]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \bit_cnt[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \bit_cnt[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bit_cnt[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bit_cnt[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \bit_cnt[8]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \bit_cnt[9]_i_1\ : label is "soft_lutpair13";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \bit_cnt_reg[12]_i_2\ : label is 35;
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \bit_cnt_reg[12]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \bit_cnt_reg[16]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \bit_cnt_reg[16]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \bit_cnt_reg[20]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \bit_cnt_reg[20]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \bit_cnt_reg[24]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \bit_cnt_reg[24]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \bit_cnt_reg[28]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \bit_cnt_reg[28]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \bit_cnt_reg[30]_i_3\ : label is 35;
  attribute OPT_MODIFIED of \bit_cnt_reg[30]_i_3\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \bit_cnt_reg[4]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \bit_cnt_reg[4]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \bit_cnt_reg[8]_i_2\ : label is 35;
  attribute OPT_MODIFIED of \bit_cnt_reg[8]_i_2\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \pack_cnt_reg[0]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \pack_cnt_reg[0]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \pack_cnt_reg[12]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \pack_cnt_reg[12]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \pack_cnt_reg[4]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \pack_cnt_reg[4]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \pack_cnt_reg[8]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \pack_cnt_reg[8]_i_1\ : label is "SWEEP";
begin
\FSM_onehot_next_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_next_state[1]_i_1_n_0\
    );
\FSM_onehot_next_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => sda_in_IBUF,
      I1 => temp_sig1,
      I2 => scl_in_IBUF,
      I3 => temp_sda,
      O => \FSM_onehot_next_state[2]_i_1_n_0\
    );
\FSM_onehot_next_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => temp_sig1,
      I1 => sda_in_IBUF,
      I2 => scl_in_IBUF,
      I3 => temp_sda,
      O => \FSM_onehot_next_state[3]_i_1_n_0\
    );
\FSM_onehot_next_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFE00"
    )
        port map (
      I0 => \FSM_onehot_next_state[7]_i_7_n_0\,
      I1 => \FSM_onehot_next_state[7]_i_8_n_0\,
      I2 => \FSM_onehot_next_state[7]_i_9_n_0\,
      I3 => \FSM_onehot_state_reg_n_0_[6]\,
      I4 => \FSM_onehot_next_state[4]_i_2_n_0\,
      I5 => \FSM_onehot_state_reg_n_0_[2]\,
      O => \FSM_onehot_next_state[4]_i_1_n_0\
    );
\FSM_onehot_next_state[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9F00"
    )
        port map (
      I0 => sda_in_IBUF,
      I1 => temp_sig1,
      I2 => scl_in_IBUF,
      I3 => temp_sda,
      O => \FSM_onehot_next_state[4]_i_2_n_0\
    );
\FSM_onehot_next_state[7]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"32C0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => temp_sig1,
      I2 => temp_sda,
      I3 => sda_in_IBUF,
      O => \FSM_onehot_next_state[7]_i_10_n_0\
    );
\FSM_onehot_next_state[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[22]\,
      I1 => \bit_cnt_reg_n_0_[21]\,
      I2 => \bit_cnt_reg_n_0_[24]\,
      I3 => \bit_cnt_reg_n_0_[23]\,
      O => \FSM_onehot_next_state[7]_i_11_n_0\
    );
\FSM_onehot_next_state[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[18]\,
      I1 => \bit_cnt_reg_n_0_[17]\,
      I2 => \bit_cnt_reg_n_0_[20]\,
      I3 => \bit_cnt_reg_n_0_[19]\,
      O => \FSM_onehot_next_state[7]_i_12_n_0\
    );
\FSM_onehot_next_state[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[26]\,
      I1 => \bit_cnt_reg_n_0_[25]\,
      I2 => \bit_cnt_reg_n_0_[28]\,
      I3 => \bit_cnt_reg_n_0_[27]\,
      O => \FSM_onehot_next_state[7]_i_13_n_0\
    );
\FSM_onehot_next_state[7]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[6]\,
      I1 => \bit_cnt_reg_n_0_[5]\,
      I2 => \bit_cnt_reg_n_0_[8]\,
      I3 => \bit_cnt_reg_n_0_[7]\,
      O => \FSM_onehot_next_state[7]_i_14_n_0\
    );
\FSM_onehot_next_state[7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[14]\,
      I1 => \bit_cnt_reg_n_0_[13]\,
      I2 => \bit_cnt_reg_n_0_[16]\,
      I3 => \bit_cnt_reg_n_0_[15]\,
      O => \FSM_onehot_next_state[7]_i_15_n_0\
    );
\FSM_onehot_next_state[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => \FSM_onehot_next_state[7]_i_7_n_0\,
      I2 => \FSM_onehot_next_state[7]_i_8_n_0\,
      I3 => \FSM_onehot_next_state[7]_i_9_n_0\,
      O => \FSM_onehot_next_state[7]_i_2_n_0\
    );
\FSM_onehot_next_state[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000002000"
    )
        port map (
      I0 => temp_sig2,
      I1 => scl_in_IBUF,
      I2 => new_byte_reg_n_0,
      I3 => temp_sda,
      I4 => sda_in_IBUF,
      I5 => temp_sda_reg_n_0,
      O => \FSM_onehot_next_state[7]_i_4_n_0\
    );
\FSM_onehot_next_state[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_onehot_next_state[7]_i_11_n_0\,
      I1 => \FSM_onehot_next_state[7]_i_12_n_0\,
      I2 => \bit_cnt_reg_n_0_[30]\,
      I3 => \bit_cnt_reg_n_0_[29]\,
      I4 => \bit_cnt_reg_n_0_[0]\,
      I5 => \FSM_onehot_next_state[7]_i_13_n_0\,
      O => \FSM_onehot_next_state[7]_i_7_n_0\
    );
\FSM_onehot_next_state[7]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[3]\,
      I1 => \bit_cnt_reg_n_0_[4]\,
      I2 => \bit_cnt_reg_n_0_[1]\,
      I3 => \bit_cnt_reg_n_0_[2]\,
      I4 => \FSM_onehot_next_state[7]_i_14_n_0\,
      O => \FSM_onehot_next_state[7]_i_8_n_0\
    );
\FSM_onehot_next_state[7]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[11]\,
      I1 => \bit_cnt_reg_n_0_[12]\,
      I2 => \bit_cnt_reg_n_0_[9]\,
      I3 => \bit_cnt_reg_n_0_[10]\,
      I4 => \FSM_onehot_next_state[7]_i_15_n_0\,
      O => \FSM_onehot_next_state[7]_i_9_n_0\
    );
\FSM_onehot_next_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RST_BTN_n_0,
      D => '0',
      Q => \FSM_onehot_next_state_reg_n_0_[0]\,
      R => '0'
    );
\FSM_onehot_next_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RST_BTN_n_0,
      D => \FSM_onehot_next_state[1]_i_1_n_0\,
      Q => \FSM_onehot_next_state_reg_n_0_[1]\,
      R => '0'
    );
\FSM_onehot_next_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RST_BTN_n_0,
      D => \FSM_onehot_next_state[2]_i_1_n_0\,
      Q => \FSM_onehot_next_state_reg_n_0_[2]\,
      R => '0'
    );
\FSM_onehot_next_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RST_BTN_n_0,
      D => \FSM_onehot_next_state[3]_i_1_n_0\,
      Q => \FSM_onehot_next_state_reg_n_0_[3]\,
      R => '0'
    );
\FSM_onehot_next_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RST_BTN_n_0,
      D => \FSM_onehot_next_state[4]_i_1_n_0\,
      Q => \FSM_onehot_next_state_reg_n_0_[4]\,
      R => '0'
    );
\FSM_onehot_next_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RST_BTN_n_0,
      D => \FSM_onehot_state_reg_n_0_[4]\,
      Q => \FSM_onehot_next_state_reg_n_0_[5]\,
      R => '0'
    );
\FSM_onehot_next_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RST_BTN_n_0,
      D => \FSM_onehot_state_reg_n_0_[5]\,
      Q => \FSM_onehot_next_state_reg_n_0_[6]\,
      R => '0'
    );
\FSM_onehot_next_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => RST_BTN_n_0,
      D => \FSM_onehot_next_state[7]_i_2_n_0\,
      Q => \FSM_onehot_next_state_reg_n_0_[7]\,
      R => '0'
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[0]\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => button_stb
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[1]\,
      Q => temp_sda,
      R => button_stb
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[2]\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => button_stb
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[3]\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => button_stb
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[4]\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => button_stb
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[5]\,
      Q => \FSM_onehot_state_reg_n_0_[5]\,
      R => button_stb
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[6]\,
      Q => \FSM_onehot_state_reg_n_0_[6]\,
      R => button_stb
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \FSM_onehot_next_state_reg_n_0_[7]\,
      Q => \FSM_onehot_state_reg_n_0_[7]\,
      R => button_stb
    );
RST_BTN: entity work.debouncer
     port map (
      CLK => clk_IBUF_BUFG,
      E(0) => RST_BTN_n_0,
      \FSM_onehot_next_state_reg[0]\ => read_now_reg_n_0,
      \FSM_onehot_next_state_reg[0]_0\ => \FSM_onehot_next_state[7]_i_10_n_0\,
      \FSM_onehot_state_reg[3]\ => RST_BTN_n_3,
      Q(6) => \FSM_onehot_state_reg_n_0_[7]\,
      Q(5) => \FSM_onehot_state_reg_n_0_[6]\,
      Q(4) => \FSM_onehot_state_reg_n_0_[5]\,
      Q(3) => \FSM_onehot_state_reg_n_0_[4]\,
      Q(2) => \FSM_onehot_state_reg_n_0_[3]\,
      Q(1) => \FSM_onehot_state_reg_n_0_[2]\,
      Q(0) => temp_sda,
      button_stb => button_stb,
      new_byte_reg => \FSM_onehot_next_state[7]_i_4_n_0\,
      new_byte_reg_0 => new_byte_reg_n_0,
      reset_btn_IBUF => reset_btn_IBUF,
      scl_in_IBUF => scl_in_IBUF,
      sda_in_IBUF => sda_in_IBUF,
      temp_sda_reg => temp_sda_reg_n_0,
      temp_sig2 => temp_sig2,
      temp_sig2_reg => RST_BTN_n_2
    );
\bit_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \bit_cnt_reg_n_0_[0]\,
      O => \bit_cnt[0]_i_1_n_0\
    );
\bit_cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(10),
      O => \bit_cnt[10]_i_1_n_0\
    );
\bit_cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(11),
      O => \bit_cnt[11]_i_1_n_0\
    );
\bit_cnt[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(12),
      O => \bit_cnt[12]_i_1_n_0\
    );
\bit_cnt[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[12]\,
      O => \bit_cnt[12]_i_3_n_0\
    );
\bit_cnt[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[11]\,
      O => \bit_cnt[12]_i_4_n_0\
    );
\bit_cnt[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[10]\,
      O => \bit_cnt[12]_i_5_n_0\
    );
\bit_cnt[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[9]\,
      O => \bit_cnt[12]_i_6_n_0\
    );
\bit_cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(13),
      O => \bit_cnt[13]_i_1_n_0\
    );
\bit_cnt[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(14),
      O => \bit_cnt[14]_i_1_n_0\
    );
\bit_cnt[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(15),
      O => \bit_cnt[15]_i_1_n_0\
    );
\bit_cnt[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(16),
      O => \bit_cnt[16]_i_1_n_0\
    );
\bit_cnt[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[16]\,
      O => \bit_cnt[16]_i_3_n_0\
    );
\bit_cnt[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[15]\,
      O => \bit_cnt[16]_i_4_n_0\
    );
\bit_cnt[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[14]\,
      O => \bit_cnt[16]_i_5_n_0\
    );
\bit_cnt[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[13]\,
      O => \bit_cnt[16]_i_6_n_0\
    );
\bit_cnt[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(17),
      O => \bit_cnt[17]_i_1_n_0\
    );
\bit_cnt[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(18),
      O => \bit_cnt[18]_i_1_n_0\
    );
\bit_cnt[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(19),
      O => \bit_cnt[19]_i_1_n_0\
    );
\bit_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(1),
      O => \bit_cnt[1]_i_1_n_0\
    );
\bit_cnt[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(20),
      O => \bit_cnt[20]_i_1_n_0\
    );
\bit_cnt[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[20]\,
      O => \bit_cnt[20]_i_3_n_0\
    );
\bit_cnt[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[19]\,
      O => \bit_cnt[20]_i_4_n_0\
    );
\bit_cnt[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[18]\,
      O => \bit_cnt[20]_i_5_n_0\
    );
\bit_cnt[20]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[17]\,
      O => \bit_cnt[20]_i_6_n_0\
    );
\bit_cnt[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(21),
      O => \bit_cnt[21]_i_1_n_0\
    );
\bit_cnt[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(22),
      O => \bit_cnt[22]_i_1_n_0\
    );
\bit_cnt[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(23),
      O => \bit_cnt[23]_i_1_n_0\
    );
\bit_cnt[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(24),
      O => \bit_cnt[24]_i_1_n_0\
    );
\bit_cnt[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[24]\,
      O => \bit_cnt[24]_i_3_n_0\
    );
\bit_cnt[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[23]\,
      O => \bit_cnt[24]_i_4_n_0\
    );
\bit_cnt[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[22]\,
      O => \bit_cnt[24]_i_5_n_0\
    );
\bit_cnt[24]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[21]\,
      O => \bit_cnt[24]_i_6_n_0\
    );
\bit_cnt[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(25),
      O => \bit_cnt[25]_i_1_n_0\
    );
\bit_cnt[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(26),
      O => \bit_cnt[26]_i_1_n_0\
    );
\bit_cnt[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(27),
      O => \bit_cnt[27]_i_1_n_0\
    );
\bit_cnt[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(28),
      O => \bit_cnt[28]_i_1_n_0\
    );
\bit_cnt[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[28]\,
      O => \bit_cnt[28]_i_3_n_0\
    );
\bit_cnt[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[27]\,
      O => \bit_cnt[28]_i_4_n_0\
    );
\bit_cnt[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[26]\,
      O => \bit_cnt[28]_i_5_n_0\
    );
\bit_cnt[28]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[25]\,
      O => \bit_cnt[28]_i_6_n_0\
    );
\bit_cnt[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(29),
      O => \bit_cnt[29]_i_1_n_0\
    );
\bit_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(2),
      O => \bit_cnt[2]_i_1_n_0\
    );
\bit_cnt[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => temp_sda,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      O => bit_cnt
    );
\bit_cnt[30]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(30),
      O => \bit_cnt[30]_i_2_n_0\
    );
\bit_cnt[30]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[30]\,
      O => \bit_cnt[30]_i_4_n_0\
    );
\bit_cnt[30]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[29]\,
      O => \bit_cnt[30]_i_5_n_0\
    );
\bit_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEFE"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => temp_sda,
      I3 => \FSM_onehot_state_reg_n_0_[5]\,
      I4 => in12(3),
      O => \bit_cnt[3]_i_1_n_0\
    );
\bit_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(4),
      O => \bit_cnt[4]_i_1_n_0\
    );
\bit_cnt[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[4]\,
      O => \bit_cnt[4]_i_3_n_0\
    );
\bit_cnt[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[3]\,
      O => \bit_cnt[4]_i_4_n_0\
    );
\bit_cnt[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[2]\,
      O => \bit_cnt[4]_i_5_n_0\
    );
\bit_cnt[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[1]\,
      O => \bit_cnt[4]_i_6_n_0\
    );
\bit_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(5),
      O => \bit_cnt[5]_i_1_n_0\
    );
\bit_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(6),
      O => \bit_cnt[6]_i_1_n_0\
    );
\bit_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(7),
      O => \bit_cnt[7]_i_1_n_0\
    );
\bit_cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(8),
      O => \bit_cnt[8]_i_1_n_0\
    );
\bit_cnt[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[8]\,
      O => \bit_cnt[8]_i_3_n_0\
    );
\bit_cnt[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[7]\,
      O => \bit_cnt[8]_i_4_n_0\
    );
\bit_cnt[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[6]\,
      O => \bit_cnt[8]_i_5_n_0\
    );
\bit_cnt[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \bit_cnt_reg_n_0_[5]\,
      O => \bit_cnt[8]_i_6_n_0\
    );
\bit_cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => in12(9),
      O => \bit_cnt[9]_i_1_n_0\
    );
\bit_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[0]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[0]\,
      R => button_stb
    );
\bit_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[10]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[10]\,
      R => button_stb
    );
\bit_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[11]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[11]\,
      R => button_stb
    );
\bit_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[12]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[12]\,
      R => button_stb
    );
\bit_cnt_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_cnt_reg[8]_i_2_n_0\,
      CO(3) => \bit_cnt_reg[12]_i_2_n_0\,
      CO(2 downto 0) => \NLW_bit_cnt_reg[12]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \bit_cnt_reg_n_0_[12]\,
      DI(2) => \bit_cnt_reg_n_0_[11]\,
      DI(1) => \bit_cnt_reg_n_0_[10]\,
      DI(0) => \bit_cnt_reg_n_0_[9]\,
      O(3 downto 0) => in12(12 downto 9),
      S(3) => \bit_cnt[12]_i_3_n_0\,
      S(2) => \bit_cnt[12]_i_4_n_0\,
      S(1) => \bit_cnt[12]_i_5_n_0\,
      S(0) => \bit_cnt[12]_i_6_n_0\
    );
\bit_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[13]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[13]\,
      R => button_stb
    );
\bit_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[14]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[14]\,
      R => button_stb
    );
\bit_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[15]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[15]\,
      R => button_stb
    );
\bit_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[16]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[16]\,
      R => button_stb
    );
\bit_cnt_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_cnt_reg[12]_i_2_n_0\,
      CO(3) => \bit_cnt_reg[16]_i_2_n_0\,
      CO(2 downto 0) => \NLW_bit_cnt_reg[16]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \bit_cnt_reg_n_0_[16]\,
      DI(2) => \bit_cnt_reg_n_0_[15]\,
      DI(1) => \bit_cnt_reg_n_0_[14]\,
      DI(0) => \bit_cnt_reg_n_0_[13]\,
      O(3 downto 0) => in12(16 downto 13),
      S(3) => \bit_cnt[16]_i_3_n_0\,
      S(2) => \bit_cnt[16]_i_4_n_0\,
      S(1) => \bit_cnt[16]_i_5_n_0\,
      S(0) => \bit_cnt[16]_i_6_n_0\
    );
\bit_cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[17]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[17]\,
      R => button_stb
    );
\bit_cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[18]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[18]\,
      R => button_stb
    );
\bit_cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[19]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[19]\,
      R => button_stb
    );
\bit_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[1]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[1]\,
      R => button_stb
    );
\bit_cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[20]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[20]\,
      R => button_stb
    );
\bit_cnt_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_cnt_reg[16]_i_2_n_0\,
      CO(3) => \bit_cnt_reg[20]_i_2_n_0\,
      CO(2 downto 0) => \NLW_bit_cnt_reg[20]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \bit_cnt_reg_n_0_[20]\,
      DI(2) => \bit_cnt_reg_n_0_[19]\,
      DI(1) => \bit_cnt_reg_n_0_[18]\,
      DI(0) => \bit_cnt_reg_n_0_[17]\,
      O(3 downto 0) => in12(20 downto 17),
      S(3) => \bit_cnt[20]_i_3_n_0\,
      S(2) => \bit_cnt[20]_i_4_n_0\,
      S(1) => \bit_cnt[20]_i_5_n_0\,
      S(0) => \bit_cnt[20]_i_6_n_0\
    );
\bit_cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[21]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[21]\,
      R => button_stb
    );
\bit_cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[22]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[22]\,
      R => button_stb
    );
\bit_cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[23]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[23]\,
      R => button_stb
    );
\bit_cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[24]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[24]\,
      R => button_stb
    );
\bit_cnt_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_cnt_reg[20]_i_2_n_0\,
      CO(3) => \bit_cnt_reg[24]_i_2_n_0\,
      CO(2 downto 0) => \NLW_bit_cnt_reg[24]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \bit_cnt_reg_n_0_[24]\,
      DI(2) => \bit_cnt_reg_n_0_[23]\,
      DI(1) => \bit_cnt_reg_n_0_[22]\,
      DI(0) => \bit_cnt_reg_n_0_[21]\,
      O(3 downto 0) => in12(24 downto 21),
      S(3) => \bit_cnt[24]_i_3_n_0\,
      S(2) => \bit_cnt[24]_i_4_n_0\,
      S(1) => \bit_cnt[24]_i_5_n_0\,
      S(0) => \bit_cnt[24]_i_6_n_0\
    );
\bit_cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[25]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[25]\,
      R => button_stb
    );
\bit_cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[26]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[26]\,
      R => button_stb
    );
\bit_cnt_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[27]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[27]\,
      R => button_stb
    );
\bit_cnt_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[28]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[28]\,
      R => button_stb
    );
\bit_cnt_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_cnt_reg[24]_i_2_n_0\,
      CO(3) => \bit_cnt_reg[28]_i_2_n_0\,
      CO(2 downto 0) => \NLW_bit_cnt_reg[28]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \bit_cnt_reg_n_0_[28]\,
      DI(2) => \bit_cnt_reg_n_0_[27]\,
      DI(1) => \bit_cnt_reg_n_0_[26]\,
      DI(0) => \bit_cnt_reg_n_0_[25]\,
      O(3 downto 0) => in12(28 downto 25),
      S(3) => \bit_cnt[28]_i_3_n_0\,
      S(2) => \bit_cnt[28]_i_4_n_0\,
      S(1) => \bit_cnt[28]_i_5_n_0\,
      S(0) => \bit_cnt[28]_i_6_n_0\
    );
\bit_cnt_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[29]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[29]\,
      R => button_stb
    );
\bit_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[2]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[2]\,
      R => button_stb
    );
\bit_cnt_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[30]_i_2_n_0\,
      Q => \bit_cnt_reg_n_0_[30]\,
      R => button_stb
    );
\bit_cnt_reg[30]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_cnt_reg[28]_i_2_n_0\,
      CO(3 downto 0) => \NLW_bit_cnt_reg[30]_i_3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \bit_cnt_reg_n_0_[29]\,
      O(3 downto 2) => \NLW_bit_cnt_reg[30]_i_3_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => in12(30 downto 29),
      S(3 downto 2) => B"00",
      S(1) => \bit_cnt[30]_i_4_n_0\,
      S(0) => \bit_cnt[30]_i_5_n_0\
    );
\bit_cnt_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[3]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[3]\,
      S => button_stb
    );
\bit_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[4]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[4]\,
      R => button_stb
    );
\bit_cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \bit_cnt_reg[4]_i_2_n_0\,
      CO(2 downto 0) => \NLW_bit_cnt_reg[4]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \bit_cnt_reg_n_0_[0]\,
      DI(3) => \bit_cnt_reg_n_0_[4]\,
      DI(2) => \bit_cnt_reg_n_0_[3]\,
      DI(1) => \bit_cnt_reg_n_0_[2]\,
      DI(0) => \bit_cnt_reg_n_0_[1]\,
      O(3 downto 0) => in12(4 downto 1),
      S(3) => \bit_cnt[4]_i_3_n_0\,
      S(2) => \bit_cnt[4]_i_4_n_0\,
      S(1) => \bit_cnt[4]_i_5_n_0\,
      S(0) => \bit_cnt[4]_i_6_n_0\
    );
\bit_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[5]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[5]\,
      R => button_stb
    );
\bit_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[6]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[6]\,
      R => button_stb
    );
\bit_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[7]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[7]\,
      R => button_stb
    );
\bit_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[8]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[8]\,
      R => button_stb
    );
\bit_cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \bit_cnt_reg[4]_i_2_n_0\,
      CO(3) => \bit_cnt_reg[8]_i_2_n_0\,
      CO(2 downto 0) => \NLW_bit_cnt_reg[8]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \bit_cnt_reg_n_0_[8]\,
      DI(2) => \bit_cnt_reg_n_0_[7]\,
      DI(1) => \bit_cnt_reg_n_0_[6]\,
      DI(0) => \bit_cnt_reg_n_0_[5]\,
      O(3 downto 0) => in12(8 downto 5),
      S(3) => \bit_cnt[8]_i_3_n_0\,
      S(2) => \bit_cnt[8]_i_4_n_0\,
      S(1) => \bit_cnt[8]_i_5_n_0\,
      S(0) => \bit_cnt[8]_i_6_n_0\
    );
\bit_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => bit_cnt,
      D => \bit_cnt[9]_i_1_n_0\,
      Q => \bit_cnt_reg_n_0_[9]\,
      R => button_stb
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\led_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(0),
      O => led(0)
    );
\led_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(10),
      O => led(10)
    );
\led_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(11),
      O => led(11)
    );
\led_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(12),
      O => led(12)
    );
\led_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(13),
      O => led(13)
    );
\led_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(14),
      O => led(14)
    );
\led_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(15),
      O => led(15)
    );
\led_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(1),
      O => led(1)
    );
\led_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(2),
      O => led(2)
    );
\led_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(3),
      O => led(3)
    );
\led_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(4),
      O => led(4)
    );
\led_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(5),
      O => led(5)
    );
\led_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(6),
      O => led(6)
    );
\led_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(7),
      O => led(7)
    );
\led_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(8),
      O => led(8)
    );
\led_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => led_OBUF(9),
      O => led(9)
    );
\led_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pack_cnt_reg(0),
      Q => led_OBUF(0),
      R => button_stb
    );
\led_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pack_cnt_reg(10),
      Q => led_OBUF(10),
      R => button_stb
    );
\led_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pack_cnt_reg(11),
      Q => led_OBUF(11),
      R => button_stb
    );
\led_out_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pack_cnt_reg(12),
      Q => led_OBUF(12),
      R => button_stb
    );
\led_out_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pack_cnt_reg(13),
      Q => led_OBUF(13),
      R => button_stb
    );
\led_out_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pack_cnt_reg(14),
      Q => led_OBUF(14),
      R => button_stb
    );
\led_out_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pack_cnt_reg(15),
      Q => led_OBUF(15),
      R => button_stb
    );
\led_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pack_cnt_reg(1),
      Q => led_OBUF(1),
      R => button_stb
    );
\led_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pack_cnt_reg(2),
      Q => led_OBUF(2),
      R => button_stb
    );
\led_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pack_cnt_reg(3),
      Q => led_OBUF(3),
      R => button_stb
    );
\led_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pack_cnt_reg(4),
      Q => led_OBUF(4),
      R => button_stb
    );
\led_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pack_cnt_reg(5),
      Q => led_OBUF(5),
      R => button_stb
    );
\led_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pack_cnt_reg(6),
      Q => led_OBUF(6),
      R => button_stb
    );
\led_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pack_cnt_reg(7),
      Q => led_OBUF(7),
      R => button_stb
    );
\led_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pack_cnt_reg(8),
      Q => led_OBUF(8),
      R => button_stb
    );
\led_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pack_cnt_reg(9),
      Q => led_OBUF(9),
      R => button_stb
    );
new_byte_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => RST_BTN_n_3,
      Q => new_byte_reg_n_0,
      R => '0'
    );
\pack_cnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pack_cnt_reg(0),
      O => \pack_cnt[0]_i_2_n_0\
    );
pack_cnt_en_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DC"
    )
        port map (
      I0 => temp_sda,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => pack_cnt_en_reg_n_0,
      O => pack_cnt_en_i_1_n_0
    );
pack_cnt_en_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => pack_cnt_en_i_1_n_0,
      Q => pack_cnt_en_reg_n_0,
      R => button_stb
    );
\pack_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pack_cnt_en_reg_n_0,
      D => \pack_cnt_reg[0]_i_1_n_7\,
      Q => pack_cnt_reg(0),
      R => button_stb
    );
\pack_cnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \pack_cnt_reg[0]_i_1_n_0\,
      CO(2 downto 0) => \NLW_pack_cnt_reg[0]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \pack_cnt_reg[0]_i_1_n_4\,
      O(2) => \pack_cnt_reg[0]_i_1_n_5\,
      O(1) => \pack_cnt_reg[0]_i_1_n_6\,
      O(0) => \pack_cnt_reg[0]_i_1_n_7\,
      S(3 downto 1) => pack_cnt_reg(3 downto 1),
      S(0) => \pack_cnt[0]_i_2_n_0\
    );
\pack_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pack_cnt_en_reg_n_0,
      D => \pack_cnt_reg[8]_i_1_n_5\,
      Q => pack_cnt_reg(10),
      R => button_stb
    );
\pack_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pack_cnt_en_reg_n_0,
      D => \pack_cnt_reg[8]_i_1_n_4\,
      Q => pack_cnt_reg(11),
      R => button_stb
    );
\pack_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pack_cnt_en_reg_n_0,
      D => \pack_cnt_reg[12]_i_1_n_7\,
      Q => pack_cnt_reg(12),
      R => button_stb
    );
\pack_cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pack_cnt_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_pack_cnt_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pack_cnt_reg[12]_i_1_n_4\,
      O(2) => \pack_cnt_reg[12]_i_1_n_5\,
      O(1) => \pack_cnt_reg[12]_i_1_n_6\,
      O(0) => \pack_cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => pack_cnt_reg(15 downto 12)
    );
\pack_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pack_cnt_en_reg_n_0,
      D => \pack_cnt_reg[12]_i_1_n_6\,
      Q => pack_cnt_reg(13),
      R => button_stb
    );
\pack_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pack_cnt_en_reg_n_0,
      D => \pack_cnt_reg[12]_i_1_n_5\,
      Q => pack_cnt_reg(14),
      R => button_stb
    );
\pack_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pack_cnt_en_reg_n_0,
      D => \pack_cnt_reg[12]_i_1_n_4\,
      Q => pack_cnt_reg(15),
      R => button_stb
    );
\pack_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pack_cnt_en_reg_n_0,
      D => \pack_cnt_reg[0]_i_1_n_6\,
      Q => pack_cnt_reg(1),
      R => button_stb
    );
\pack_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pack_cnt_en_reg_n_0,
      D => \pack_cnt_reg[0]_i_1_n_5\,
      Q => pack_cnt_reg(2),
      R => button_stb
    );
\pack_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pack_cnt_en_reg_n_0,
      D => \pack_cnt_reg[0]_i_1_n_4\,
      Q => pack_cnt_reg(3),
      R => button_stb
    );
\pack_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pack_cnt_en_reg_n_0,
      D => \pack_cnt_reg[4]_i_1_n_7\,
      Q => pack_cnt_reg(4),
      R => button_stb
    );
\pack_cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pack_cnt_reg[0]_i_1_n_0\,
      CO(3) => \pack_cnt_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_pack_cnt_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pack_cnt_reg[4]_i_1_n_4\,
      O(2) => \pack_cnt_reg[4]_i_1_n_5\,
      O(1) => \pack_cnt_reg[4]_i_1_n_6\,
      O(0) => \pack_cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => pack_cnt_reg(7 downto 4)
    );
\pack_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pack_cnt_en_reg_n_0,
      D => \pack_cnt_reg[4]_i_1_n_6\,
      Q => pack_cnt_reg(5),
      R => button_stb
    );
\pack_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pack_cnt_en_reg_n_0,
      D => \pack_cnt_reg[4]_i_1_n_5\,
      Q => pack_cnt_reg(6),
      R => button_stb
    );
\pack_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pack_cnt_en_reg_n_0,
      D => \pack_cnt_reg[4]_i_1_n_4\,
      Q => pack_cnt_reg(7),
      R => button_stb
    );
\pack_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pack_cnt_en_reg_n_0,
      D => \pack_cnt_reg[8]_i_1_n_7\,
      Q => pack_cnt_reg(8),
      R => button_stb
    );
\pack_cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \pack_cnt_reg[4]_i_1_n_0\,
      CO(3) => \pack_cnt_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_pack_cnt_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \pack_cnt_reg[8]_i_1_n_4\,
      O(2) => \pack_cnt_reg[8]_i_1_n_5\,
      O(1) => \pack_cnt_reg[8]_i_1_n_6\,
      O(0) => \pack_cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => pack_cnt_reg(11 downto 8)
    );
\pack_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => pack_cnt_en_reg_n_0,
      D => \pack_cnt_reg[8]_i_1_n_6\,
      Q => pack_cnt_reg(9),
      R => button_stb
    );
read_now_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[4]\,
      I1 => read_now_reg_n_0,
      I2 => \FSM_onehot_next_state[7]_i_4_n_0\,
      O => read_now_i_1_n_0
    );
read_now_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => read_now_i_1_n_0,
      Q => read_now_reg_n_0,
      R => button_stb
    );
reset_btn_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset_btn,
      O => reset_btn_IBUF
    );
scl_in_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => scl_in,
      O => scl_in_IBUF
    );
sda_in_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => sda_in,
      O => sda_in_IBUF
    );
temp_sda_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => RST_BTN_n_2,
      Q => temp_sda_reg_n_0,
      R => '0'
    );
temp_sig1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => sda_in_IBUF,
      Q => temp_sig1,
      R => '0'
    );
temp_sig2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => scl_in_IBUF,
      Q => temp_sig2,
      R => '0'
    );
end STRUCTURE;
