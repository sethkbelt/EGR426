----------------------------------------------------------------------------------
-- Title: main_rps.vhd
-- Author: Seth Konynenbelt
-- Created: January 20, 2023
-- Description: Main Rock, Paper, Scissors main logic block. You must use this
-- decoder to interface betwen switches, logic, and decoders
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

----------------------------------------------------------------------------------
ENTITY main_rps IS
    PORT (
        clk, reset_main : IN STD_LOGIC;
        switch : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        switch_flag : OUT STD_LOGIC;
        user_rps : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END main_rps;
----------------------------------------------------------------------------------

ARCHITECTURE Behavioral OF main_rps IS

    SIGNAL switch_previous : STD_LOGIC_VECTOR (4 DOWNTO 0);

BEGIN
    PROCESS (clk, switch, reset_main, switch_previous)
    BEGIN
        IF (rising_edge(clk)) THEN
            IF (reset_main = '1') THEN
                user_rps <= "1110";
                switch_flag <= '0';
            ELSE
                -- if any switch is going from  0-->1, send flag to rps logic block
                IF (switch /= switch_previous AND switch /= "00000") THEN
                    switch_flag <= '1';
                ELSE
                    switch_flag <= '0';
                END IF;
                CASE switch IS
                    WHEN "00001" => user_rps <= "1010"; -- Rock choice
                    WHEN "00010" => user_rps <= "1011"; -- Paper choice
                    WHEN "00100" => user_rps <= "1100"; -- Scissors choice
                    WHEN "01000" => user_rps <= "1101"; -- Lizard choice
                    WHEN "10000" => user_rps <= "1110"; -- Spock choice
                    WHEN OTHERS =>
                        user_rps <= "1111"; -- off
                END CASE;
            END IF;
            switch_previous <= switch;

        END IF;
    END PROCESS;
END Behavioral;