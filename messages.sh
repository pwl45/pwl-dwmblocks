#!/bin/sh
MSGFILE="$HOME/.status-msg"
if test -f "$MSGFILE"; then
    echo -n " MSG: "
    cat $MSGFILE
    echo -n " |"
    # TODO: bluespace; need dwm status 2d first
    # echo "               "
fi

# echo "HEY!"
