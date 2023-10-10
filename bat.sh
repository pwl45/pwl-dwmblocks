#!/usr/bin/env bash
batstate=batstate=$( upower -i /org/freedesktop/UPower/devices/battery_BAT0 )

batpct=$( grep -oP 'percentage:\s* \K\d*%' <<< $batstate )
grep -q 'state:\s*charging' <<< $batstate  && batchg='+' || batchg=''

echo "$batpct$batchg"
