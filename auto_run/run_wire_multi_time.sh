#!/bin/sh -x

# Wire network
# Default Setting:
# RTT = 100ms, BW = 60Mbps, Buffer =  1BDP, #Flow = 1, Runtime = 10s

# Default setting
src/experiments/test.py local --all --runtime 10 --uplink-trace src/experiments/traces/60mbps.trace --downlink-trace src/experiments/traces/60mbps.trace --extra-mm-link-args "mm-delay 50 --uplink-queue=droptail --uplink-queue-args=bytes=750000" --data-dir Report/Wire/Default/ --run-times 10
src/analysis/analyze.py --data-dir Report/Wire/Default/

# Runtime = 5s
src/experiments/test.py local --all --runtime 5 --uplink-trace src/experiments/traces/60mbps.trace --downlink-trace src/experiments/traces/60mbps.trace --extra-mm-link-args "mm-delay 50 --uplink-queue=droptail --uplink-queue-args=bytes=750000" --data-dir Report/Wire/Runtime5s --run-times 10
src/analysis/analyze.py --data-dir Report/Wire/Runtime5s/

# BW = 12 & 108
src/experiments/test.py local --all --runtime 10 --uplink-trace src/experiments/traces/12mbps.trace --downlink-trace src/experiments/traces/12mbps.trace --extra-mm-link-args "mm-delay 50 --uplink-queue=droptail --uplink-queue-args=bytes=150000" --data-dir Report/Wire/BW12 --run-times 10
src/analysis/analyze.py --data-dir Report/Wire/BW12/

src/experiments/test.py local --all --runtime 10 --uplink-trace src/experiments/traces/108mbps.trace --downlink-trace src/experiments/traces/108mbps.trace --extra-mm-link-args "mm-delay 50 --uplink-queue=droptail --uplink-queue-args=bytes=1350000" --data-dir Report/Wire/BW108 --run-times 10
src/analysis/analyze.py --data-dir Report/Wire/BW108

# RTT = 20
src/experiments/test.py local --all --runtime 10 --uplink-trace src/experiments/traces/60mbps.trace --downlink-trace src/experiments/traces/60mbps.trace --extra-mm-link-args "mm-delay 10 --uplink-queue=droptail --uplink-queue-args=bytes=150000" --data-dir Report/Wire/RTT20 --run-times 10
src/analysis/analyze.py --data-dir Report/Wire/RTT20/

# Buffer = 0.5BDP
src/experiments/test.py local --all --runtime 10 --uplink-trace src/experiments/traces/60mbps.trace --downlink-trace src/experiments/traces/60mbps.trace --extra-mm-link-args "mm-delay 50 --uplink-queue=droptail --uplink-queue-args=bytes=375000" --data-dir Report/Wire/Buffer0.5 --run-times 10
src/analysis/analyze.py --data-dir Report/Wire/Buffer0.5/

# Number of Flow = 3
src/experiments/test.py local --all --runtime 10 --uplink-trace src/experiments/traces/60mbps.trace --downlink-trace src/experiments/traces/60mbps.trace --extra-mm-link-args "mm-delay 50 --uplink-queue=droptail --uplink-queue-args=bytes=750000" --data-dir Report/Wire/Flow3 --flows 3 --run-times 10
src/analysis/analyze.py --data-dir Report/Wire/Flow3/

# Number of Flow = 3, with 1s interval
src/experiments/test.py local --all --runtime 10 --uplink-trace src/experiments/traces/60mbps.trace --downlink-trace src/experiments/traces/60mbps.trace --extra-mm-link-args "mm-delay 50 --uplink-queue=droptail --uplink-queue-args=bytes=750000" --data-dir Report/Wire/Flow3_Interval1 --flows 3 --interval 1 --run-times 10
src/analysis/analyze.py --data-dir Report/Wire/Flow3_Interval1/






# End
