#!/usr/bin/env python

import os
from os import path
from subprocess import check_call

import arg_parser
import context
import sys


def main(delta_conf):
    args = arg_parser.receiver_first()

    cc_repo = path.join(context.third_party_dir, 'genericCC')
    recv_src = path.join(cc_repo, 'receiver')
    send_src = path.join(cc_repo, 'sender')

    if args.option == 'deps':
        print ('makepp libboost-dev libprotobuf-dev protobuf-c-compiler '
               'protobuf-compiler libjemalloc-dev libboost-python-dev')
        return

    if args.option == 'setup':
        check_call(['makepp'], cwd=cc_repo)
        return

    if args.option == 'receiver':
        cmd = [recv_src, args.port]
        check_call(cmd)
        return

    if args.option == 'sender':
        if args.flowsize:
            sh_cmd = ('export MIN_RTT=1000000 && %s serverip=%s serverport=%s '
                'offduration=0 onduration=%s traffic_params=byte_switched,deterministic,'
                'num_cycles=1 cctype=markovian delta_conf=%s'
                % (send_src, args.ip, args.port, args.flowsize, delta_conf))
        else:
            sh_cmd = ('export MIN_RTT=1000000 && %s serverip=%s serverport=%s '
                'offduration=1 onduration=1000000 traffic_params=deterministic,'
                'num_cycles=1 cctype=markovian delta_conf=%s'
                % (send_src, args.ip, args.port, delta_conf))

        sys.stderr.write(str(sh_cmd))
        sys.stderr.write('\n')

        with open(os.devnull, 'w') as devnull:
            # suppress debugging output to stdout
            check_call(sh_cmd, shell=True, stdout=devnull)
        return


if __name__ == '__main__':
    main('do_ss:auto:0.5')
