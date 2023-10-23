# Apply Filters
**After defining the source of your record type, you may decide that you don't need all the data from your source, or that you want to exclude certain data, to prevent end users from viewing it. Appian Records allow you to apply filters on your source data to exclude data that does not meet the specified criteria.**

- create interactive filters so users can determine which records appear on the record list
- User filters can also be used in grids outside the record list

### Source Filters
**When your record type has data sync enabled, you can apply source filters to specify which source data is synced and available in Appian. Source filters exclude unnecessary data so that you work with only relevant data in your application.**

- allows you to sync a subset of data that would otherwise exceed the row limit for record types with sync enabled

### Default Filters

**When your record type does not have data sync enabled, you can use default filters to specify which records appear in the record list and views based on the conditions you specify.**
- use the left pane data section in the Record Type object to create default filters
- The purpose of a default filter is to display a subset of records from the data source, based on filter criteria

### User Filters
**Allows users to sift through the record list data and only show vehicle records that match certain criteria. These filters can also be used in grids outside the record list**
- use the left pane interface section in the Record Type object to create user filters
- Once you create user filters for the record list, users can save and manage their own user filter selections
    - Users can save their filters by first choosing values from the existing user filters, then selecting Save filters as from the Filters menu
- users have access to a search field at the top of the record
    - This gives the user another option to search for the data they are looking for, the search field checks if the text entered is included in any field used in the record list or grid.
- You can use check boxes to allow the search box to be turned on or off. You can limit search to selected fields and set custom placeholders
#### Configure User Filters
- **Name:** what developers will see
- **Label"** what business users will see
- **Filed:**
- **List Configuration:**

### Creating Filters
- you can create either static or expression-based filters
- **Static Filters** using the guided configuration option will allow you to define a specific value or range of values for the field you are filtering on
- **Expression Based Filters** are dynamic and allow users to filter on the data that is avaiable in the data source
    - In order to create a user filter that contains dynamic choices, you need to create an expression-based user filter
