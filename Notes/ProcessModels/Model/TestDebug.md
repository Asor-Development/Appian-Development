# Debugging
- used to validate the process model to ensure it is configured correctly and capturing data as intended
- when you save and publish it will automatically validate that its been configured correctly
errors

## Start Debigging
1. File ----> Start ----> Process For Debugging or `Ctrl + D`
2. The process model will run and forms and evrything will need to be filled out
    - if you have a start form it will opn up and you should provide test data to complete the form
    - once the form is completed the process instance displays in a new tab for monitoring
    - The completed nodes will be outlined in blue, active node will be outlined in green, and failed noeds will be outlined in red
    - if the process stops on a activity node click refresh and the process will continue
    - check to see if the data has been captured into the process Process Details ----> Variables, look to see if the PV contains the data you entered into the form
    - if there is no data then most likely the data was not mapped to the process correctly, then make sure you are not saving data to the same PV on input and output tabs, then checck to make sure the form has a display value and a save into value on the interface
    - when a node fail you can go to the errors tab of the process details to troubleshoot the issue
    -  Click the  Process Details button in the toolbar, and navigate to the Variables tab to verify that the data you entered into the form was captured by the 



**If you get an alert for a process you will likley want to check the Process Activity tab of the Monitoring tab located on the Appian Desginer view, check the checkbox next to `Processes with errors` and click the hyper link in th erorrs column to open the process error dialog that displays the error messages and details**