SELECT Origin_Station,Destination_Station,
AVG(CASE WHEN Time_of_Day='Peak AM' THEN Journey_Duration END)
 AS Peak_AM_Duration,
AVG(CASE WHEN Time_of_Day='Peak PM' THEN Journey_Duration END)
 AS Peak_PM_Duration,
AVG(CASE WHEN Time_of_Day='Off Peak' THEN Journey_Duration END)
 AS Off_Peak_Duration
FROM tfl_commuter_trends
GROUP BY Origin_Station,Destination_Station
HAVING AVG(CASE WHEN Time_of_Day='Peak AM' THEN Journey_Duration END)
>= 2*AVG(CASE WHEN Time_of_Day='Off Peak' THEN Journey_Duration END);