## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
# create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
# create_clock -add -name sys_clk_pin -period 8.5 -waveform {0 4.25} [get_ports clk]
# create_clock -add -name sys_clk_pin -period 7.9 -waveform {0 3.95} [get_ports clk]
# create_clock -add -name sys_clk_pin -period 7.6 -waveform {0 3.8} [get_ports clk]
# create_clock -add -name sys_clk_pin -period 7.3 -waveform {0 3.65} [get_ports clk]
create_clock -add -name sys_clk_pin -period 7.4 -waveform {0 3.7} [get_ports clk]
