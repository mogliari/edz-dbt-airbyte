with dw_faturamento_model as (
    select ap.model as model
    ,sum(ap.price) as faturamento
    from public.airbyte_purchases as pur
    inner join public.airbyte_products as ap
    on pur.product_id = ap.id
    group by 1
    order by 1
)


select * from dw_faturamento_model