# Record Actions
**There are two types: record list actions and related actions**

### Record List Actions
**A record list action is a link to a process model that a user can start directly from the record list. The most common type of action to configure here is for users to create a new record for that record type**

##### Create Action
- Select the generate record action button to start creating a new action
    - You can use this button to set up both record list and related actions
- Select the type of action you would like Appian to generate
    - Create, Update or Delete
- Name and Describe your Action
- Review the Generated Objects
    - Review the objects that Appian generated and update object names if needed
- You can see the newly generate action inside your record type object

### Relate Actions
**A related action is also a link to a process model. This differs from a record list action because these process models are started directly from a record view and use data from that record. The difference is related actions are in the context of a record, so you can pass in record data to start the process.That data is referred to as the context for the related action. Examples of a related action is a link to update the some details for a particular record**
- The main difference between a record list action and a related action is the context
- With related actions, you can provide context (or data from your record) to the process model.
##### Create Related Action
- Select the generate record action button to start creating a new related action
    - You can use this button to set up both record list and related actions
- The context expression allows you to map record data to process variables to kick off a related action
- In order to pass data from a record to a process, you must configure parameterized process variables that will receive data from the record



### RV! Domain Prefix

**In the record type object, you'll use rv! to reference record field values when you configure any of the following:**
- A view definition expression
- An expression for the record title on a record view
- A view's action visibility expression
- A feed-style list expression
**When you want to pass a reference to the record itself, use rv!record. This is typically used for configuring the summary view.**
- To call a specific field, use rv!record followed by square brackets and the name of the field.

## Ceate Record Action Manually
1. [Create a process model](https://docs.appian.com/suite/help/23.3/Process_Modeling_Tutorial.html#create-the-process-model)
2. Create a record list action
    - Open the record type and select **Record List Actions**
    - Click **CONFIGURE NEW ACTION MANUALLY**
    - Add a name, icon and the process model you created
