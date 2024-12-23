----------------------------------------------------------------------------------
-- Company: bupt
-- Engineer: wangwanting
-- 
-- Create Date: 2023/05/26 16:40:46
-- Design Name: wangwanting
-- Module Name: counter_up - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
entity UP_COUNTER is
    Port ( clk: in std_logic; -- clock input
           reset: in std_logic; -- reset input 
           counter: out std_logic_vector(3 downto 0) -- output 4-bit counter
     );
end UP_COUNTER;

architecture Behavioral of UP_COUNTER is
signal counter_up: std_logic_vector(3 downto 0):=x"f";
begin
-- up counter
process(clk)
begin
if(rising_edge(clk)) then
    if(reset='1') then
         counter_up <= x"f";
    else
        counter_up <= counter_up + x"1";
    end if;
 end if;
end process;
 
 counter <= counter_up;

end Behavioral;
