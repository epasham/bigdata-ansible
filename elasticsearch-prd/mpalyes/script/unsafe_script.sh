#!/bin/sh

echo ""
echo ""
echo "ES ALY delete script START-------------------------------------------------------------------------"

. script/env.sh

for nodename in data1 data2 data3 data4 data5 data6 data7 data8 data9 data10 data11 data12 data13 data14 data15 data16 data17 data18 data19 data20 data21 data22 data23
do
    echo "delete directory in $nodename -------------------------------------------------------------------------"
    rm -rf $nodename/alyes_master/nodes/0/_state/global-10640.st
done