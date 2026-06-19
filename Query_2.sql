SELECT
    j1.Journey_ID,
    j1.Origin_Station,
    j1.Destination_Station,
    j1.Journey_Cost
FROM tfl_commuter_trends j1
WHERE j1.Journey_Cost >
(SELECT  AVG(j2.Journey_Cost) * 1.5
    FROM tfl_commuter_trends j2
    WHERE
        j2.Origin_Station = j1.Origin_Station
        AND j2.Destination_Station = j1.Destination_Station
        AND j2.Journey_ID <> j1.Journey_ID
);