# Process properties
**Used to govern the top level fetures of the model**

- Located on the tool bar

**Tabs**
1. **General:** general information about the process model
    - Process Model ID, UUID(Univsersal Uqiue ID), name, description, display name, priority
    - a dynamic display name makes it easy to identify specfic process instances when testing monitoring and troubleshooting
    - you can add a dynamic display name for the process model useing the display name field
        - ![Dynamic Display name](../../img/pmdynamicdiplayname.png)
    
2. **Variables:** lis the current process variables that have been defined for the process
    ![Variables Tab](../../img/variablestab.png)
3. **Process Start Form:** form used to start a process
    - you can select a interface or create an expression for the start form
    - you can also click the link to create a interface 
    - select yes when asked if you want to create process parameters to match your rule inputs
        - you wil see the rule inputs listed that are present in the interface
        - the value fields will be used if data needs to be passed from the process back to the interface
        ![Start Form PV](../../img/startform.png)
4. **Deadlines:** can be used in process optimization reports to indicate to users how the process if preforming over time
    ![Deadlin Tab](../../img/deadlinetab.png)
5. **Alerts:**specifies who to alert if a runtime error occurs during a process instance, you have two choices
    - **Use system defaults for error alerts:**
    - **Use custom error alert setting:**
        - you can send the custom alerts to process initiator, process model owner, define recipients by using an expression or by specifying users and groups
6. **Data Management:**
    - **Automatic Process clean up:** where you can choose from four option for when to clean up process instances
        - **Use System Default:** by default process that are completed or canceled are set to be archived after 7 day
        - **Archive:** can select the number of days (0-999) to archive the process instance after completion or cancelation(0-999 recommendation is 3 days)(archiving will save the data for furture auditing)
        - **Delete:** can select the number of days (0-999) to delete the process instance after completion or cancelation, any process that do not require auditing should be deleted immediately (deleting permanently removes the data)
        - **Do not automatically clean up processes:**
    - each time a process starts a process instance is created 
    - all process instaces including completed and canceled ones are retained in memory until archived or deleted
    - these instances need to be cleared out periodically to avoid slowing down system performance, if not it can lead to runtime issues and crashes
    