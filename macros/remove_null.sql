{% macro remove_null(table_name,column_list) %}
{% set columns = column_list %}
select 
    * 
    from {{table_name}}
    where 
    {% for column in columns %}
        {{column}} IS NOT NULL 
    {% if not loop.last %} OR {% endif %}
    {% endfor %}
{% endmacro %}