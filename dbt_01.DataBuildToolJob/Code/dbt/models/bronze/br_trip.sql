select *
from {{ source('warehouse', 'Trip') }}