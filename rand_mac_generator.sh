#!/bin/bash
# to put the whole mac address list in a txt file, here in 'maclist.txt'
macchanger -l > maclist.txt
# $(shuf -n 1 maclist.txt | awk '{print$3}') for getting a random line from the 'maclist.txt' and slicing the third column
# $(printf '%02x:%02x:%02x' $[RANDOM%256] $[RANDOM%256] $[RANDOM%256]) for generating a hexa decimal value of any random number ranging 0-255
# eth0 is the network interface
macchanger -m "$(shuf -n 1 maclist.txt | awk '{print$3}'):$(printf '%02x:%02x:%02x' $[RANDOM%256] $[RANDOM%256] $[RANDOM%256])" eth0 
