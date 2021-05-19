{% macro change_case(column_name,case) %}
    {%if case in ["capitalize","CAPITALIZE"]%}
        INITCAP({{column_name}})
    {%else%}
        {{case}}({{column_name}})
    {%endif%}
{% endmacro %}