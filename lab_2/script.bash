#!/bin/bash


ip=$*

octet1=$(echo $ip | cut -d '.' -f 1)
octet2=$(echo $ip | cut -d '.' -f 2)
octet3=$(echo $ip | cut -d '.' -f 3)
octet4=$(echo $ip | cut -d '.' -f 4)

decimal_to_binary() {
    echo "obase=2; $*" | bc
}


binary_ip="$(decimal_to_binary $octet1).$(decimal_to_binary $octet2).$(decimal_to_binary $octet3).$(decimal_to_binary $octet4)"


echo $binary_ip
