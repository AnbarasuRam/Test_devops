select C_NATIONKEY, count(*) _cust_count
from {{ ref('base_SCHEMA1__TEST_TABLE') }}
group by 1
order by 2 desc