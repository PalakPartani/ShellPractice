#!/bin/bash 
counter=0
fruit[((counter++))]="Apple"
fruit[((counter++))]="orng"
fruit[((counter++))]="banana"
echo "${fruit[@]}"

