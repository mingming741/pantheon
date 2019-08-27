#!/bin/sh -x
# wireless network
# RTT = 100ms, Buffer = 450MSS

# Multi-Flow Case
# 4G loss 0.1, 10 time each scheme, run 10s, 3 flows
src/experiments/test.py local --all --runtime 10 --uplink-trace src/experiments/traces/processed_bw_4G.trace --downlink-trace src/experiments/traces/processed_bw_4G.trace --extra-mm-link-args "mm-delay 50 mm-loss uplink 0.001 --uplink-queue=droptail --uplink-queue-args=packets=450" --data-dir Report/Wireless/4G_loss0.1_flowtime10s_3flows --flows 3 --run-times 10
src/analysis/analyze.py --data-dir Report/Wireless/4G_loss0.1_flowtime10s_3flows

# 4G loss 0.1, 10 time each scheme, run 30s, 3 flows
src/experiments/test.py local --all --runtime 10 --uplink-trace src/experiments/traces/processed_bw_4G.trace --downlink-trace src/experiments/traces/processed_bw_4G.trace --extra-mm-link-args "mm-delay 50 mm-loss uplink 0.001 --uplink-queue=droptail --uplink-queue-args=packets=450" --data-dir Report/Wireless/4G_loss0.1_flowtime30s_3flows --flows 3 --run-times 10
src/analysis/analyze.py --data-dir Report/Wireless/4G_loss0.1_flowtime30s_3flows

# 4G loss 0.1, 10 time each scheme, run 10s, 3 flows, 1s interval
src/experiments/test.py local --all --runtime 10 --uplink-trace src/experiments/traces/processed_bw_4G.trace --downlink-trace src/experiments/traces/processed_bw_4G.trace --extra-mm-link-args "mm-delay 50 mm-loss uplink 0.001 --uplink-queue=droptail --uplink-queue-args=packets=450" --data-dir Report/Wireless/4G_loss0.1_flowtime10s_3flows_interval --flows 3 --interval 1 --run-times 10
src/analysis/analyze.py --data-dir Report/Wireless/4G_loss0.1_flowtime10s_3flows_interval

# 4G loss 0.1, 10 time each scheme, run 30s, 3 flows, 1s interval
src/experiments/test.py local --all --runtime 10 --uplink-trace src/experiments/traces/processed_bw_4G.trace --downlink-trace src/experiments/traces/processed_bw_4G.trace --extra-mm-link-args "mm-delay 50 mm-loss uplink 0.001 --uplink-queue=droptail --uplink-queue-args=packets=450" --data-dir Report/Wireless/4G_loss0.1_flowtime30s_3flows_interval --flows 3 --interval 1 --run-times 10
src/analysis/analyze.py --data-dir Report/Wireless/4G_loss0.1_flowtime30s_3flows_interval
