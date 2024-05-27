
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

select wondaris_customer_id, customers__attribute_gender, customers__attribute_accountcode from wndrs-mdp-internal-qa.Wondaris_Test_CDP.wndrs__customers_1662565456 limit 100

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
