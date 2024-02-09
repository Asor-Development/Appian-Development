# Configure Auto Generated PM Process Properties
**Record actions has creates a preliminary process model for you**
- you can edit this auto-generated process model to fit your application
- security is already set for this mode
- a expression rule that creates a dynamic display name is also created for the Process Display Name field in the General Tab of process properties
    -  Before you use this expression rule open the expression rule in the expression editor and change the name of the record rule input to an appropiate name for your record

1. [Update the record variable name](../../docs/Exercise%208_%20Process%20Modeling%20101%2C%20Part%201(5).pdf)
    - Process Properties ----> Variables
    - updated the record variable name to match the record
2. Go to the 
    - Process Start Form tab to review the interface that starts the process and make sure all the rule inputs for this interface are present 
    - Alerts tab to review the alert settings and make sure that the Administrators group is selected to receive alert notifications
    - Data Management tab to adjust the timeline for process archiving, will archive process history, metrics, and variables from memory
_______________________________________
## Submit or cancel
**If the Registrar submits the form, the process will continue to the next process node. Appian has created a template for you that you will need to edit before it becomes fully functional.**

1. Rename Start Node(Add New Vehicle) and Add a swimlane for Supervisors 
    - Click the Add Horizontal Lane button in the toolbar to add a swimlane
2. Add a new  End Event  above the Cancel? XOR gateway
    - Rename it to  End - Cancel
    -  Delete the  line  connecting the  Cancel? XOR gateway and the End Node and connect the  Cancel? XOR gateway and End - Cancel nodes 
    - Double-click  Cancel?, and navigate to the  Decision  tab
        - pv!cancel  , select the  End - Cancel  in the  Result  column
        - Else if none are TRUE condition, select Write new Vehicle to DSE in the Result column, and click OK
3. Configure the Write to Vehicle Entity 
    - Rename the Write new Vehicle to DSE node to Write to Vehicle Entity
    - Delete the line connecting Cancel? and Write to Vehicle Entity  . 
    - Move the Write to Vehicle Entity and End Node nodes to the Supervisors lane
    - Double-click Write to Vehicle Entity, Data tab, and then to the Inputs tab
        - Click record, and update the name
        - Confirm that  pv!yourrecordname is selected in the Value field
        - Use the Assignment tab to assign  the Write to Vehicle Entity activity to process designers
___________________________________________

## Configure the User Input Task 
**This node is to add the Supervisor approval form to this process**
1. Add a User Input Task  node to the Supervisor swimlane to the left of Write to Vehicle Entity and rename it to Review Vehicle
2. Reconnect the nodes so that  Review Vehicle  falls in  between  Cancel?  and  Write to 
 Vehicle Entity
3. Double-click  Cancel?, and navigate to the Decision tab
    - Make sure Review Vehicle is now selected for the Else if none are TRUE ondition in the Result column
4. Double-click Review Vehicle
    - Edit the Task Display Name to make it dynamic 
5. Navigate to the Forms tab, and use the Directory icon to select the AX_SupervisorForm
    - allow the process model to automatically create node inputs to match your interface's inputs. 
6. Navigate to the  Assignment  tab
    - in the Assign to the following  field, type and select AX Supervisors  from the list of auto-suggestions
7. Navigate to the Data  tab
    - configure the inputs in this tab to ensure that all existing vehicle data flows into the form, and the new data, entered by the Supervisor, is captured as well????
____________________________________________
**If the Supervisor denies the AX_SupervisorForm form, the process will end. If the Supervisor approves the form, the process will continue to the next process node. Follow the steps below to configure the Approved? XOR node.**


1. Add a XOR node to the right of Review Vehicle and rename it Approved? 
2. Add an End Event node above Approved? Rename it End - Reject  
3. Connect the Approved? and End-Reject nodes. 
4. Double-click Approved?, and navigate to the Decision tab. 
    - Click New Condition, and then click the Expression Editor icon next to the first condition. In the Expression Editor, type pv!approvalDecision
    - In the Results column, in the first dropdown, select  Write to Vehicle Entity  . 
    - In the Results column, in the second dropdown for the Else if none are TRUE condition, select End-Reject

________________________________________________________________________________________

## Configure the Script Task 
**You will use a script task to store three variables: Vehicle Last Modified Date, Vehicle Last Modified By, and Vehicle Added By**
- the script task is used because we don’t want the user to enter these 
 values manually, so we will lift the date and the name of the user from the process 
 hy
1. Add a Script Task to the right of Approved?
    - Rename it Store Additional Values
2. Double-click Approved?, and navigate to the Decision tab. 
    - Make sure Store Additional Values is selected in the first dropdown of the  Results column
4. Double-click Store Additional Values, and navigate to the Data tab
    - Click the Outputs tab and click New Custom Output
        - set the last modified date as the current date `today()`!!!@@@#####
 6.   For the  Target  , click the  inline arrow,  and hold your  cursor over  vehicle  . Select 
 vehicle.vehicleLastModifiedDate  . 






