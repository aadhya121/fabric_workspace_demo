-- Auto Generated (Do not modify) 4BED44CA144FD5E4AB7895ACBDBB81DA0891294EAB706A2A06DC5424E70B3A16
create view "dbo"."gold_weather" as SELECT
    w.DateID,
    w.GeographyID,
    w.AvgTemperatureFahrenheit AS AvgTemp,
    w.PrecipitationInches AS Rainfall,
    g.City,
    g.State,
    g.Region
FROM "warehouse"."dbo"."silver_weather" w
LEFT JOIN geography_mapping g
ON w.GeographyID = g.GeographyID;