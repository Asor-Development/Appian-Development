# Record Updates


## Record Actions
**Appian can create and configure common actions for you**

- choose whether the action should enable users to create, update or delete records
- Appian will configure the record action and uses exixting objects or creates new design objects, including process models and interfaces, you can then edit these object as needed

## Easier to generate and amanage actions
- both related actions and record list actions to a single place(on the new record ations page in the record type)
- you can add multiple record list actions to your record type, enables you to start mutiple processes directly from the record list
- you can choose the preferred dialog size for a record action, will only apply to actions that are configured to open in a dialog box(small, medium, large)

- from a record types data model page, you can view all the locations where a field is used with a single click, allowing you to see which object will be affected if a change is made
    - click the plus icon to expand the view from and object
    - click the location column to drill down even further


## Data Sync
- when you define a new record data synce is enabled by default now
- the number of rows a record type can sync from a source has doubled from 500,000 to 1,000,000 rows
    - use relate and transform more data all without sacrificing performance
- when syncing from a web service, you will now receive more detailed error messages when there is an issue connecting with or retrieving data fom the external system or service
- when working with records from a web service you can define a rate limit, to decrease the frequency od API requests made to the source system when synce occurs, (toggle on the feature and select a request rate from the dropdownlist)