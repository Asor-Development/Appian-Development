# [Appian Tutorials](https://docs.appian.com/suite/help/23.3/Tutorials.html)
**Configure process model that collects data for a new employee, saves the data to your record type data source, and alerts a user that the data has been created**

# [Process Modeling Turtorial](https://docs.appian.com/suite/help/23.3/Process_Modeling_Tutorial.html#create-the-process-model)
 
1. [Create the Appian Tutorial application](https://docs.appian.com/suite/help/23.3/SAIL_Tutorial.html)
    - [Set up ](https://docs.appian.com/suite/help/23.3/Records_Tutorial.html#part-1-set-up-and-create-the-record-type)
2. [Create the Employee record type and add data](https://docs.appian.com/suite/help/23.3/Records_Tutorial.html#create-the-employee-record-type-and-add-data)
    - Create record type
    - Create interface to load sample data   
3. [Create a records-powered interface](https://docs.appian.com/suite/help/23.3/SAIL_Tutorial.html)
    - Create the record rule input
    - Add components
    - Configure the new components
    - Configure choices using a constant
    - Add a validation
4. [Create Process Model](https://docs.appian.com/suite/help/23.3/Process_Modeling_Tutorial.html#)
5. Create a record list action
    - CONFIGURE NEW ACTION MANUALLY
    - add the process model 
    - open record list and test action
    - go to Monitor ---> Process activity to view the list of processes, cliking the process name/instance will open the process in monitoring view
        - can view process details, process history tab is active by default
        - can see each event Appian logged as you started the record list action, completed the input fields, and submitted the form
6. Add a cancel flow
    - Add a gateway node
        - There should be two end nodes one for each flow 
    - Configure the decision logic
    - Configure the end nodes
7. Write employee data 
    - Configure a Write Records node
8. Send Email Notification