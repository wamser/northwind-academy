with
    fonte_categorias as (select * from {{source("erp","category")}}),
    renomeado as (
        select
            cast(id as int) as pk_categoria,
            cast(categoryname as string) as nome_categoria,
            cast(description as string) as descricao_categoria
        from fonte_categorias
    )

select *
from renomeado