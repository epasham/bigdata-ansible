#!/bin/sh

echo ""
echo ""
echo "ES ALY delete script START-------------------------------------------------------------------------"

for nodename in data1 data2 data3 data4 data5 data6 data7 data8 data9 data10 data11 data12 data13 data14 data15 data16 data17 data18 data19 data20 data21 data22 data23
do
    echo "run script in $nodename -------------------------------------------------------------------------"
    rm -rf /$nodename/alyes_master/nodes/0/indices/2EIKmy4NRsSWbnPlbXAUlg
    rm -rf /$nodename/alyes_master/nodes/0/indices/z6kzxFj0Tiiq-B1g-xy_bw
    rm -rf /$nodename/alyes_master/nodes/0/indices/Gue16jwwQXawI_P38tVKjw
    rm -rf /$nodename/alyes_master/nodes/0/indices/viEFL7kDS5y3kwEX3wXUwA
    rm -rf /$nodename/alyes_master/nodes/0/indices/YbrRem-KRGWTSvIDVK02_w
    rm -rf /$nodename/alyes_master/nodes/0/indices/2EIKmy4NRsSWbnPlbXAUlg
    rm -rf /$nodename/alyes_master/nodes/0/indices/z6kzxFj0Tiiq-B1g-xy_bw
    rm -rf /$nodename/alyes_master/nodes/0/indices/Gue16jwwQXawI_P38tVKjw
    rm -rf /$nodename/alyes_master/nodes/0/indices/viEFL7kDS5y3kwEX3wXUwA
    rm -rf /$nodename/alyes_master/nodes/0/indices/viEFL7kDS5y3kwEX3wXUwA
done