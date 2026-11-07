create_clock -name wr_clk -period 20 [get_ports wr_clk]
create_clock -name rd_clk -period 20 [get_ports rd_clk]

set_clock_groups -asynchronous \
    -group [get_clocks wr_clk] \
    -group [get_clocks rd_clk]

set_input_delay 2 -clock wr_clk [get_ports {w_data[*] wr_en wr_rst}]
set_input_delay 2 -clock rd_clk [get_ports {rd_en rd_rst}]

set_output_delay 2 -clock rd_clk [get_ports {r_data[*]}]
