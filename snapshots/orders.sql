{% snapshot orders_snapshot %}

{{
    config(
      target_database='dmgcp-del-108',
      target_schema='dbt_fundamentals',
      unique_key='id',
      strategy='timestamp',
      updated_at='_etl_loaded_at',
    )
}}

select * from {{ source('shop', 'orders') }}

{% endsnapshot %}