select *
from {{ source('bronze', 'abastecimento_vendas') }}
where cast(qtd as bigint) <= 0