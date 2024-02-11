#!/bin/sh
MSGFILE="$HOME/.status-msg"
if test -f "$MSGFILE"; then
    echo -n " MSG: "
    cat $MSGFILE
    echo -n " |"
fi
