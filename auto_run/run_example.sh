#!/bin/sh -x

# run example
src/experiments/test.py local --scheme cubic --runtime 5 --uplink-trace src/experiments/traces/12mbps.trace --downlink-trace src/experiments/traces/12mbps.trace --extra-mm-link-args "mm-delay 10 mm-loss uplink 0.0001 --uplink-queue=droptail --uplink-queue-args=packets=450" --data-dir Report/Example/CubicExample --run-times 1
src/analysis/analyze.py --data-dir Report/Example/CubicExample

# run pantheon calibrate emulation (For check correctness of local working envrionment)
src/experiments/test.py local --all --runtime 30 --uplink-trace src/experiments/traces/12mbps.trace --downlink-trace src/experiments/traces/12mbps.trace --extra-mm-link-args "mm-delay 30 --uplink-queue=droptail --uplink-queue-args=bytes=45000" --data-dir Report/Example/CalibrateExample
src/analysis/analyze.py --data-dir Report/Example/CalibrateExample
