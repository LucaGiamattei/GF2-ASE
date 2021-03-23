LIBRARY ieee;
USE ieee.std_logic_1164.ALL;



ENTITY Rs_tb IS
END Rs_tb;

ARCHITECTURE behavior OF Rs_tb IS

COMPONENT Latch_rs
generic (DELAYQT: time := 1.0 ns; DELAYNQT: time := 1.0 ns; DELAY_INERTIAL_NOR: time := 3 ns;DELAY_TRANSPORT_NOR: time := 5 ns);

PORT(
R : IN std_logic;
S : IN std_logic;
Clear : IN std_logic;
preset : IN std_logic;
Q : INOUT std_logic;
NQ : INOUT std_logic
);
END COMPONENT;


--Inputs
signal R : std_logic := '0';
signal S : std_logic := '0';
signal Clear : std_logic := '0';
signal preset : std_logic := '0';

--BiDirs
signal Q : std_logic;
signal NQ : std_logic;
-- No clocks detected in port list. Replace <clock> below with
-- appropriate port name


BEGIN

-- Instantiate the Unit Under Test (UUT)
uut: Latch_rs PORT MAP (
R => R,
S => S,
Clear => Clear,
preset => preset,
Q => Q,
NQ => NQ
);



-- Stimulus process
stim_proc: process
begin

preset <= '0';
Clear <= '1', '0' after 10 ns;

S <= '0', '1' after 30 ns, '0' after 39 ns, '0' after 60 ns;
R <= '0', '0' after 30 ns, '0' after 39 ns, '1' after 60 ns;

wait;
end process;

END;
