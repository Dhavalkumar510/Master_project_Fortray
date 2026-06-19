SELECT
    Origin_Station,
    Transport_Mode,
    AVG(Delay_Minutes) AS Avg_Delay,
    COUNT(*) AS Total_Journeys,
    SUM(
        CASE
            WHEN Congestion_Tier = 'Severe Friction'
            THEN 1
            ELSE 0
        END
    ) * 100.0 / COUNT(*) AS Severe_Friction_Percentage
FROM tfl_commuter_trends
GROUP BY
    Origin_Station,
    Transport_Mode
HAVING
    AVG(Delay_Minutes) > 10
    AND
    SUM(CASE WHEN Congestion_Tier = 'Severe Friction' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) > 20;
	
	