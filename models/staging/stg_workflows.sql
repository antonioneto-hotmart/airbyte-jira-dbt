with
    source_data as (
        select
        JSON_VALUE(id, '$.entityId') as id_entity,
        JSON_VALUE(id, '$.name') as name,
        description,
        _airbyte_emitted_at as airbyte_emitted_at

        from {{ source('airbyte_dev','workflows') }}
    )

select * from source_data