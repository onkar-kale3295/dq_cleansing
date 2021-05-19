{% macro replace_null(column_name,target_value) %}
 case when {{ column_name }} is NULL then '{{ target_value }}' else {{ column_name }} end
{% endmacro %}