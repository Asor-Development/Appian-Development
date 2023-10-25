# Rule Inputs
- Rule inputs are non-local variables that are provided to the expression because of where it is being evaluated
- placeholders that say pass something at runtime
- use rule inputs to define variables
- Must specify
    - **Name:** camel casting is recommended for all variables `firstVariable`
    - **Type:** data type of the rule input
        - if you want to use a CDT or record start typing the name and the auto suggest will help you
    - **Array:** whether a rule input can accept a list of values or not
- the rule prefix `ri!` is used to reference the rule input in an expression