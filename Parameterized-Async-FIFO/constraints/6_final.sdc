###############################################################################
# Created by write_sdc
###############################################################################
current_design fifo
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name wr_clk -period 20.0000 [get_ports {wr_clk}]
set_propagated_clock [get_clocks {wr_clk}]
create_clock -name rd_clk -period 20.0000 [get_ports {rd_clk}]
set_propagated_clock [get_clocks {rd_clk}]
set_clock_groups -name group1 -asynchronous \
 -group [get_clocks {rd_clk}]\
 -group [get_clocks {wr_clk}]
set_input_delay 2.0000 -clock [get_clocks {rd_clk}] -add_delay [get_ports {rd_en}]
set_input_delay 2.0000 -clock [get_clocks {rd_clk}] -add_delay [get_ports {rd_rst}]
set_input_delay 2.0000 -clock [get_clocks {wr_clk}] -add_delay [get_ports {w_data[0]}]
set_input_delay 2.0000 -clock [get_clocks {wr_clk}] -add_delay [get_ports {w_data[1]}]
set_input_delay 2.0000 -clock [get_clocks {wr_clk}] -add_delay [get_ports {w_data[2]}]
set_input_delay 2.0000 -clock [get_clocks {wr_clk}] -add_delay [get_ports {w_data[3]}]
set_input_delay 2.0000 -clock [get_clocks {wr_clk}] -add_delay [get_ports {w_data[4]}]
set_input_delay 2.0000 -clock [get_clocks {wr_clk}] -add_delay [get_ports {w_data[5]}]
set_input_delay 2.0000 -clock [get_clocks {wr_clk}] -add_delay [get_ports {wr_en}]
set_input_delay 2.0000 -clock [get_clocks {wr_clk}] -add_delay [get_ports {wr_rst}]
set_output_delay 2.0000 -clock [get_clocks {rd_clk}] -add_delay [get_ports {r_data[0]}]
set_output_delay 2.0000 -clock [get_clocks {rd_clk}] -add_delay [get_ports {r_data[1]}]
set_output_delay 2.0000 -clock [get_clocks {rd_clk}] -add_delay [get_ports {r_data[2]}]
set_output_delay 2.0000 -clock [get_clocks {rd_clk}] -add_delay [get_ports {r_data[3]}]
set_output_delay 2.0000 -clock [get_clocks {rd_clk}] -add_delay [get_ports {r_data[4]}]
set_output_delay 2.0000 -clock [get_clocks {rd_clk}] -add_delay [get_ports {r_data[5]}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
