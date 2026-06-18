{{ config(materialized='table') }}

select
    FareAmount,
    {{ add_tax('FareAmount') }} as TaxAmount
from {{ ref('stg_trip') }}