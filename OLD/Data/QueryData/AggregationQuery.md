# Aggregation Query

- returns groupings and measures `a!aggregationFields()`
    -  `a!queryRecordType(fields:a!aggregationFields())`
    - can group fields by common values and produce calculated results on those specified fields
    - **Groupinga:** allow you to group fields by common value `a!grouping()`
    - **Measures:** allow you to calculate the values in certain fields `a!measure()`

#### Generate a Record Type Aggregation Query
1. Open query editor and select the record type you want to use and click continue
2. Click aggregate records buttons
    - a warning will appear telling you that it will clear all selected record fields and filter and data limits will remain
    - click aggregate to contiune
3. There are two sections
    - **Groupings:** used to select the fields by which you want to group the returned record(**Field to group by:** make)
    - **Measures:** used to select the fields to operate on(**Field to count:**id, **function:**COUNT)
        - **Example:** to count the number of vehicles for each make, we would group by make and use the count function to count each id in each group
        - returns a list of maps