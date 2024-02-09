# Write Records Smart Service
- allows you to easily insert or update data in your source system and then automatically sync those changes in Appian
- can update records in your record type and your related record types
- must use a record type that uses a database as its source and has data sync enabled
- user executing this node must have Viewer permissions to all record types where data is created or updated
    - if not the node will fail and pause the process with an exception
- allows you to **write to the base record** and **related records** that are configured with a **one to many** or a **one to one relationship**
- to enable related records to be updated when the based record is updated you must enable **Write Related Records** on the record type relationship
- can write a combined total of 50,000 records, related records, and events per node

## Setup Tab
- where you'll configure the records to write, as well as any corresponding record events to write
- can configure record type events, if the record type has record events configured
    - **Always** writes events whenever the node executes
    - **Never:** will never write events 
    - **Only when…:** to specify the condition in which events are written, click Edit Condition to write an expression defining the specific condition

## Data Tab
- allows you to add additional inputs and store the resulting node outputs
- **Node inputs:**
    - **Pause On Error:** Determines whether the node should pause by exception if an error occurs writing to the source Default: true, and its not required
- **Node outputs:**
    - **Records Updated:** any type
        - list of records containing just the primary keys of records and related records updated by the smart service
        - data type is the record type configured on the Setup tab
    - **Error occurred:** of type boolean
        - returns true if any write to the source system or Appian fails; returns false if all writes succeed
    - **Error:** of type text
        - error that occurred when writing the records and the list of records that failed to write. This is only returned when the Pause On Error input is false


## Pass data using a record data type
- If you're not passing data from a variable, you can use a record type constructor to pass in the record data type and the data to write in a script task

## Configure Write Records Smart Service
1. Add a process variable that is of record type or write an expression to specify the records to update
    - Appian will automatically select the record type based on the Records Input
    - if you write an expression and Appian cannot determine the correct value, select the record type using the picker
2. Specify when to write events for the selected record type under **Choose when to write events**
    - the record type has to have record events configured
    - select the values to write for the event
    - must map values for the Event Type, User, Automation Type, Timestamp

## Store Output
1. Go to Outputs tab of the Data tab and click **Records Updated**
    - add the **record pv** to the **Target** property


![Write Relate Records](./images/image.png)
1. Go to the Setup tab
    - select a process variable or write an expression to specify the records to update
2. Go to Data tab(allows you to add additional inputs and store the resulting node outputs)
    - **Ouputs** ---> Results ---> **Records Update** 
    - add the **record pv** to the **Target** property
3. Go to the Assignment tab and select **Run as whoever designed this process model**
    - because writing data to source table requires a higher level of permission which a regular business user does not have


## Create records and related records
- create a form that allows users to update different types of data from different record types, and then pass that information to a process model

- The Write Records smart service will automatically write the data to the selected record type and any of its related record types.

You can write records and related records in the same node as long as the relationship configuration allows it and the records share one data source



- https://docs.appian.com/suite/help/23.3/manage-record-data.html