{{ config(materialized='view') }}

select *
from {{ ref('br_hackney_license') }}