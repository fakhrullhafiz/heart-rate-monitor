
s
Command: %s
1870*	planAhead2A
-open_checkpoint heart_rate_monitor_routed.dcp2default:defaultZ12-2866h px
d
-Analyzing %s Unisim elements for replacement
17*netlist2
3182default:defaultZ29-17h px
g
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px
�
�Netlist '%s' is not ideal for floorplanning, since the cellview '%s' defined in file '%s' contains large number of primitives.  Please consider enabling hierarchy in synthesis if you want to do floorplanning.
43*netlist2&
heart_rate_monitor2default:default2"
bpm_calculator2default:default2*
heart_rate_monitor.edf2default:defaultZ29-43h px
u
Netlist was created with %s %s291*project2
Vivado2default:default2
2014.22default:defaultZ1-479h px
�
Loading clock regions from %s
13*device2d
PC:/Xilinx/Vivado/2014.2/data\parts/xilinx/artix7/artix7/xc7a100t/ClockRegion.xml2default:defaultZ21-13h px
�
Loading clock buffers from %s
11*device2e
QC:/Xilinx/Vivado/2014.2/data\parts/xilinx/artix7/artix7/xc7a100t/ClockBuffers.xml2default:defaultZ21-11h px
�
&Loading clock placement rules from %s
318*place2Y
EC:/Xilinx/Vivado/2014.2/data/parts/xilinx/artix7/ClockPlacerRules.xml2default:defaultZ30-318h px
�
)Loading package pin functions from %s...
17*device2U
AC:/Xilinx/Vivado/2014.2/data\parts/xilinx/artix7/PinFunctions.xml2default:defaultZ21-17h px
�
Loading package from %s
16*device2g
SC:/Xilinx/Vivado/2014.2/data\parts/xilinx/artix7/artix7/xc7a100t/csg324/Package.xml2default:defaultZ21-16h px
�
Loading io standards from %s
15*device2V
BC:/Xilinx/Vivado/2014.2/data\./parts/xilinx/artix7/IOStandards.xml2default:defaultZ21-15h px
�
+Loading device configuration modes from %s
14*device2T
@C:/Xilinx/Vivado/2014.2/data\parts/xilinx/artix7/ConfigModes.xml2default:defaultZ21-14h px
�
Parsing XDC File [%s]
179*designutils2�
�C:/Users/fakhr/OneDrive/Documents/Vivado/heart-rate-monitor/heart-rate-monitor.runs/impl_1/.Xil/Vivado-24892-ACER-NITRO5/dcp/heart_rate_monitor.xdc2default:defaultZ20-179h px
�
Finished Parsing XDC File [%s]
178*designutils2�
�C:/Users/fakhr/OneDrive/Documents/Vivado/heart-rate-monitor/heart-rate-monitor.runs/impl_1/.Xil/Vivado-24892-ACER-NITRO5/dcp/heart_rate_monitor.xdc2default:defaultZ20-178h px
<
Reading XDEF placement.
206*designutilsZ20-206h px
:
Reading XDEF routing.
207*designutilsZ20-207h px
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
Read XDEF File: 2default:default2
00:00:002default:default2 
00:00:00.0682default:default2
443.4922default:default2
0.0002default:defaultZ17-268h px
9
Restoring placement.
754*designutilsZ20-754h px
�
ORestored %s out of %s XDEF sites from archive | CPU: %s secs | Memory: %s MB |
403*designutils2
3652default:default2
3652default:default2
0.0000002default:default2
0.0000002default:defaultZ20-403h px
r
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px
{
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px
_
$Checkpoint was created with build %s293*project2
9326372default:defaultZ1-484h px
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-347h px
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7a100t2default:defaultZ17-349h px
u
,Running DRC as a precondition to command %s
1349*	planAhead2#
write_bitstream2default:defaultZ12-1349h px
M
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px
�	
Rule violation (%s) %s - %s
20*drc2
NSTD-12default:default2,
Unspecified I/O Standard2default:default2�
�12 out of 25 logical ports use I/O standard (IOSTANDARD) value 'DEFAULT', instead of a user assigned specific value. This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all I/O standards. This design will fail to generate a bitstream unless all logical ports have a user specified I/O standard value defined. To allow bitstream creation with unspecified I/O standard values (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks NSTD-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run. Problem ports: adc_data_in[11], adc_data_in[10], adc_data_in[9], adc_data_in[8], adc_data_in[7], adc_data_in[6], adc_data_in[5], adc_data_in[4], adc_data_in[3], adc_data_in[2], adc_data_in[1], reset.2default:defaultZ23-20h px
�
Rule violation (%s) %s - %s
20*drc2
UCIO-12default:default2.
Unconstrained Logical Port2default:default2�
�14 out of 25 logical ports have no user assigned specific location constraint (LOC). This may cause I/O contention or incompatibility with the board power or connectivity affecting performance, signal integrity or in extreme cases cause damage to the device or the components to which it is connected. To correct this violation, specify all pin locations. This design will fail to generate a bitstream unless all logical ports have a user specified site LOC constraint defined.  To allow bitstream creation with unspecified pin locations (not recommended), use this command: set_property SEVERITY {Warning} [get_drc_checks UCIO-1].  NOTE: When using the Vivado Runs infrastructure (e.g. launch_runs Tcl command), add this command to a .tcl file and add that file as a pre-hook for write_bitstream step for the implementation run.  Problem ports: adc_data_in[11:0], clk, reset.2default:defaultZ23-20h px
c
DRC finished with %s
1905*	planAhead2(
2 Errors, 1 Warnings2default:defaultZ12-3199h px
f
BPlease refer to the DRC report (report_drc) for more information.
1906*	planAheadZ12-3200h px
O
+Error(s) found during DRC. Bitgen not run.
1345*	planAheadZ12-1345h px
W
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
write_bitstream: 2default:default2
00:00:032default:default2
00:00:072default:default2
556.0392default:default2
112.3322default:defaultZ17-268h px
}
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sun Nov 24 01:43:39 20242default:defaultZ17-206h px