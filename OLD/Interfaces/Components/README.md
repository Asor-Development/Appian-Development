# Interface Components
- [Drop Down]()


# Interface Components

### Reuseable Interfaces
- To call a reusable interface from a different interface, use `rule!` and the name of the interface you want to reuse
-  particularly useful technique for reporting interfaces


 _____________________________________________________________________


## Use the Visibility Setting to Conditionally Show Interface Components
**In some cases, you may want to only display a component based on a condition. To do this, navigate to the Visibility  setting in  the  Component Configuration  pane, then select  Only Show When and use the  Expression Editor  to write an expression.**
 
 - For example, imagine that you want to display a Comments box if a vehicle’s mileage is above 150,000 miles. You can do this by adding the expression 
    - `ri!vehicle.vehicleMileage > 150000`
    - determines whether the Comments component is displayed on the interface or not
    - default is set to true but when set to false, the component is hidden and not evaluated
 


_____________________________________________


## Display read-only details about a selected item for approval

1. Add a layout component to the Interface
2. Add rule input and name it according to your record
    - select the CDT in the Type field
    - for the canel rule input (name can be changed to approvalDecision, but leave Boolean as the type)
    
3. Add and configure components
    -  Select the correct values for  Display Value For example, for Vehicle Year, select  ri!vehicle.vehicleYear
    - Check the  Read-only  checkbox
4. Select the  Cancel  button
    - click the link under Value and change it to false 
    - Keep  ri!cancel  in the  Save Value To  field 
5. Select the  Submit  button
    - set the  Value  as  true  using the Expression Editor
    - Select  ri!cancel  in the  Save Value To  field


 __________________________________


##  Configure the Submit Button


________________________________


## Date
**Update the Date Added value to display the current date**

- **Display Value:** `today()`
    - this returns the current date
- select the Read-only checkbox
- **Save Value:** `a!save(ri!vehicle.vehicleDateAdded, today()) `
    - ri!vehicle.vehicleDateAdded is the target and today() is the value being saved into the target

___________________________

### Validations 
**This expression checks to see if the next maintenance date is before the last maintenance date. If it is, the field displays an error message. If not, the field is valid and displays no error message.**


```
 if(
    ri!vehicle.vehicleNextMaintenanceDate < 
    ri!vehicle.vehicleLastMaintenanceDate, 
    “The next maintenance date must be after the    last maintenance date.”, 
    null
    )
```
________________________________________

## File Upload
-  **Target Folder** this is where the file will be stored
    - should use a constant that points to this folder
- **Maximum Selections:** how many files should the user be able to upload
- **Selected Files:** same as Save Files To
- **Save Files To:**  same as Selected Files
____________________

## Dropdown Component
**Populate using data stored in a reference database table**
- To draw on the values stored in a reference table, you will need to create a local 
 variable
    - create an expression rule to get the data
    - you must add the local variable in expression mode
    - set the local variable to the expression rule and get the data
        ```
            local!category: rule!AA_GetReferenceData(type: "Category"),
            local!status: rule!AA_GetReferenceData(type: "Status"),
            local!condition: rule!AA_GetReferenceData(type: "Condition"),
        ```
    - use the local variable to add choice values and labels
- **Choice Labels:** `local!category[recordType!Category.fields.label]`
- **Choice Value:** ` local!category[recordType!Category.fields.id]`
- **Selected Value:** ` ri!vehicle.vehicleCategory` 
- **Save Selection To:** ` ri!vehicle.vehicleCategory` 
_____________________________________

## Image Component

- click the  +  in the Image field
    - Select  Document Image
    - click  a!EXAMPLE_DOCUMENT_IMAGE()
    -  Add `ri!vehicle.vehicleImage`
    - You will see an error message
        - This error appears because the value for the document cannot be null
        - fix this by adding test values to the interface
    - Click  Test
        - type expression into the vehicle row, `rule!AX_GetVehicleByID(1)`
        - click the Set as default test values link, and then click  Test Interface