with 

source as (

    select * from {{ source('raw_covid19', 'epidemiology') }}

),

renamed as (

    select
        date,
        new_recovered,
        new_tested,
        new_deceased,
        new_confirmed,
        cumulative_deceased,
        cumulative_tested,
        cumulative_recovered,
        cumulative_confirmed,
        location_key,
        _airbyte_ab_id,
        _airbyte_emitted_at,
        _airbyte_normalized_at,
        _airbyte_epidemiology_hashid

    from source

)

select * from renamed
