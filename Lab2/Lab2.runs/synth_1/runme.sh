#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/home/josecoelho/xilinx/SDK/2018.2/bin:/home/josecoelho/xilinx/Vivado/2018.2/ids_lite/ISE/bin/lin64:/home/josecoelho/xilinx/Vivado/2018.2/bin
else
  PATH=/home/josecoelho/xilinx/SDK/2018.2/bin:/home/josecoelho/xilinx/Vivado/2018.2/ids_lite/ISE/bin/lin64:/home/josecoelho/xilinx/Vivado/2018.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=/home/josecoelho/xilinx/Vivado/2018.2/ids_lite/ISE/lib/lin64
else
  LD_LIBRARY_PATH=/home/josecoelho/xilinx/Vivado/2018.2/ids_lite/ISE/lib/lin64:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/josecoelho/Documents/IST/PSD/Labs/Lab2/psd-proj2/Lab2/Lab2.runs/synth_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vivado -log datapath.vds -m64 -product Vivado -mode batch -messageDb vivado.pb -notrace -source datapath.tcl
