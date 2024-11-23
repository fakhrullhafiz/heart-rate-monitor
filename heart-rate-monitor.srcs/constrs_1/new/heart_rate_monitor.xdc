## Clock Signal
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

## Seven-Segment Display Segments (Active Low)
set_property PACKAGE_PIN T10 [get_ports { seg[0] }]
set_property IOSTANDARD LVCMOS33 [get_ports { seg[0] }]
set_property PACKAGE_PIN R10 [get_ports { seg[1] }]
set_property IOSTANDARD LVCMOS33 [get_ports { seg[1] }]
set_property PACKAGE_PIN K16 [get_ports { seg[2] }]
set_property IOSTANDARD LVCMOS33 [get_ports { seg[2] }]
set_property PACKAGE_PIN K13 [get_ports { seg[3] }]
set_property IOSTANDARD LVCMOS33 [get_ports { seg[3] }]
set_property PACKAGE_PIN P15 [get_ports { seg[4] }]
set_property IOSTANDARD LVCMOS33 [get_ports { seg[4] }]
set_property PACKAGE_PIN T11 [get_ports { seg[5] }]
set_property IOSTANDARD LVCMOS33 [get_ports { seg[5] }]
set_property PACKAGE_PIN L18 [get_ports { seg[6] }]
set_property IOSTANDARD LVCMOS33 [get_ports { seg[6] }]

## Seven-Segment Display Anodes (Active Low)
set_property PACKAGE_PIN U13 [get_ports { an[0] }]
set_property IOSTANDARD LVCMOS33 [get_ports { an[0] }]
set_property PACKAGE_PIN U12 [get_ports { an[1] }]
set_property IOSTANDARD LVCMOS33 [get_ports { an[1] }]
set_property PACKAGE_PIN V12 [get_ports { an[2] }]
set_property IOSTANDARD LVCMOS33 [get_ports { an[2] }]
set_property PACKAGE_PIN V10 [get_ports { an[3] }]
set_property IOSTANDARD LVCMOS33 [get_ports { an[3] }]

## ADC Input Pins (Assuming using PMOD JA Connector)
## Adjust the pins according to your ADC connections
set_property PACKAGE_PIN J1 [get_ports { adc_data_in[0] }]
set_property IOSTANDARD LVCMOS33 [get_ports { adc_data_in[0] }]
// Repeat for adc_data_in[1] to adc_data_in[11] with appropriate PACKAGE_PINs
