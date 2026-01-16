{{ config(materialized='table') }}

WITH tb1 as(
    select
     CUSTOMER_ID,	
    CUSTOMER_NAME,	
    STATUS, 	
UPDATED_AT 		

    from {{source('datafeed_shared_schema','customer')}})
select * from tb1
