# 

1. Data Syncing: 
- You can now configure Appian to skip a failed sync and use data from last successful sync
    - details about the failed sync are avaliable under the records type sync history/monitoring view
    - adminstrators will get an email notification about the skipped sync, and a link to the record type
    - you can toggle the failed sync skipping behavior on and off
        - by default record types created before 21.4 release will have the failed sync behavior toggled off
        - by default record types created in the 21.4 release and later will have the failed sync behavior toggled on
    - Failed Data Sync
        - any sync batch will be retried up to 3 times before failing(this happens automatically and can not be turned off)
        - up to 10 retries total before entire sync fails



2. Aggregate and filter related data in custom related record:
    - the aggregate related records fields template now enables filtering of the aggregated data

3. Charts:
    - You can sort the data displayed in a chart by a field that is not referenced in the chart, this includes record and related record fields
    - When a chart needs to account for time intervals in which no data was collected, you can enable a new setting available under the grouping configuration called `Show time intervals with no data`
        - all time interval labels are displayed along the X axis and you can easily identify the ones with no data


4. Records List
    - you users may need help with searching, now you can configure the search box in several ways
        - by deafult all integer and text fields referenced in a record list will be searched
        - if you want to exclude some fields from being searched
            - go to the record type's Search and Filter page and mark the checkbox labeled `Limit search to selected fields` and then identify only the fields that can be searched
        - you can also add custom a placeholder for the search box, for internationalization purposes or to provide additional information to the user
    - you can remove the searchbox from the records list, by unchecking the `Show search box checkbox 