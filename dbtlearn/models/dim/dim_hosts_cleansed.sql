{{
    config(
    materialized = 'view'
    )
}}
with 
src_hosts as 
(
    select *
    from {{ref("src_hosts")}}
)
select 
HOST_ID,
NVL( HOST_NAME , 'Anonymous' ) as HOST_NAME,
IS_SUPERHOST,
created_at,
updated_at
from src_hosts