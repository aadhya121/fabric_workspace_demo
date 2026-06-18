CREATE TABLE [dbo].[incremental_weather] (

	[DateID] int NOT NULL, 
	[GeographyID] int NOT NULL, 
	[PrecipitationInches] float NOT NULL, 
	[AvgTemperatureFahrenheit] float NOT NULL
);