{% macro cast_int(col) -%}
    CAST(SPLIT({{ col }}, '\\.')[0] AS BIGINT)
{%- endmacro %}

{% macro cast_decimal(col) -%}
    CAST(REPLACE({{ col }}, ',', '.') AS FLOAT)
{%- endmacro %}

{% macro cast_timestamp(col) -%}
    TO_TIMESTAMP({{ col }})
{%- endmacro %}

{% macro cast_date(col) -%}
    TO_DATE({{ col }})
{%- endmacro %}