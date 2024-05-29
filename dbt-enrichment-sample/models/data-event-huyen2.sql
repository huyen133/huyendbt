
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

select wondaris_event_id, transactions__transaction_salesgross, transactions__transaction_grossprofit from wndrs-proprod-demo-clean-data.Wondaris_Test_CDP.wndrs__events limit 110

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
