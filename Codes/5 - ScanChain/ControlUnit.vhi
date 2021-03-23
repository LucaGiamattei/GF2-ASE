
-- VHDL Instantiation Created from source file ControlUnit.vhd -- 19:36:48 03/15/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT ControlUnit
	PORT(
		reset_n : IN std_logic;
		finished : IN std_logic;
		Handle_zero : IN std_logic;
		start : IN std_logic;
		mode : IN std_logic;
		clock : IN std_logic;          
		control_mode : OUT std_logic;
		control_enable_conter : OUT std_logic;
		control_enable_reg : OUT std_logic;
		control_reset_counter : OUT std_logic;
		control_reset_reg : OUT std_logic;
		control_mux : OUT std_logic;
		stop : OUT std_logic;
		control_enable_count_max_reg : OUT std_logic
		);
	END COMPONENT;

	Inst_ControlUnit: ControlUnit PORT MAP(
		reset_n => ,
		finished => ,
		Handle_zero => ,
		start => ,
		mode => ,
		clock => ,
		control_mode => ,
		control_enable_conter => ,
		control_enable_reg => ,
		control_reset_counter => ,
		control_reset_reg => ,
		control_mux => ,
		stop => ,
		control_enable_count_max_reg => 
	);


