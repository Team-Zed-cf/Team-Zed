#!usr/bin/python3

# Script:                   401 Final Project Script
# Author:                   Courtney Hans
# Date of latest revision:  12/13/2020
# Purpose:                  pcap parse
#                           defines parameters for what information is deemed
#                           "interesting" to aid efficient pcap analysis

import argparse, os, sys
from scapy.utils import RawPcapReader
from scapy.layers.l2 import Ether
from scapy.layers.inet import IP, TCP

# parameters can be altered depending upon what you're looking for
def process_pcap(filename):
    print('Opening {}...'.format(filename))

    count = 0
    interesting_pkt_count = 0

    for (pkt_data, pkt_metadata,) in RawPcapReader(filename):
        count += 1

        ether_pkt = Ether(pkt_data)
        if 'type' not in ether_pkt.fields:
            continue

        if ether_pkt.type != 0x0800: #ignore non-IPv4 packets
            continue

        ip_pckt = ether_pkt[IP]
        if ip_pckt.proto != 6: # ignore non-TCP packets
            continue

        interesting_pkt_count += 1

    print('{} contains {} packets ({} interesting)'.format(filename,count, interesting_pkt_count))


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='PCAP reader')
    parser.add_argument('--pcap', metavar='<pcap file name>', help='pcap file to parse', required=True)
    args = parser.parse_args()

    filename = args.pcap
    if not os.path.isfile(filename):
        print('"{}" does not exist'.format(filename), file=sys.stderr)
        sys.exit(-1)

    process_pcap(filename)

    sys.exit(0)

    #resource: https://vnetman.github.io/pcap/python/pyshark/scapy/libpcap/2018/10/25/analyzing-packet-captures-with-python-part-1.html