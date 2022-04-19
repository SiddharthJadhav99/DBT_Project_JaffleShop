{% macro dollars_to_rupees(column_name, precision=2) %}
    ({{ column_name }} * 72)
{% endmacro %}