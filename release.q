file:read0 `C:/developer/data/json/Tanishq.json

flatten:.j.k raze file

count r:((flatten)`SSNExportDocument)`MeterData

r:"S"$(((flatten)`SSNExportDocument)`MeterData)`UtilServicePointID
a0:24#r[0];a1:24#r[1];a2:24#r[2];a3:24#r[3];a4:16#r[4];a5:16#r[5];a6:16#r[6];a7:16#r[7]
r:"S"$(((flatten)`SSNExportDocument)`MeterData)`UtilDeviceID
b0:24#r[0];b1:24#r[1];b2:24#r[2];b3:24#r[3];b4:16#r[4];b5:16#r[5];b6:16#r[6];b7:16#r[7]
r:"S"$(((flatten)`SSNExportDocument)`MeterData)`MacID
c0:24#r[0];c1:24#r[1];c2:24#r[2];c3:24#r[3];c4:16#r[4];c5:16#r[5];c6:16#r[6];c7:16#r[7]
r:"S"$(((flatten)`SSNExportDocument)`MeterData)`MeterName
d0:24#r[0];d1:24#r[1];d2:24#r[2];d3:24#r[3];d4:16#r[4];d5:16#r[5];d6:16#r[6];d7:16#r[7]
tab2:([] UtilServicePointID:a0,a1,a2,a3,a4,a5,a6,a7;UtilDeviceID:b0,b1,b2,b3,b4,b5,b6,b7;
    MacID:c0,c1,c2,c3,c4,c5,c6,c7;MeterName:d0,d1,d2,d3,d4,d5,d6,d7)

r:(((flatten)`SSNExportDocument)`MeterData)`IntervalReadData

r:(((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)0)`LpSetId
s:(((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)0)`NumberIntervals
t:"S"$(((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)0)`EndTime
u:"S"$(((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)0)`StartTime
v:"S"$(((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)0)`IntervalLength
tab3:96#([] LpSetId:r;NumberIntervals:s;EndTime:t;StartTime:u)

r:((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)4
r:select LpSetId, NumberIntervals,"S"$EndTime, "S"$StartTime from r
a:4# flip r[0];b:4# flip r[1];c:4# flip r[2];d:4# flip r[3]
tab4:64#a,b,c,d

tab5:tab3,tab4

meterIndex:"i"$0
meter0:(((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval
a:24#select GatewayCollectedTime, BlockSequenceNumber from meter0
meter0:((((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval)`Reading
n:count meter0
meter0:(,/)(((((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval)`Reading)til n

meterIndex:"i"$1
meter1:(((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval
b:24#select GatewayCollectedTime, BlockSequenceNumber from meter1
meter1:((((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval)`Reading
n:count meter1
meter1:(,/)(((((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval)`Reading)til n

meterIndex:"i"$2
meter2:(((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval
c:24#select GatewayCollectedTime, BlockSequenceNumber from meter2
meter2:((((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval)`Reading
n:count meter2
meter2:(,/)(((((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval)`Reading)til n

meterIndex:"i"$3
meter3:(((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval
x:24#select GatewayCollectedTime, BlockSequenceNumber from meter3
d:"S"$((((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval)`IntervalSequenceNumber
d0:4#d[0];d1:4#d[1];d2:4#d[2];d3:4#d[3];d4:4#d[4];d5:4#d[5]
e:"S"$((((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval)`EndTime
e0:4#e[0];e1:4#e[1];e2:4#e[2];e3:4#e[3];e4:4#e[4];e5:4#e[5]
tab0:96#([] IntervalSequenceNumber:d0,d1,d2,d3,d4,d5;EndTimeO:e0,e1,e2,e3,e4,e5)
meter3:((((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval)`Reading
n:count meter3
meter3:(,/)(((((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval)`Reading)til n

meterIndex:"i"$4
meter4:(((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval
e:16#select GatewayCollectedTime, BlockSequenceNumber from meter4
meter4:((((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval)`Reading
n:count meter4
meter4:(,/)(((((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval)`Reading)til n

meterIndex:"i"$5
meter5:(((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval
f:16#select GatewayCollectedTime, BlockSequenceNumber from meter5
meter5:((((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval)`Reading
n:count meter5
meter5:(,/)(((((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval)`Reading)til n

meterIndex:"i"$6
meter6:(((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval
g:16#select GatewayCollectedTime, BlockSequenceNumber from meter6
meter6:((((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval)`Reading
n:count meter6
meter6:(,/)(((((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval)`Reading)til n

meterIndex:"i"$7
meter7:(((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval
y:16#select GatewayCollectedTime, BlockSequenceNumber from meter7
h:"S"$((((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval)`IntervalSequenceNumber
h0:4#h[0];h1:4#h[1];h2:4#h[2];h3:4#h[3]
z:"S"$((((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval)`EndTime
g0:4#z[0];g1:4#z[1];g2:4#z[2];g3:4#z[3]
tab1:64#([] IntervalSequenceNumber:h0,h1,h2,h3;EndTimeO:g0,g1,g2,g3)
meter7:((((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval)`Reading
n:count meter7
meter7:(,/)(((((((flatten)`SSNExportDocument)`MeterData)`IntervalReadData)meterIndex)`Interval)`Reading)til n

allMeterReading:meter0,meter1,meter2,meter3,meter4,meter5,meter6,meter7
a:a,b,c,x,e,f,g,y
tab:tab0,tab1
tab6:([] IntervalLength:10 20);tab6:160#select from tab6 where IntervalLength = 10

Report:tab2+a+tab+tab5+tab6+allMeterReading
meta Report

save `C:/developer/data/Report.csv