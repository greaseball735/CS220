#!/bin/bash -f
# ****************************************************************************
# Vivado (TM) v2022.2 (64-bit)
#
# Filename    : simulate.sh
# Simulator   : Xilinx Vivado Simulator
# Description : Script for simulating the design by launching the simulator
#
# Generated by Vivado on Mon Feb 03 16:51:28 IST 2025
# SW Build 3671981 on Fri Oct 14 04:59:54 MDT 2022
#
# IP Build 3669848 on Fri Oct 14 08:30:02 MDT 2022
#
# usage: simulate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# simulate design
echo "xsim tb_sram_16_32_time_impl -key {Post-Implementation:sim_1:Timing:tb_sram_16_32} -tclbatch tb_sram_16_32.tcl -log simulate.log"
xsim tb_sram_16_32_time_impl -key {Post-Implementation:sim_1:Timing:tb_sram_16_32} -tclbatch tb_sram_16_32.tcl -log simulate.log

