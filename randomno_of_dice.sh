#!/bin/bash
echo "Random Number between 1 to 6 are :"$(( ( RANDOM % 6 )  + 1 ))
declare -A dice

