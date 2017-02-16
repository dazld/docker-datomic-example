#!/usr/bin/env bash
set -e

if [[ $# -eq 0 ]]; then
    printf "usage: $(basename $0) <username> <key> \n";
    exit 1;
fi



for x in datomic-console datomic-pro-starter; do
    CRED="$1:$2"
    DEST=$x/.credentials
    printf "created: $DEST\n"
    echo $CRED > $DEST
done
