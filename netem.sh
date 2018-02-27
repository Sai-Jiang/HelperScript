#! /bin/bash

tc qdisc show dev lo

N=100000
rate=200

tc qdisc add dev lo root netem delay 10ms

# Loss 0
tc qdisc change dev lo root netem delay 10ms
./TCP_Server_Ts > TCP_loss0_delay10 &
./TCP_Client_Ts $N $rate &
wait & echo "TCP_loss0_delay10 done"

tc qdisc change dev lo root netem delay 20ms
./TCP_Server_Ts > TCP_loss0_delay20 &
./TCP_Client_Ts $N $rate &
wait & echo "TCP_loss0_delay20 done"

tc qdisc change dev lo root netem delay 50ms
./TCP_Server_Ts > TCP_loss0_delay50 &
./TCP_Client_Ts $N $rate &
wait & echo "TCP_loss0_delay50 done"

tc qdisc change dev lo root netem delay 100ms
./TCP_Server_Ts > TCP_loss0_delay100 &
./TCP_Client_Ts $N $rate &
wait & echo "TCP_loss0_delay100 done"

tc qdisc change dev lo root netem delay 200ms
./TCP_Server_Ts > TCP_loss0_delay200 &
./TCP_Client_Ts $N $rate &
wait & echo "TCP_loss0_delay200 done"


# Loss 2%
tc qdisc change dev lo root netem delay 10ms loss 2%
./TCP_Server_Ts > TCP_loss2_delay10 &
./TCP_Client_Ts $N $rate &
wait & echo "TCP_loss2_delay10 done"

tc qdisc change dev lo root netem delay 20ms loss 2%
./TCP_Server_Ts > TCP_loss2_delay20 &
./TCP_Client_Ts $N $rate &
wait & echo "TCP_loss2_delay20 done"

tc qdisc change dev lo root netem delay 50ms loss 2%
./TCP_Server_Ts > TCP_loss2_delay50 &
./TCP_Client_Ts $N $rate &
wait & echo "TCP_loss2_delay50 done"

tc qdisc change dev lo root netem delay 100ms loss 2%
./TCP_Server_Ts > TCP_loss2_delay100 &
./TCP_Client_Ts $N $rate &
wait & echo "TCP_loss2_delay100 done"

tc qdisc change dev lo root netem delay 200ms loss 2%
./TCP_Server_Ts > TCP_loss2_delay200 &
./TCP_Client_Ts $N $rate &
wait & echo "TCP_loss2_delay200 done"


# Loss 5
tc qdisc change dev lo root netem delay 10ms loss 5%
./TCP_Server_Ts > TCP_loss5_delay10 &
./TCP_Client_Ts $N $rate &
wait & echo "TCP_loss5_delay10 done"

tc qdisc change dev lo root netem delay 20ms loss 5%
./TCP_Server_Ts > TCP_loss5_delay20 &
./TCP_Client_Ts $N $rate &
wait & echo "TCP_loss5_delay20 done"

tc qdisc change dev lo root netem delay 50ms loss 5%
./TCP_Server_Ts > TCP_loss5_delay50 &
./TCP_Client_Ts $N $rate &
wait & echo "TCP_loss5_delay50 done"

tc qdisc change dev lo root netem delay 100ms loss 5%
./TCP_Server_Ts > TCP_loss5_delay100 &
./TCP_Client_Ts $N $rate &
wait & echo "TCP_loss5_delay100 done"

tc qdisc change dev lo root netem delay 200ms loss 5%
./TCP_Server_Ts > TCP_loss5_delay200 &
./TCP_Client_Ts $N $rate &
wait & echo "TCP_loss5_delay200 done"



# Loss 10
tc qdisc change dev lo root netem delay 10ms loss 10%
./TCP_Server_Ts > TCP_loss10_delay10 &
./TCP_Client_Ts $N $rate &
wait & echo "TCP_loss10_delay10 done"

tc qdisc change dev lo root netem delay 20ms loss 10%
./TCP_Server_Ts > TCP_loss10_delay20 &
./TCP_Client_Ts $N $rate &
wait & echo "TCP_loss10_delay20 done"

tc qdisc change dev lo root netem delay 50ms loss 10%
./TCP_Server_Ts > TCP_loss10_delay50 &
./TCP_Client_Ts $N $rate &
wait & echo "TCP_loss10_delay50 done"

tc qdisc change dev lo root netem delay 100ms loss 10%
./TCP_Server_Ts > TCP_loss10_delay100 &
./TCP_Client_Ts $N $rate &
wait & echo "TCP_loss10_delay100 done"

tc qdisc change dev lo root netem delay 200ms loss 10%
./TCP_Server_Ts > TCP_loss10_delay200 &
./TCP_Client_Ts $N $rate &
wait & echo "TCP_loss10_delay200 done"



# Loss 20
tc qdisc change dev lo root netem delay 10ms loss 20%
./TCP_Server_Ts > TCP_loss20_delay10 &
./TCP_Client_Ts $N $rate &
wait & echo "TCP_loss20_delay10 done"

tc qdisc change dev lo root netem delay 20ms loss 20%
./TCP_Server_Ts > TCP_loss20_delay20 &
./TCP_Client_Ts $N $rate &
wait & echo "TCP_loss20_delay20 done"

tc qdisc change dev lo root netem delay 50ms loss 20%
./TCP_Server_Ts > TCP_loss20_delay50 &
./TCP_Client_Ts $N $rate &
wait & echo "TCP_loss20_delay50 done"

tc qdisc change dev lo root netem delay 100ms loss 20%
./TCP_Server_Ts > TCP_loss20_delay100 &
./TCP_Client_Ts $N $rate &
wait & echo "TCP_loss20_delay100 done"

tc qdisc change dev lo root netem delay 200ms loss 20%
./TCP_Server_Ts > TCP_loss20_delay200 &
./TCP_Client_Ts $N $rate &
wait & echo "TCP_loss20_delay200 done"


tc qdisc del dev lo root netem delay 200ms
