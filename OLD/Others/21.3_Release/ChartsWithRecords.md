# Charts with records

- show more types of data in the same chart and perform comparisons among mutiple aggregation on the same field

- You can aggregate and filter data directly from the designer view

## `a!measure()`
- enhancements to the `a!measure()` function allow you to add filter conditions to your aggregations in a query or chart


## Distinct Count
- when building a chart with a record type and you want to make sure each record is only counted once, you can use the new aggregration function called Distinct Count Of (available under measure)

## Chart Component Configuration panel

- has new options
    - such as control over when chart data is refreshed, scroll all the way down the configuration panel to see refresh options
        - options include time interval, after each user interaction, after variable changes or after record actions completes

### Sort fields
- can set your sort fields in the design view without writing an expression, select the sort field and pick asending or desending order
- the list of possiable sort fields are the aliases for your groupings and measures
- you can now add multiple sort fields, click add sort
- you can use the more icon to change the order or delete a sort setting