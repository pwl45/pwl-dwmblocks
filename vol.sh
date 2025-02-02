#!/usr/bin/env bash
IS_MUTED=$(pamixer --get-mute)
VOL=$(pamixer --get-volume)

if [ $IS_MUTED = "true" ]; then
    echo "V̶o̶l̶: x$VOL"
else
    echo "Vol:  $VOL "
fi
