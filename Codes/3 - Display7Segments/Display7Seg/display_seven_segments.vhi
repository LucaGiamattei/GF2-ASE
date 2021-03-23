
-- VHDL Instantiation Created from source file display_seven_segments.vhd -- 20:58:29 02/24/2019
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT display_seven_segments
	PORT(
		clock : IN std_logic;
		reset_n : IN std_logic;
		value : IN std_logic_vector(15 downto 0);
		enable : IN std_logic_vector(3 downto 0);
		dots : IN std_logic_vector(3 downto 0);          
		anodes : OUT std_logic_vector(3 downto 0);
		cathodes : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_display_seven_segments: display_seven_segments PORT MAP(
		clock => ,
		reset_n => ,
		value => ,
		enable => ,
		dots => ,
		anodes => ,
		cathodes => 
	);


