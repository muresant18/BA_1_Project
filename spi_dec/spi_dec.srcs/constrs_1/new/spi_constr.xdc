# The 16 onboard LEDs of Basys3:
set_property IOSTANDARD LVCMOS33 [get_ports {led[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property PACKAGE_PIN U16 [get_ports {led[0]}]
set_property PACKAGE_PIN E19 [get_ports {led[1]}]
set_property PACKAGE_PIN U19 [get_ports {led[2]}]
set_property PACKAGE_PIN V19 [get_ports {led[3]}]
set_property PACKAGE_PIN W18 [get_ports {led[4]}]
set_property PACKAGE_PIN U15 [get_ports {led[5]}]
set_property PACKAGE_PIN U14 [get_ports {led[6]}]
set_property PACKAGE_PIN V14 [get_ports {led[7]}]
set_property PACKAGE_PIN V13 [get_ports {led[8]}]
set_property PACKAGE_PIN V3 [get_ports {led[9]}]
set_property PACKAGE_PIN W3 [get_ports {led[10]}]
set_property PACKAGE_PIN U3 [get_ports {led[11]}]
set_property PACKAGE_PIN P3 [get_ports {led[12]}]
set_property PACKAGE_PIN N3 [get_ports {led[13]}]
set_property PACKAGE_PIN P1 [get_ports {led[14]}]
set_property PACKAGE_PIN L1 [get_ports {led[15]}]

#Reset button:
set_property PACKAGE_PIN U18 [get_ports reset_btn]
set_property IOSTANDARD LVCMOS33 [get_ports reset_btn]

#Generate de system clock 
create_clock -period 10.000 -name clk -waveform {5.000 10.000} [get_ports clk]

#Connect the external signals via PMOD-pins on Basys3 board
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property PACKAGE_PIN W5 [get_ports clk]

set_property IOSTANDARD LVCMOS33 [get_ports sck_in]
set_property PACKAGE_PIN N1 [get_ports sck_in]

set_property IOSTANDARD LVCMOS33 [get_ports miso_in]
set_property PACKAGE_PIN M1 [get_ports miso_in]

set_property IOSTANDARD LVCMOS33 [get_ports mosi_in]
set_property PACKAGE_PIN M3 [get_ports mosi_in]

set_property IOSTANDARD LVCMOS33 [get_ports ss_in]
set_property PACKAGE_PIN K3 [get_ports ss_in]

#Setting recomended by Vivado
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]



# ==== Generated constraints for the ILA debugger =================

# Nets marked to be debugged:

set_property MARK_DEBUG true [get_nets {byte_cnt[1]}]
set_property MARK_DEBUG true [get_nets {byte_cnt[3]}]
set_property MARK_DEBUG true [get_nets {byte_cnt[0]}]
set_property MARK_DEBUG true [get_nets {byte_cnt[2]}]
set_property MARK_DEBUG true [get_nets {byte_cnt[4]}]
set_property MARK_DEBUG true [get_nets {byte_cnt[5]}]
set_property MARK_DEBUG true [get_nets {byte_cnt[6]}]
set_property MARK_DEBUG true [get_nets {byte_cnt[7]}]

set_property MARK_DEBUG true [get_nets {miso_data[0]}]
set_property MARK_DEBUG true [get_nets {miso_data[1]}]
set_property MARK_DEBUG true [get_nets {miso_data[2]}]
set_property MARK_DEBUG true [get_nets {miso_data[3]}]
set_property MARK_DEBUG true [get_nets {miso_data[4]}]
set_property MARK_DEBUG true [get_nets {miso_data[5]}]
set_property MARK_DEBUG true [get_nets {miso_data[6]}]
set_property MARK_DEBUG true [get_nets {miso_data[7]}]

set_property MARK_DEBUG true [get_nets {pck_cnt[0]}]
set_property MARK_DEBUG true [get_nets {pck_cnt[3]}]
set_property MARK_DEBUG true [get_nets {pck_cnt[7]}]
set_property MARK_DEBUG true [get_nets {pck_cnt[10]}]
set_property MARK_DEBUG true [get_nets {pck_cnt[13]}]
set_property MARK_DEBUG true [get_nets {pck_cnt[1]}]
set_property MARK_DEBUG true [get_nets {pck_cnt[2]}]
set_property MARK_DEBUG true [get_nets {pck_cnt[5]}]
set_property MARK_DEBUG true [get_nets {pck_cnt[11]}]
set_property MARK_DEBUG true [get_nets {pck_cnt[14]}]
set_property MARK_DEBUG true [get_nets {pck_cnt[12]}]
set_property MARK_DEBUG true [get_nets {pck_cnt[4]}]
set_property MARK_DEBUG true [get_nets {pck_cnt[6]}]
set_property MARK_DEBUG true [get_nets {pck_cnt[8]}]
set_property MARK_DEBUG true [get_nets {pck_cnt[9]}]

set_property MARK_DEBUG true [get_nets display_data]
set_property MARK_DEBUG true [get_nets miso]
set_property MARK_DEBUG true [get_nets mosi]
set_property MARK_DEBUG true [get_nets sck]
set_property MARK_DEBUG true [get_nets ss]

set_property MARK_DEBUG true [get_nets {mosi_data[0]}]
set_property MARK_DEBUG true [get_nets {mosi_data[1]}]
set_property MARK_DEBUG true [get_nets {mosi_data[2]}]
set_property MARK_DEBUG true [get_nets {mosi_data[3]}]
set_property MARK_DEBUG true [get_nets {mosi_data[4]}]
set_property MARK_DEBUG true [get_nets {mosi_data[5]}]
set_property MARK_DEBUG true [get_nets {mosi_data[6]}]
set_property MARK_DEBUG true [get_nets {mosi_data[7]}]

# Auto generated parameteres for the ILA debugger:

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 2 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 16384 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 1 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list clk_IBUF_BUFG]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 8 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {byte_cnt[0]} {byte_cnt[1]} {byte_cnt[2]} {byte_cnt[3]} {byte_cnt[4]} {byte_cnt[5]} {byte_cnt[6]} {byte_cnt[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 15 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {pck_cnt[0]} {pck_cnt[1]} {pck_cnt[2]} {pck_cnt[3]} {pck_cnt[4]} {pck_cnt[5]} {pck_cnt[6]} {pck_cnt[7]} {pck_cnt[8]} {pck_cnt[9]} {pck_cnt[10]} {pck_cnt[11]} {pck_cnt[12]} {pck_cnt[13]} {pck_cnt[14]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 8 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {miso_data[0]} {miso_data[1]} {miso_data[2]} {miso_data[3]} {miso_data[4]} {miso_data[5]} {miso_data[6]} {miso_data[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 8 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {mosi_data[0]} {mosi_data[1]} {mosi_data[2]} {mosi_data[3]} {mosi_data[4]} {mosi_data[5]} {mosi_data[6]} {mosi_data[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list display_data]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list miso]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list mosi]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list sck]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list ss]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_IBUF_BUFG]
