select *
from {{ source('bronze', 'abastecimento_vendas') }}
where cast(qtd as float) <= 0