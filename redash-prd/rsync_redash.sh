#!/bin/sh

echo ""
echo ""
echo "Redash BINARY SYNC START-------------------------------------------------------------------------"

. script/env.sh

for nodename in mpredash mpredash02
do
    echo "Redash SYNC in $nodename -------------------------------------------------------------------------"
    rsync -rv -e ssh --delete script suser@$nodename:/home/suser/redash
done

echo "-------------------------------------------------------------------end  `date +%Y/%m/%d-%H:%M`"
