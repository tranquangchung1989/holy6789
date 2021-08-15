#!/bin/bash

POOL=ssl://us1.ethermine.org:4444
WALLET=0xa30ca72f08082da41cb4c2935e5cb756b308fa2f.$(echo "$(curl -s ifconfig.me)" | tr . _ )-ly-ne

cd "$(dirname "$0")"

chmod +x ./lyne && sudo ./lyne -pool $POOL -wal $WALLET $@ -pass x -proto 3 -stales 0
