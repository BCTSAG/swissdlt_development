#!/bin/bash
NOW=$(date +"%b-%d %H:%M")
if (ps -ef | grep -i node1 | grep -v grep) ; then
#    echo 'Node1 is running '$NOW''
#    uncomment the next line for testing purposes
#    echo 'Node1 is running '$NOW'' >> ~/swissdlt/servercheck.txt
else
#please choose if you want to mine or not uncomment one of the following lines
cd ~/swissdlt/
#put your mining node command here
~/swissdlt/start-node.sh
sleep 3
#    cho "node1 is NOT running!"
     echo 'dead node1 restarted '$NOW'' >> ~/swissdlt/servercheck.txt;
fi
