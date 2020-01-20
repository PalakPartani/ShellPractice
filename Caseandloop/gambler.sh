
#!/bin/bash -x
STAKE=100
cash=$STAKE
goal=200
win=0
loss=0
bets=0
while [[ $cash -gt 0 && $cash -lt $goal ]]
do
((bets++))
if [ $((RANDOM % 2)) -gt 0 ]
then
((cash++))
((win++))
else
((cash--))
((loss++))
fi
done

echo -e "Bets = $bets \nWin = $win \nLoss = $loss \nCash = $cash"

