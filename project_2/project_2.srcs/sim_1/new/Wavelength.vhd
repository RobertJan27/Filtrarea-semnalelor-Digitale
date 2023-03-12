----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12/04/2022 08:24:42 PM
-- Design Name: 
-- Module Name: Wavelength - Behavioral
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
use IEEE.math_real.all;


entity Wavelength is
--Port ( );
end Wavelength;

architecture Behavioral of Wavelength is


impure function rand_int(min_val, max_val : integer) return integer is
  variable r : real;
  variable seed1 : positive;
  variable seed2 : positive;
begin
  seed1:=min_val;
  seed2:=max_val;
  uniform(seed1, seed2, r);
  return integer(
    round(r * real(max_val - min_val + 1) + real(min_val) - 0.5));
end function;

type Arr is array (0 to 14) of integer;
signal intrari : Arr:=(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
signal iesiri : Arr:=(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

signal intrari2 : Arr:=(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
signal iesiri2 : Arr:=(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

begin
process(intrari)
begin
inceput: for k in 0 to 14 loop
      intrari(k)<=rand_int(k*22,1024-(k*41));
end loop inceput;

sfarsit: for k in 2 to 14 loop
        iesiri(k)<=intrari(k)/2 + intrari(k-1)*10/7 + intrari(k-2)*3/2;
        
end loop sfarsit;
iesiri(1)<=intrari(1)*10/7 + intrari(0)*3/2;
iesiri(0)<=intrari(0)*3/2;

end process;


process(intrari2)
begin
inceput: for k in 0 to 14 loop
      intrari2(k)<=rand_int(k*12,1004-(k*53));
end loop inceput;

sfarsit: for k in 2 to 14 loop
        iesiri2(k)<=intrari2(k)/3 - intrari2(k-1)*3/2 + intrari2(k-2)*2;
        
end loop sfarsit;
iesiri2(1)<=-intrari2(1)*3/2 + intrari2(0)*2;
iesiri2(0)<=intrari2(0)*2;

end process;



end Behavioral;
