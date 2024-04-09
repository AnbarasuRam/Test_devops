with source as (
      select * from {{ source('SCHEMA1', 'TEST_TABLE') }}
),
renamed as (
    select
        {{ adapter.quote("C_CUSTKEY") }},
        {{ adapter.quote("C_NAME") }},
        {{ adapter.quote("C_ADDRESS") }},
        {{ adapter.quote("C_NATIONKEY") }},
        {{ adapter.quote("C_PHONE") }},
        {{ adapter.quote("C_ACCTBAL") }},
        {{ adapter.quote("C_MKTSEGMENT") }},
        {{ adapter.quote("C_COMMENT") }}

    from source
)
select * from renamed
  