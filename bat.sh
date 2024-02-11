#!/usr/bin/env bash
batpct=$(cat /sys/class/power_supply/BAT0/capacity)
grep -qi 'charging' /sys/class/power_supply/BAT0/status  && batchg='+' || batchg=''
echo "$batpct$batchg"
