#!/bin/sh

echo ""
echo ""
echo "Redash BINARY SYNC START-------------------------------------------------------------------------"

for nodename in mpredash mpredash02
do
    echo "Redash SYNC in $nodename -------------------------------------------------------------------------"
    rsync -rv -e ssh --delete script/*.sh suser@$nodename:/home/suser/redash
    rsync -rv -e ssh --delete script/Dockerfile suser@$nodename:/home/suser/redash
    ssh suser@nodename "chmod +x /home/suser/redash/*.sh"
done

echo "-------------------------------------------------------------------end  `date +%Y/%m/%d-%H:%M`"
