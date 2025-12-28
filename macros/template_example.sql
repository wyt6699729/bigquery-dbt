{% macro template_example(args) %}

    {% set query=v %}
        select true as boolean
    {% endset %}

    {% if execute %}
        {% set result=run_query(query).column(0).value()[0] %}
        {{ log('SQL result' ~ results, info=true)}}

        select {{ results }} as _is_real
    {% endif %}
{% endmacro %}