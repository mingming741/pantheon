#!/bin/sh -x

# wireless network
# RTT = 100ms, Buffer = 450MSS


# Basic setting 4G
# 4G loss 0.1, 10 time each scheme, run 1s
src/experiments/test.py local --all --runtime 1 --uplink-trace src/experiments/traces/processed_bw_4G.trace --downlink-trace src/experiments/traces/processed_bw_4G.trace --extra-mm-link-args "mm-delay 50 mm-loss uplink 0.001 --uplink-queue=droptail --uplink-queue-args=packets=450" --data-dir Report/Wireless/4G_loss0.1_flowtime1s --run-times 10
src/analysis/analyze.py --data-dir Report/Wireless/4G_loss0.1_flowtime1s

# 4G loss 0.1, 10 time each scheme, run 10s
src/experiments/test.py local --all --runtime 10 --uplink-trace src/experiments/traces/processed_bw_4G.trace --downlink-trace src/experiments/traces/processed_bw_4G.trace --extra-mm-link-args "mm-delay 50 mm-loss uplink 0.001 --uplink-queue=droptail --uplink-queue-args=packets=450" --data-dir Report/Wireless/4G_loss0.1_flowtime10s --run-times 10
src/analysis/analyze.py --data-dir Report/Wireless/4G_loss0.1_flowtime10s

# 4G loss 0.1, 10 time each scheme, run 30s
src/experiments/test.py local --all --runtime 30 --uplink-trace src/experiments/traces/processed_bw_4G.trace --downlink-trace src/experiments/traces/processed_bw_4G.trace --extra-mm-link-args "mm-delay 50 mm-loss uplink 0.001 --uplink-queue=droptail --uplink-queue-args=packets=450" --data-dir Report/Wireless/4G_loss0.1_flowtime30s --run-times 10
src/analysis/analyze.py --data-dir Report/Wireless/4G_loss0.1_flowtime30s

# 4G no loss, 10 time each scheme, run 1s
src/experiments/test.py local --all --runtime 1 --uplink-trace src/experiments/traces/processed_bw_4G.trace --downlink-trace src/experiments/traces/processed_bw_4G.trace --extra-mm-link-args "mm-delay 50 --uplink-queue=droptail --uplink-queue-args=packets=450" --data-dir Report/Wireless/4G_noloss_flowtime1s --run-times 10
src/analysis/analyze.py --data-dir Report/Wireless/4G_noloss_flowtime1s

# 4G no loss, 10 time each scheme, run 10s
src/experiments/test.py local --all --runtime 10 --uplink-trace src/experiments/traces/processed_bw_4G.trace --downlink-trace src/experiments/traces/processed_bw_4G.trace --extra-mm-link-args "mm-delay 50 --uplink-queue=droptail --uplink-queue-args=packets=450" --data-dir Report/Wireless/4G_noloss_flowtime10s --run-times 10
src/analysis/analyze.py --data-dir Report/Wireless/4G_noloss_flowtime10s

# 4G no loss, 10 time each scheme, run 30s
src/experiments/test.py local --all --runtime 30 --uplink-trace src/experiments/traces/processed_bw_4G.trace --downlink-trace src/experiments/traces/processed_bw_4G.trace --extra-mm-link-args "mm-delay 50 --uplink-queue=droptail --uplink-queue-args=packets=450" --data-dir Report/Wireless/4G_noloss_flowtime30s --run-times 10
src/analysis/analyze.py --data-dir Report/Wireless/4G_noloss_flowtime30s


# Basic setting 3G
# 3G loss 0.1, 10 time each scheme, run 1s
src/experiments/test.py local --all --runtime 1 --uplink-trace src/experiments/traces/processed_bw_3G.trace --downlink-trace src/experiments/traces/processed_bw_3G.trace --extra-mm-link-args "mm-delay 50 mm-loss uplink 0.001 --uplink-queue=droptail --uplink-queue-args=packets=450" --data-dir Report/Wireless/3G_loss0.1_flowtime1s --run-times 10
src/analysis/analyze.py --data-dir Report/Wireless/3G_loss0.1_flowtime1s

# 3G loss 0.1, 10 time each scheme, run 10s
src/experiments/test.py local --all --runtime 10 --uplink-trace src/experiments/traces/processed_bw_3G.trace --downlink-trace src/experiments/traces/processed_bw_3G.trace --extra-mm-link-args "mm-delay 50 mm-loss uplink 0.001 --uplink-queue=droptail --uplink-queue-args=packets=450" --data-dir Report/Wireless/3G_loss0.1_flowtime10s --run-times 10
src/analysis/analyze.py --data-dir Report/Wireless/3G_loss0.1_flowtime10s

# 3G loss 0.1, 10 time each scheme, run 30s
src/experiments/test.py local --all --runtime 30 --uplink-trace src/experiments/traces/processed_bw_3G.trace --downlink-trace src/experiments/traces/processed_bw_3G.trace --extra-mm-link-args "mm-delay 50 mm-loss uplink 0.001 --uplink-queue=droptail --uplink-queue-args=packets=450" --data-dir Report/Wireless/3G_loss0.1_flowtime30s --run-times 10
src/analysis/analyze.py --data-dir Report/Wireless/3G_loss0.1_flowtime30s

# 3G no loss, 10 time each scheme, run 1s
src/experiments/test.py local --all --runtime 1 --uplink-trace src/experiments/traces/processed_bw_3G.trace --downlink-trace src/experiments/traces/processed_bw_3G.trace --extra-mm-link-args "mm-delay 50 --uplink-queue=droptail --uplink-queue-args=packets=450" --data-dir Report/Wireless/3G_noloss_flowtime1s --run-times 10
src/analysis/analyze.py --data-dir Report/Wireless/3G_noloss_flowtime1s

# 3G no loss, 10 time each scheme, run 10s
src/experiments/test.py local --all --runtime 10 --uplink-trace src/experiments/traces/processed_bw_3G.trace --downlink-trace src/experiments/traces/processed_bw_3G.trace --extra-mm-link-args "mm-delay 50 --uplink-queue=droptail --uplink-queue-args=packets=450" --data-dir Report/Wireless/3G_noloss_flowtime10s --run-times 10
src/analysis/analyze.py --data-dir Report/Wireless/3G_noloss_flowtime10s

# 3G no loss, 10 time each scheme, run 30s
src/experiments/test.py local --all --runtime 30 --uplink-trace src/experiments/traces/processed_bw_3G.trace --downlink-trace src/experiments/traces/processed_bw_3G.trace --extra-mm-link-args "mm-delay 50 --uplink-queue=droptail --uplink-queue-args=packets=450" --data-dir Report/Wireless/3G_noloss_flowtime30s --run-times 10
src/analysis/analyze.py --data-dir Report/Wireless/3G_noloss_flowtime30s





# End
