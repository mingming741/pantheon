#!/usr/bin/env python

from subprocess import check_call

import arg_parser


def main():
    args = arg_parser.receiver_first()

    if args.option == 'deps':
        print 'iperf'
        return

    if args.option == 'receiver':
        cmd = ['iperf', '-Z', 'tcp_ss', '-s', '-p', args.port]
        check_call(cmd)
        return

    if args.option == 'sender':
        if args.flowsize:
            cmd = ['iperf', '-Z', 'tcp_ss', '-c', args.ip, '-p', args.port, '-n', args.flowsize]
        else:
            cmd = ['iperf', '-Z', 'tcp_ss', '-c', args.ip, '-p', args.port, '-t', '75']
        check_call(cmd)
        return


if __name__ == '__main__':
    main()