@echo off
set xv_path=D:\\Xilinx_vivado_hl_webpack\\Vivado\\2016.4\\bin
call %xv_path%/xsim Wavelength_behav -key {Behavioral:sim_1:Functional:Wavelength} -tclbatch Wavelength.tcl -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
