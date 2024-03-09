#!/bin/bash

total_full=0
total_now=0

for battery in /sys/class/power_supply/BAT*
do
    if [ -f "$battery/energy_full" ]; then
        full=$(cat "$battery/energy_full")
        now=$(cat "$battery/energy_now")
    elif [ -f "$battery/charge_full" ]; then
        full=$(cat "$battery/charge_full")
        now=$(cat "$battery/charge_now")
    else
        echo "Unsupported battery information in $battery"
        continue
    fi

    total_full=$((total_full + full))
    total_now=$((total_now + now))
done

if [ $total_full -gt 0 ]; then
    percentage=$((100 * total_now / total_full))
    echo "$percentage%"
else
    echo ""
fi
