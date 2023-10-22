# Start Form
**A process that starts whena form is filled out needs a process start form 
## Process Start Form
- form used to start a process
- you can select a interface or create an expression for the start form
- you can also click the link to create a interface 
- select yes when asked if you want to create process parameters to match your rule inputs
    - you wil see the rule inputs listed that are present in the interface
    - the value fields will be used if data needs to be passed from the process back to the interface
    ![Start Form PV](../../img/startform.png)

## Creat Start form from within the process model
**Start Form to add**
- To add a maintenace request
1. Open the process properties and click the `Process Start Foem` tab
    - you can create a interface from within the process model, by clicking the create interface link
        - give the interface a name, description, select the folder to save into, and click save
        - to open or edit the interface click `Edit Interface`
        - selct a form template to add to interface(Form interfaces comes with cancel and submit buttons)
2. Identify the Data that will be displayed and edited
    - We will need the vehicle and maintenace data
    - **Rule Inputs:**
        - **vehicle:** Type = Vehicle Record Type
        - **maintenace:** Type = Maintenace CDT
3. In the Vehicle details section there will be read only since we are creating a maintenace request we only need to add to the maintenance record
    - add the vehicle details, using text fields, add a display value(ri!vehicle.fieldname) and a SaveInto (ri!vehicle.fieldname), do this for every field you want in the read only form
    - check the read only checkbox
4. In the Maintenace Details section there will be a form that will be filled out to create a maintenaces request on a selected/displayed vehicle
    - add the required components to the interface for maintenace details, add a display value(ri!maintenace.fieldname) and a SaveInto (ri!maintence.fieldname), do this for every field you want to be completed in the form
    - check the required checkbox for every required field
    - add any reqired validations

