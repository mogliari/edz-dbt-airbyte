with dw_faturamento_ano as (
    select date_part('year', purchased_at) as ano
    ,sum(ap.price) as faturamento
    from public.airbyte_purchases as pur
    inner join public.airbyte_products as ap
    on pur.product_id = ap.id
    group by 1
    order by 1 desc
)


select * from dw_faturamento_ano