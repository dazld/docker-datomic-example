#!/usr/bin/env bash
set -e

if [[ $# -eq 0 ]]; then
    printf "usage: $(basename $0) <username> <key> <license> \n";
    exit 1;
fi



for x in datomic-console datomic-pro-starter; do
    CRED="$1:$2"
    DEST=$x/.credentials
    printf "created: $DEST\n"
    echo $CRED > $DEST
done

sed -i '' -e "s#license-key=.*#license-key=$3#g" datomic-pro-starter/config/dev-transactor.properties
