#!/bin/bash -x
declare -A  sounds
sounds[dog]="bark"
sounds[wolf]="tweet"
echo "dog sound " ${sounds[dog]} #key provided  value returned
echo "all sound " ${sounds[@]} 

