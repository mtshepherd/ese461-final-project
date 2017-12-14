#######################################################
#                                                     
#  Encounter Command Logging File                     
#  Created on Thu Dec 14 14:52:36 2017                
#                                                     
#######################################################

#@(#)CDS: Encounter v14.23-s044_1 (64bit) 03/20/2015 11:30 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute v14.23-s028 NR150319-1745/14_23-UB (database version 2.30, 255.6.1) {superthreading v1.25}
#@(#)CDS: CeltIC v14.23-s013_1 (64bit) 03/09/2015 04:15:07 (Linux 2.6.18-194.el5)
#@(#)CDS: AAE 14.23-s010 (64bit) 03/20/2015 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 14.23-s014_1 (64bit) Mar  9 2015 03:15:25 (Linux 2.6.18-194.el5)
#@(#)CDS: CPE v14.23-s032
#@(#)CDS: IQRC/TQRC 14.1.6-s260 (64bit) Mon Mar  2 11:26:49 PST 2015 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
set init_gnd_net gnd!
set init_lef_file /project/linuxlab/cadence/vendors/VTVT/vtvt_tsmc180/vtvt_tsmc180_lef/vtvt_tsmc180.lef
set init_verilog Top.syn.v
set init_mmmc_file Default.view
set init_pwr_net vdd!
init_design
