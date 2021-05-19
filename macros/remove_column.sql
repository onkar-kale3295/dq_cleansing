{% macro remove_columns(table_name,column_list) %}
    {% set col_list = [] %}
    {% set table_columns = [] %}
    {% set cols = column_list %}
    {% set columns = adapter.get_columns_in_relation(table_name) %}
    {% for column in columns %}
        {% set table_columns =  table_columns.append(column.column) %}
    {%endfor%}
    
 {{ (table_columns | reject('in',cols) | list) | join(' , ') }} 
{% endmacro %}