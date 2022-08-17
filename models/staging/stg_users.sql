with
    source_data as (
        select
        accountid as id_account,
        displayname as display_name,
        emailaddress as email,
        _airbyte_emitted_at as airbyte_emitted_at

        from {{ source('airbyte_dev','users') }}
    )

select * from source_data