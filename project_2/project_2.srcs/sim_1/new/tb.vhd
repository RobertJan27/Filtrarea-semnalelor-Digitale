entity tb is
port(y : out integer);
end entity;

library ieee;
use ieee.math_real.uniform;
use ieee.math_real.floor;

architecture sim of tb is
begin
  process is
    variable seed1 : positive;
    variable seed2 : positive;
    variable x : real;
  begin
    seed2 := 1;
    for n in 1 to 10 loop
      seed1:=n;
      uniform(seed1, seed2, x);
      y <= integer(floor(x * 1024.0));
    end loop;
    wait;
  end process;
end architecture;