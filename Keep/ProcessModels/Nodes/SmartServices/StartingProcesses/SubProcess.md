# Subprocess Smart Service
- used to launch subprocesses from within your current process
- links the two published process models through a parent-child relationship and allows you to transfer data between them
- parent and child processes each contain references to the other
- can be run either asynchronously or synchronously

## Subprocess Smart Service: Asynchronously and Synchronous     
- have parent-child Relationship
- process variables can be passed by reference
    - the same object is passed between the parent and the child process
    - like storing a pointer to a value, rather than a static value, if the value is changed in one place it changes in both
    - you can update the object in both process models
    - could be a problem since 2 processes can update at the same time
- can access process reports of parent
- runs on same engine as parent/child
- process model to start is defined	statically
- medium performance under high load



## Subprocess Smart Service: Asynchronously
- no process outputs
- does not follow activity chaining
- does not share quick tasks
- the subprocesses show up in process reports for the current process
    - other asynchronous methods don't guarantee the subprocess will be on the same engine as the current process


## Subprocess Smart Service: Synchronous
- has process outputs
- follows activity chaining, only method that can follow activity chaining into the subprocess
    - [ Activity-Chaining into a Subprocess Activity](https://docs.appian.com/suite/help/23.3/Process_Model_Recipes.html#using-activity-chaining-to-display-multiple-forms-in-succession)
- shares quick tasks
- use when you want to 
    - use the results of the subprocess
    - chain to a User Input Task

### Variables
- parent process variables must be parameterized to be accessed from subprocess
    - use Setup --> Input Variables to add process variables from parent using the drop down
    - subprocess process variable should appear and should be mapped to parent process variable
- can map process variables of the subprocess to ones in the current process

---

- pass by value the object is “copied/cloned” so the same values will be there