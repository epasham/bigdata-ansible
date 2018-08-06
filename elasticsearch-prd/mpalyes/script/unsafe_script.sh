#!/bin/sh

echo ""
echo ""
echo "ES ALY delete script START-------------------------------------------------------------------------"

for nodename in data1 data2 data3 data4 data5 data6 data7 data8 data9 data10 data11 data12 data13 data14 data15 data16 data17 data18 data19 data20 data21 data22 data23
do
    echo "run script in $nodename -------------------------------------------------------------------------"
    rm -rf /$nodename/alyes_master/nodes/0
    cp -r /$nodename/alyes_master/nodes/1 /$nodename/alyes_master/nodes/0
done