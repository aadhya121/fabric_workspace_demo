CREATE TABLE [dbo].[weather_snapshot] (

	[DateID] int NOT NULL, 
	[GeographyID] int NOT NULL, 
	[PrecipitationInches] float NOT NULL, 
	[AvgTemperatureFahrenheit] float NOT NULL, 
	[dbt_scd_id] varchar(32) NULL, 
	[dbt_updated_at] datetime2(6) NULL, 
	[dbt_valid_from] datetime2(6) NULL, 
	[dbt_valid_to] datetime2(6) NULL
);