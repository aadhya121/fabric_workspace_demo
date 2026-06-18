{{ config(
    materialized='incremental',
    unique_key='DateID'
) }}

SELECT
    DateID,
    GeographyID,
    PrecipitationInches,
    AvgTemperatureFahrenheit
FROM dbo.Weather

{% if is_incremental() %}

WHERE DateID >
(
    SELECT COALESCE(MAX(DateID),0)
    FROM {{ this }}
)

{% endif %}