#!/bin/bash

if [ $# -eq 0 ]; then
	crab -b0x8000 -s0x8000 `cat filelist`
elif [ $# -eq 1 ]; then
	crab "$1" -b0x8000 -s0x8000 `cat filelist`
fi
