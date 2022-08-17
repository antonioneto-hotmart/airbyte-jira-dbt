with
    source_data as (
        select
        displayname as display_name,
        accountid as id_account,
        emailaddress as email,
        _airbyte_emitted_at as airbyte_emitted_at

        from {{ source('airbyte_dev','users') }}
    )

select * from source_data