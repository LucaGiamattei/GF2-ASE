
-- VHDL Instantiation Created from source file control_unit.vhd -- 21:07:19 02/24/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT control_unit
	PORT(
		clock : IN std_logic;
		reset_n : IN std_logic;
		load_lsb_value : IN std_logic;
		load_msb_value : IN std_logic;
		load_dots_enable : IN std_logic;
		in_byte : IN std_logic_vector(7 downto 0);          
		value : OUT std_logic_vector(15 downto 0);
		dots : OUT std_logic_vector(3 downto 0);
		enable : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_control_unit: control_unit PORT MAP(
		clock => ,
		reset_n => ,
		load_lsb_value => ,
		load_msb_value => ,
		load_dots_enable => ,
		in_byte => ,
		value => ,
		dots => ,
		enable => 
	);


