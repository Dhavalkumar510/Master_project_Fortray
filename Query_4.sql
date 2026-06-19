SELECT
    Origin_Station,
    COUNT(*) AS Total_Journeys,
    SUM(CASE WHEN Journey_Cost = (SELECT MAX(Journey_Cost)FROM tfl_commuter_trends)
            AND Journey_Duration < 15 THEN 1 ELSE 0 END) AS Suspected_Ghost_Taps,

    ROUND(SUM(CASE WHEN Journey_Cost = (SELECT MAX(Journey_Cost) FROM tfl_commuter_trends)
                AND Journey_Duration < 15 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2)
				AS Ghost_Tap_Percentage

FROM tfl_commuter_trends
GROUP BY Origin_Station
ORDER BY Ghost_Tap_Percentage DESC;