
u
Command: %s
53*	vivadotcl2D
0synth_design -top gray_FSM -part xc7z020clg400-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
a
#Helper process launched with PID %s4824*oasys2
1076292default:defaultZ8-7075h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2_
I/tools/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px� 
�
%s*synth2�
�Starting Synthesize : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 2409.152 ; gain = 383.707 ; free physical = 23050 ; free virtual = 28842
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 1847.896; parent = 1639.636; children = 208.261
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3378.930; parent = 2409.156; children = 969.773
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
gray_FSM2default:default2
 2default:default2q
[/users/btech/rohitv23/assignment3_monday1/assignment3_monday1.srcs/sources_1/new/gray_FSM.v2default:default2
32default:default8@Z8-6157h px� 
�
default block is never used226*oasys2q
[/users/btech/rohitv23/assignment3_monday1/assignment3_monday1.srcs/sources_1/new/gray_FSM.v2default:default2
312default:default8@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
gray_FSM2default:default2
 2default:default2
02default:default2
12default:default2q
[/users/btech/rohitv23/assignment3_monday1/assignment3_monday1.srcs/sources_1/new/gray_FSM.v2default:default2
32default:default8@Z8-6155h px� 
�
%s*synth2�
�Finished Synthesize : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 2474.121 ; gain = 448.676 ; free physical = 23150 ; free virtual = 28942
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 1847.896; parent = 1639.636; children = 208.261
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3443.898; parent = 2474.125; children = 969.773
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 2488.965 ; gain = 463.520 ; free physical = 23140 ; free virtual = 28932
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 1847.896; parent = 1639.636; children = 208.261
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3458.742; parent = 2488.969; children = 969.773
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7z020clg400-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 2496.969 ; gain = 471.523 ; free physical = 23140 ; free virtual = 28932
2default:defaulth px� 
V
Loading part %s157*device2#
xc7z020clg400-12default:defaultZ21-403h px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 1847.896; parent = 1639.636; children = 208.261
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3466.746; parent = 2496.973; children = 969.773
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2!
gray_code_reg2default:default2
gray_FSM2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                      S0 |                         00000001 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_                      S1 |                         00000010 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_                      S2 |                         00000100 |                              011
2default:defaulth p
x
� 
�
%s
*synth2s
_                      S3 |                         00001000 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_                      S4 |                         00010000 |                              110
2default:defaulth p
x
� 
�
%s
*synth2s
_                      S5 |                         00100000 |                              111
2default:defaulth p
x
� 
�
%s
*synth2s
_                      S6 |                         01000000 |                              101
2default:defaulth p
x
� 
�
%s
*synth2s
_                      S7 |                         10000000 |                              100
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2!
gray_code_reg2default:default2
one-hot2default:default2
gray_FSM2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 2505.875 ; gain = 480.430 ; free physical = 23114 ; free virtual = 28906
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 1847.896; parent = 1639.636; children = 208.261
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3475.652; parent = 2505.879; children = 969.773
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   8 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 2659.938 ; gain = 634.492 ; free physical = 22828 ; free virtual = 28623
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2089.206; parent = 1881.175; children = 208.261
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3629.715; parent = 2659.941; children = 969.773
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 2659.938 ; gain = 634.492 ; free physical = 22823 ; free virtual = 28618
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2092.548; parent = 1884.524; children = 208.261
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3629.715; parent = 2659.941; children = 969.773
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 2667.945 ; gain = 642.500 ; free physical = 22825 ; free virtual = 28620
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2093.048; parent = 1885.024; children = 208.261
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3637.723; parent = 2667.949; children = 969.773
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 2667.945 ; gain = 642.500 ; free physical = 22825 ; free virtual = 28621
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2093.142; parent = 1885.118; children = 208.261
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3637.723; parent = 2667.949; children = 969.773
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 2667.945 ; gain = 642.500 ; free physical = 22825 ; free virtual = 28621
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2093.157; parent = 1885.134; children = 208.261
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3637.723; parent = 2667.949; children = 969.773
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 2667.945 ; gain = 642.500 ; free physical = 22825 ; free virtual = 28621
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2093.220; parent = 1885.196; children = 208.261
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3637.723; parent = 2667.949; children = 969.773
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 2667.945 ; gain = 642.500 ; free physical = 22825 ; free virtual = 28621
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2093.298; parent = 1885.274; children = 208.261
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3637.723; parent = 2667.949; children = 969.773
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 2667.945 ; gain = 642.500 ; free physical = 22825 ; free virtual = 28621
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2093.313; parent = 1885.290; children = 208.261
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3637.723; parent = 2667.949; children = 969.773
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 2667.945 ; gain = 642.500 ; free physical = 22825 ; free virtual = 28621
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2093.353; parent = 1885.329; children = 208.261
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3637.723; parent = 2667.949; children = 969.773
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
B
%s*synth2*
+------+-----+------+
2default:defaulth px� 
B
%s*synth2*
|      |Cell |Count |
2default:defaulth px� 
B
%s*synth2*
+------+-----+------+
2default:defaulth px� 
B
%s*synth2*
|1     |BUFG |     1|
2default:defaulth px� 
B
%s*synth2*
|2     |LUT4 |     3|
2default:defaulth px� 
B
%s*synth2*
|3     |FDCE |     7|
2default:defaulth px� 
B
%s*synth2*
|4     |FDPE |     1|
2default:defaulth px� 
B
%s*synth2*
|5     |IBUF |     2|
2default:defaulth px� 
B
%s*synth2*
|6     |OBUF |     4|
2default:defaulth px� 
B
%s*synth2*
+------+-----+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
� 
N
%s
*synth26
"|      |Instance |Module |Cells |
2default:defaulth p
x
� 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
� 
N
%s
*synth26
"|1     |top      |       |    18|
2default:defaulth p
x
� 
N
%s
*synth26
"+------+---------+-------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 2667.945 ; gain = 642.500 ; free physical = 22825 ; free virtual = 28621
2default:defaulth px� 
�
%s*synth2~
jSynthesis current peak Physical Memory [PSS] (MB): peak = 2093.399; parent = 1885.376; children = 208.261
2default:defaulth px� 
�
%s*synth2}
iSynthesis current peak Virtual Memory [VSS] (MB): peak = 3637.723; parent = 2667.949; children = 969.773
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 2667.945 ; gain = 642.500 ; free physical = 22828 ; free virtual = 28623
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 2667.953 ; gain = 642.500 ; free physical = 22827 ; free virtual = 28623
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2675.0902default:default2
0.0002default:default2
229292default:default2
287252default:defaultZ17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2755.7772default:default2
0.0002default:default2
228532default:default2
286482default:defaultZ17-722h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
52a388852default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
162default:default2
12default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:112default:default2
00:00:112default:default2
2755.7772default:default2
754.1452default:default2
230662default:default2
288612default:defaultZ17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2k
W/users/btech/rohitv23/assignment3_monday1/assignment3_monday1.runs/synth_1/gray_FSM.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2z
fExecuting : report_utilization -file gray_FSM_utilization_synth.rpt -pb gray_FSM_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Jan 27 14:23:28 20252default:defaultZ17-206h px� 


End Record