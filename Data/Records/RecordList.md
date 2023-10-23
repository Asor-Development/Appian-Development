# Record List
**A drillable list that user can used to search and filter to find records**
**The record list is part of the record type object. It is the list of all of the objects records. The list has a search field and user filters to help users find specific records. Views can also be attached to the record list so users can drill into a specific record.**

- once you create a record type object and connect it to a data source you can configure a record list
    - navigate to the list option in the left pane of the record type object
    - once the list is created you can see your record list URL and a icon, clicking the link or icon shows you how the record list will look to the user
- configure the fields that you want the user to see
- provide filters so that users can control how they see the records
- add actions and related action that users can perform
- If you run into trouble while editing a record list, you can use the Reset List button to restore the default configuration

# Record List
**Allow you to see your business information in a unified interface and take action in the context of that information**
- how users first interact with a record
- you can present data in a variety of ways(text, images, progress bars, icons)
- data is organized so users can quickly identify information about each record
    - **Examples:**
        - display records in data columns organized in a grid
        - display records in a feed format(best for mobile devices)
- can have the ability to sort and filter records to find specific records
- consider which devices will be used to view the application

__________________________________________________



## Configure Record List
**To start, configuring the record list, first select edit list from the record type object. Then you can start working in the Edit Record List configuration panes**
1. **Record List Style** Choose from a grid style or feed style
    - You can display data in a feed style record list, which is a great option if your users are working from mobile devices
    - You can also display data in a grid style record list, the records are laid out in a grid displaying the record data in a clean and concise view
2. **Edit Record List Pane**
    - **Configuration:** Change the value and properties of fields, such as label and sort
    - **Preview:** Can view all the chnages that have been made

### Update Columns
**How to delete and rearrange the order of columns in your record list**
- **Remove unwanted columns:** Hover over the three dots on the right side of the configuration pane and selecting the x

- **Rearrange Columns:** Hover over the three dots on the right side of the configuration pane and use the up and down arrows on the right side 

- **Edit Column Display:** To edit the individual columns to add more detail and make a richer interface, updating the label names, column so each letter is capitalized. From the configuration grid, select column name then update the text in the label field

- **Remove a Record Link:** Navigate to the column and select Clear under display value then choose what you want to display

- **Add Image:** 
    - Select display options for the image column
    - Select the document image option
    - **Edit as Expression:** Select the edit as expression icon for display value
        - Update the document parameter with `fv!row[Vehicle.image]`. Also, change the size parameter to "SMALL"
    - Select Display Options then STYLED ICON
    - **Edit as Expression:** Edit as Expression icon next to the display value
    - **Add If Statement:** add if statement for the a!richTextDisplayField value parameter
    - can see the icon and next maintenance data displayed together
    - https://academy.appian.com/#/online-courses/5b2907c2-2c77-4431-a91d-a5b80942b522

- **Add Record Link:**
    - Select the column name, and then select the display options button under display value
    - select RECORD LINK
    - The current display value is linked text that states Record Link. You can update this by selecting the edit as expression icon for display value
    - record link has three parameters: 
        - **label:** what the business user will see in the column
        - **recordType:**  tells Appian which record type to point to 
        - **identifier:** the specific record to open
    **To tell the grid to display the VIN number, you’re going to use the variable fv!row. The fv! prefix stands for function variable and it’s used to configure a function’s input. In this case, the grid provides several useful variables to get information about each row, each record ID, each page, and more. fv!row is used to configure the data for each row in the grid. In our case, that’s the data for each vehicle. To retrieve a specific field of data, you need to use a record type field reference. I’ll write out the expression, and explain as we go. Here’s the fv!row variable we just talked about. To get the VIN we have to index that variable, which you can do using square brackets. Inside those square brackets you need to tell Appian what column, or record field, you want, using a record type field reference. The syntax for a  field reference is first the record type, followed by a dot. Adding the dot opens up the “fields” menu. You can then choose which field from the record type you would like to reference. That’s the label, now let’s look at the recordType parameter. Here is where we’ll tell the grid which record type should be used in the record link. We’ll reference the vehicle record type. For the identifier parameter, we want to indicate that the grid should use the identifier for the row the business user clicks in. We do this by using fv!identifier. fv!identifier returns the primary key of the record and it's the way that Appian uniquely identifies each record. That way, when the business user clicks the record link for a specific Honda Accord, they are taken to the summary view for that Honda Accord and not a different Accord or other vehicle. Now that we’ve edited the label, recordType, and identifier parameters, let’s move on.**

    - **Add Custom Record Field** allow you to use predefined templates or free-form expressions to easily define how your record data is calculated, simplified, or transformed, then present those values as new fields in your record type
        - once created the field is available on the record type and the values are cached in Appian
        1. Select Custom Record Field
            - in the data model section of your record object and select a new custom record field.
        2. Select a template
            - You have access to a number of templates related to reporting and data preparation
        3. Configure Values
        4. Test Custom Record Field
            - Select the TEST button to preview how the custom record field will display
        5. Update Custom Field Name and click create
            - You can add this new field to your record list by adding a new column and updating its display value to the custom record field

_____________________________________________

### Record Grids
**Using a record-grid interface is an alternative way to show record type data, including filtering, paging, and record actions**
- you can show record list data in other interfaces by using a read-only grid
- read-only grid component is a modern interface component that is designed to handle your data intelligently
- the grid can display data in various formats, provide advanced filtering, paging, and sorting options, allow row selection, and pass record data to other components in the interface
- when you use a record type as the grid's data source, you can bring in record actions
- fv! is the variable prefix used to configure the data for each row in a grid.
- easy to set up, modify, and configure for user interaction.
1. **Create New Interface**
2. **Choose Read-Only Grid**
2. **Record Type Data Source** You have several options for source data including record types
2. **Configuration**
    - you can set up or add previously created filters, and edit, add, or remove components
    - can allow users to export data to Excel, have user filters, and take action on the data. 
    - If you are using a grid style record type, your read-only grid will display the same data you configured in your record list
2. ****