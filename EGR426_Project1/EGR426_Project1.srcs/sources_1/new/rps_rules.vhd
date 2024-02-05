----------------------------------------------------------------------------------
-- Title: rps_rules.vhd
-- Author: Seth Konynenbelt
-- Created: January 20, 2023
-- Description: Main Rock Paper Scissors Logic
----------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

----------------------------------------------------------------------------------
ENTITY rps_rules IS
    PORT (
        clk, reset : IN STD_LOGIC;
        user_rps : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        comp_rps : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        switch_flag : IN STD_LOGIC;
        led0 : OUT STD_LOGIC;
        led1 : OUT STD_LOGIC;
        win_count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0); -- TODO if >9
        tie_count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        loss_count : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END rps_rules;
----------------------------------------------------------------------------------

ARCHITECTURE Behavioral OF rps_rules IS

    SIGNAL win_count_temp : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
    SIGNAL tie_count_temp : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";
    SIGNAL loss_count_temp : STD_LOGIC_VECTOR(3 DOWNTO 0) := "0000";

BEGIN
    PROCESS (switch_flag, clk, reset, user_rps, comp_rps)
    BEGIN
        IF (reset = '1') THEN
            led1 <= '0';
            led0 <= '0';
            win_count_temp <= "0000";
            loss_count_temp <= "0000";
            tie_count_temp <= "0000";
            --ELSE
        ELSIF (rising_edge(clk)) THEN
            CASE user_rps IS
                WHEN "1010" => -- Rock choice
                    IF (comp_rps = "1010") THEN -- Rock_u ties rock_c
                        led1 <= '0';
                        led0 <= '0';
                        IF (switch_flag = '1') THEN
                            win_count_temp <= win_count_temp;
                            loss_count_temp <= loss_count_temp;
                            tie_count_temp <= tie_count_temp + 1;
                        END IF;

                    ELSIF (comp_rps = "1011") THEN -- Rock_u loses paper_c
                        led1 <= '0';
                        led0 <= '1';
                        IF (switch_flag = '1') THEN
                            win_count_temp <= win_count_temp;
                            loss_count_temp <= loss_count_temp + 1;
                            tie_count_temp <= tie_count_temp;
                        END IF;

                    ELSIF (comp_rps = "1100") THEN -- Rock_u wins scissors_c
                        led1 <= '1';
                        led0 <= '0';
                        IF (switch_flag = '1') THEN
                            win_count_temp <= win_count_temp + 1;
                            loss_count_temp <= loss_count_temp;
                            tie_count_temp <= tie_count_temp;
                        END IF;

                    ELSIF (comp_rps = "1101") THEN -- Rock_u wins lizard_c
                        led1 <= '1';
                        led0 <= '0';
                        IF (switch_flag = '1') THEN
                            win_count_temp <= win_count_temp + 1;
                            loss_count_temp <= loss_count_temp;
                            tie_count_temp <= tie_count_temp;
                        END IF;

                    ELSIF (comp_rps = "1110") THEN -- Rock_u loses spock_c
                        led1 <= '0';
                        led0 <= '1';
                        IF (switch_flag = '1') THEN
                            win_count_temp <= win_count_temp;
                            loss_count_temp <= loss_count_temp + 1;
                            tie_count_temp <= tie_count_temp;
                        END IF;
                    END IF;
                    
                    ----------------------------------------------------------------------------------
                WHEN "1011" => -- Paper choice
                    IF (comp_rps = "1010") THEN -- Paper_u beats rock_c
                        led1 <= '1';
                        led0 <= '0';
                        IF (switch_flag = '1') THEN
                            win_count_temp <= win_count_temp + 1;
                            loss_count_temp <= loss_count_temp;
                            tie_count_temp <= tie_count_temp;
                        END IF;

                    ELSIF (comp_rps = "1011") THEN -- Paper_u ties paper_c
                        led1 <= '0';
                        led0 <= '0';
                        IF (switch_flag = '1') THEN
                            win_count_temp <= win_count_temp;
                            loss_count_temp <= loss_count_temp;
                            tie_count_temp <= tie_count_temp + 1;
                        END IF;

                    ELSIF (comp_rps = "1100") THEN -- Paper_u loses scissors_c
                        led1 <= '0';
                        led0 <= '1';
                        IF (switch_flag = '1') THEN
                            win_count_temp <= win_count_temp;
                            loss_count_temp <= loss_count_temp + 1;
                            tie_count_temp <= tie_count_temp;
                        END IF;

                    ELSIF (comp_rps = "1101") THEN -- Paper_u loses lizard_c
                        led1 <= '0';
                        led0 <= '1';
                        IF (switch_flag = '1') THEN
                            win_count_temp <= win_count_temp;
                            loss_count_temp <= loss_count_temp + 1;
                            tie_count_temp <= tie_count_temp;
                        END IF;

                    ELSIF (comp_rps = "1110") THEN -- Rock_u wins spock_c
                        led1 <= '1';
                        led0 <= '0';
                        IF (switch_flag = '1') THEN
                            win_count_temp <= win_count_temp + 1;
                            loss_count_temp <= loss_count_temp;
                            tie_count_temp <= tie_count_temp;
                        END IF;
                    END IF;
                    
                    ----------------------------------------------------------------------------------
                WHEN "1100" => -- Scissors choice
                    IF (comp_rps = "1010") THEN -- scissors_u loses rock_c
                        led1 <= '0';
                        led0 <= '1';
                        IF (switch_flag = '1') THEN
                            win_count_temp <= win_count_temp;
                            loss_count_temp <= loss_count_temp + 1;
                            tie_count_temp <= tie_count_temp;
                        END IF;

                    ELSIF (comp_rps = "1011") THEN -- scissors_u beats paper_c
                        led1 <= '1';
                        led0 <= '0';
                        IF (switch_flag = '1') THEN
                            win_count_temp <= win_count_temp + 1;
                            loss_count_temp <= loss_count_temp;
                            tie_count_temp <= tie_count_temp;
                        END IF;

                    ELSIF (comp_rps = "1100") THEN -- scissors_u ties scissors_c
                        led1 <= '0';
                        led0 <= '0';
                        IF (switch_flag = '1') THEN
                            win_count_temp <= win_count_temp;
                            loss_count_temp <= loss_count_temp;
                            tie_count_temp <= tie_count_temp + 1;
                        END IF;

                    ELSIF (comp_rps = "1101") THEN -- scissors_u wins lizard_c
                        led1 <= '1';
                        led0 <= '0';
                        IF (switch_flag = '1') THEN
                            win_count_temp <= win_count_temp + 1;
                            loss_count_temp <= loss_count_temp;
                            tie_count_temp <= tie_count_temp;
                        END IF;

                    ELSIF (comp_rps = "1110") THEN -- scissors_u loses spock_c
                        led1 <= '0';
                        led0 <= '1';
                        IF (switch_flag = '1') THEN
                            win_count_temp <= win_count_temp;
                            loss_count_temp <= loss_count_temp + 1;
                            tie_count_temp <= tie_count_temp;
                        END IF;
                    END IF;
                    
                    ----------------------------------------------------------------------------------
                WHEN "1101" => -- Lizard choice
                    IF (comp_rps = "1010") THEN -- lizard_u loses rock_c
                        led1 <= '0';
                        led0 <= '1';
                        IF (switch_flag = '1') THEN
                            win_count_temp <= win_count_temp;
                            loss_count_temp <= loss_count_temp + 1;
                            tie_count_temp <= tie_count_temp;
                        END IF;

                    ELSIF (comp_rps = "1011") THEN -- lizard_u wins paper_c
                        led1 <= '1';
                        led0 <= '0';
                        IF (switch_flag = '1') THEN
                            win_count_temp <= win_count_temp + 1;
                            loss_count_temp <= loss_count_temp;
                            tie_count_temp <= tie_count_temp;
                        END IF;

                    ELSIF (comp_rps = "1100") THEN -- lizard_u loses scissors_c
                        led1 <= '0';
                        led0 <= '1';
                        IF (switch_flag = '1') THEN
                            win_count_temp <= win_count_temp;
                            loss_count_temp <= loss_count_temp + 1;
                            tie_count_temp <= tie_count_temp;
                        END IF;

                    ELSIF (comp_rps = "1101") THEN -- lizard_u ties lizard_c
                        led1 <= '0';
                        led0 <= '0';
                        IF (switch_flag = '1') THEN
                            win_count_temp <= win_count_temp;
                            loss_count_temp <= loss_count_temp;
                            tie_count_temp <= tie_count_temp + 1;
                        END IF;

                    ELSIF (comp_rps = "1110") THEN -- lizard_u win spock_c
                        led1 <= '1';
                        led0 <= '0';
                        IF (switch_flag = '1') THEN
                            win_count_temp <= win_count_temp + 1;
                            loss_count_temp <= loss_count_temp;
                            tie_count_temp <= tie_count_temp;
                        END IF;
                    END IF;
                    
                    ----------------------------------------------------------------------------------
                WHEN "1110" => -- Spock choice
                    IF (comp_rps = "1010") THEN -- spock_u beats rock_c
                        led1 <= '1';
                        led0 <= '0';
                        IF (switch_flag = '1') THEN
                            win_count_temp <= win_count_temp + 1;
                            loss_count_temp <= loss_count_temp;
                            tie_count_temp <= tie_count_temp;
                        END IF;

                    ELSIF (comp_rps = "1011") THEN -- spock_u loses paper_c
                        led1 <= '0';
                        led0 <= '1';
                        IF (switch_flag = '1') THEN
                            win_count_temp <= win_count_temp;
                            loss_count_temp <= loss_count_temp + 1;
                            tie_count_temp <= tie_count_temp;
                        END IF;

                    ELSIF (comp_rps = "1100") THEN -- spock_u beats scissors_c
                        led1 <= '1';
                        led0 <= '0';
                        IF (switch_flag = '1') THEN
                            win_count_temp <= win_count_temp + 1;
                            loss_count_temp <= loss_count_temp;
                            tie_count_temp <= tie_count_temp;
                        END IF;

                    ELSIF (comp_rps = "1101") THEN -- spock_u loses lizard_c
                        led1 <= '0';
                        led0 <= '1';
                        IF (switch_flag = '1') THEN
                            win_count_temp <= win_count_temp;
                            loss_count_temp <= loss_count_temp + 1;
                            tie_count_temp <= tie_count_temp;
                        END IF;

                    ELSIF (comp_rps = "1110") THEN -- spock_u ties spock_c
                        led1 <= '0';
                        led0 <= '0';
                        IF (switch_flag = '1') THEN
                            win_count_temp <= win_count_temp;
                            loss_count_temp <= loss_count_temp;
                            tie_count_temp <= tie_count_temp + 1;
                        END IF;
                    END IF;
                    
                    ----------------------------------------------------------------------------------                    
                WHEN "0000" => -- none on
                    led1 <= '0';
                    led0 <= '0';
                    IF (switch_flag = '1') THEN
                        win_count_temp <= win_count_temp;
                        loss_count_temp <= loss_count_temp;
                        tie_count_temp <= tie_count_temp;
                    END IF;

                WHEN OTHERS => -- all other choices
                    led1 <= '0';
                    led0 <= '0';
                    IF (switch_flag = '1') THEN
                        win_count_temp <= win_count_temp;
                        loss_count_temp <= loss_count_temp;
                        tie_count_temp <= tie_count_temp;
                    END IF;

            END CASE;
        END IF;
    END PROCESS;

    win_count <= win_count_temp;
    loss_count <= loss_count_temp;
    tie_count <= tie_count_temp;

END Behavioral;