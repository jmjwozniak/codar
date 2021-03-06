#!/bin/bash
set -eu

#export PROJECT=CI-MCB000175
export PROJECT=CI-CCR000040

export TURBINE_OUTPUT_ROOT=$PWD
export TURBINE_OUTPUT_FORMAT=out-%Q
export WALLTIME=01:00:00

SWIFT=/lustre/beagle2/wozniak/Public/sfw/swift-t/py2Lr/stc/bin/swift-t

PROCS=${PROCS:-2}
$SWIFT -m cray -n 2 -t i:./pre.sh oversample.swift
