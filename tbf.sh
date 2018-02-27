#! /bin/bash

tc qdisc add dev lo root handle 1:0 netem delay 100ms
tc qdisc add dev lo parent 1:1 handle 10: tbf rate 256kbit buffer 1600 limit 3000
tc -s qdisc ls dev lo