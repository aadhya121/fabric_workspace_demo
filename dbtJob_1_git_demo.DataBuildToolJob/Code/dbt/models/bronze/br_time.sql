{{ config(materialized='view') }}

select * from {{ source('warehouse', 'Time') }}