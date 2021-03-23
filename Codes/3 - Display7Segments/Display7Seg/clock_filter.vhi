
-- VHDL Instantiation Created from source file clock_filter.vhd -- 20:00:49 02/24/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT clock_filter
	PORT(
		clock_in : IN std_logic;
		reset_n : IN std_logic;          
		clock_out : OUT std_logic
		);
	END COMPONENT;

	Inst_clock_filter: clock_filter PORT MAP(
		clock_in => ,
		reset_n => ,
		clock_out => 
	);


