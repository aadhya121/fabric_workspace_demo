{% snapshot weather_snapshot %}

{{
    config(
        target_schema='dbo',
        unique_key='DateID',
        strategy='check',
        check_cols=[
            'GeographyID',
            'PrecipitationInches',
            'AvgTemperatureFahrenheit'
        ]
    )
}}

SELECT
    DateID,
    GeographyID,
    PrecipitationInches,
    AvgTemperatureFahrenheit
FROM dbo.Weather

{% endsnapshot %}