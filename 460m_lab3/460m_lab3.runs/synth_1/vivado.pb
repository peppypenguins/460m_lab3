
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:062

00:00:062	
471.2152	
181.516Z17-268h px� 
�
Command: %s
1870*	planAhead2x
vread_checkpoint -auto_incremental -incremental C:/Users/adamk/460m_lab3/460m_lab3.srcs/utils_1/imports/synth_1/top.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2I
GC:/Users/adamk/460m_lab3/460m_lab3.srcs/utils_1/imports/synth_1/top.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
`
Command: %s
53*	vivadotcl2/
-synth_design -top top -part xc7a35ticpg236-1LZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a35tiZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a35tiZ17-349h px� 
F
Loading part %s157*device2
xc7a35ticpg236-1LZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
19008Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:04 . Memory (MB): peak = 1307.180 ; gain = 440.477
h px� 
�
empty statement in %s5658*oasys2
sequential block2C
?C:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/handler.v2
1458@Z8-9400h px� 
�
synthesizing module '%s'%s4497*oasys2
top2
 2?
;C:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/top.v2
38@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	pulse_gen2
 2E
AC:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/pulse_gen.v2
38@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
var_clk_div2
 2G
CC:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/var_clk_div.v2
38@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
var_clk_div2
 2
02
12G
CC:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/var_clk_div.v2
38@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	pulse_gen2
 2
02
12E
AC:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/pulse_gen.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
clk_div_fsm2
 2G
CC:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/clk_div_fsm.v2
38@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clk_div_fsm2
 2
02
12G
CC:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/clk_div_fsm.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
handler2
 2C
?C:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/handler.v2
38@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
two_sec_clk2
 2G
CC:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/two_sec_clk.v2
38@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
two_sec_clk2
 2
02
12G
CC:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/two_sec_clk.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
	step_cntr2
 2E
AC:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/step_cntr.v2
38@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	step_cntr2
 2
02
12E
AC:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/step_cntr.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
distance_cntr2
 2I
EC:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/distance_cntr.v2
38@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
distance_cntr2
 2
02
12I
EC:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/distance_cntr.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
cnt_322
 2B
>C:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/cnt_32.v2
38@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
cnt_322
 2
02
12B
>C:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/cnt_32.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
high_active2
 2G
CC:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/high_active.v2
48@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
high_active2
 2
02
12G
CC:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/high_active.v2
48@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
hexto7segment2
 2I
EC:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/hexto7segment.v2
38@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
hexto7segment2
 2
02
12I
EC:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/hexto7segment.v2
38@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
handler2
 2
02
12C
?C:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/handler.v2
38@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
time_mux_state_machine2
 2R
NC:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/time_mux_state_machine.v2
38@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
time_mux_state_machine2
 2
02
12R
NC:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/time_mux_state_machine.v2
38@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
top2
 2
02
12?
;C:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/top.v2
38@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
i_reg2E
AC:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/pulse_gen.v2
438@Z8-6014h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2

out3_reg2	
handler2C
?C:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/handler.v2
1228@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2

out2_reg2	
handler2C
?C:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/handler.v2
1238@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2

out1_reg2	
handler2C
?C:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/handler.v2
1248@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2

out0_reg2	
handler2C
?C:/Users/adamk/460m_lab3/460m_lab3.srcs/sources_1/new/handler.v2
1258@Z8-7137h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1416.848 ; gain = 550.145
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1416.848 ; gain = 550.145
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1416.848 ; gain = 550.145
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0062

1416.8482
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2M
IC:/Users/adamk/460m_lab3/460m_lab3.srcs/constrs_1/new/460m_lab3_contr.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2M
IC:/Users/adamk/460m_lab3/460m_lab3.srcs/constrs_1/new/460m_lab3_contr.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2K
IC:/Users/adamk/460m_lab3/460m_lab3.srcs/constrs_1/new/460m_lab3_contr.xdc2
.Xil/top_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1454.5862
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0032

1454.5862
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 1454.586 ; gain = 587.883
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Loading part: xc7a35ticpg236-1L
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 1454.586 ; gain = 587.883
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 1454.586 ; gain = 587.883
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
z
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2
time_mux_state_machineZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                               00 |                               00
h p
x
� 
y
%s
*synth2a
_                 iSTATE0 |                               01 |                               01
h p
x
� 
y
%s
*synth2a
_                 iSTATE1 |                               10 |                               10
h p
x
� 
y
%s
*synth2a
_                 iSTATE2 |                               11 |                               11
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2

sequential2
time_mux_state_machineZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:13 ; elapsed = 00:00:13 . Memory (MB): peak = 1454.586 ; gain = 587.883
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2
top_handler/cnt32_d3_seg2
hexto7segment2
top_handler/cnt32_d2_segZ8-223h px� 
�
$decloning instance '%s' (%s) to '%s'223*oasys2
top_handler/cnt32_d3_seg2
hexto7segment2
top_handler/cnt32_d1_segZ8-223h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit       Adders := 2     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	               16 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                7 Bit    Registers := 4     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 8     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   21 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input    7 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 12    
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:29 ; elapsed = 00:00:29 . Memory (MB): peak = 1471.441 ; gain = 604.738
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:33 ; elapsed = 00:00:33 . Memory (MB): peak = 1471.441 ; gain = 604.738
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:33 ; elapsed = 00:00:33 . Memory (MB): peak = 1479.176 ; gain = 612.473
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:34 ; elapsed = 00:00:35 . Memory (MB): peak = 1524.051 ; gain = 657.348
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:38 ; elapsed = 00:00:38 . Memory (MB): peak = 1537.879 ; gain = 671.176
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:38 ; elapsed = 00:00:38 . Memory (MB): peak = 1537.879 ; gain = 671.176
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:38 ; elapsed = 00:00:38 . Memory (MB): peak = 1537.879 ; gain = 671.176
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:38 ; elapsed = 00:00:38 . Memory (MB): peak = 1537.879 ; gain = 671.176
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:38 ; elapsed = 00:00:38 . Memory (MB): peak = 1537.879 ; gain = 671.176
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:38 ; elapsed = 00:00:38 . Memory (MB): peak = 1537.879 ; gain = 671.176
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |BUFG   |     5|
h px� 
2
%s*synth2
|2     |CARRY4 |   461|
h px� 
2
%s*synth2
|3     |LUT1   |    55|
h px� 
2
%s*synth2
|4     |LUT2   |   467|
h px� 
2
%s*synth2
|5     |LUT3   |   610|
h px� 
2
%s*synth2
|6     |LUT4   |   405|
h px� 
2
%s*synth2
|7     |LUT5   |   344|
h px� 
2
%s*synth2
|8     |LUT6   |  1000|
h px� 
2
%s*synth2
|9     |FDCE   |    36|
h px� 
2
%s*synth2
|10    |FDRE   |   298|
h px� 
2
%s*synth2
|11    |FDSE   |     5|
h px� 
2
%s*synth2
|12    |IBUF   |     5|
h px� 
2
%s*synth2
|13    |OBUF   |    12|
h px� 
2
%s*synth2
+------+-------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:38 ; elapsed = 00:00:38 . Memory (MB): peak = 1537.879 ; gain = 671.176
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:30 ; elapsed = 00:00:37 . Memory (MB): peak = 1537.879 ; gain = 633.438
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:38 ; elapsed = 00:00:39 . Memory (MB): peak = 1537.879 ; gain = 671.176
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0232

1549.9382
0.000Z17-268h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
461Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
1Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1553.6212
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

91916130Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
492
72
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:422

00:00:432

1553.6212

1078.469Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0072

1553.6212
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint29
7C:/Users/adamk/460m_lab3/460m_lab3.runs/synth_1/top.dcpZ17-1381h px� 
z
%s4*runtcl2^
\Executing : report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Thu Feb 27 21:50:57 2025Z17-206h px� 


End Record