# Starting a process directly from an interface
- you can start a process from a interface in 3 ways
- each method allow you to configure the start of a process in the,  pass in data to a process
1. **a!startProcess:**
- the Start Process Smart Service as an expression function
- starts a asynchronous process in the background
- maintains original interface state after process starts
- use inside a savInto({}) parameter or Web API
- Use this for unattended activities related to a specific piece of information on the interface

        - Parameters
            - process model
            - parameters: pass as dictionary(key:value pair)
                - processVariableName: Value
                - make sure the process variables are [parameterized](../DataFlow/ProcessVariables.md#new-process-variable) in the process model, so you can pass the value from the interface

 ---               
2. **a!startProcessLink:**
- defines a link to start a synchronous process
- shows users a start form and any initial chained forms(activity chaining must be used)
- a new widow is generated
- after submitting the last form the user is taken bak to the original interface and that interface reloads
- used indside of a link parameter 
- takes the user to a process related to a specific piece of information on an interface
            
        - Parameters
            - process model
            - parameters: pass as dictionary(key:value pair)
                - processVariableName: Value
                - make sure the process variables are [parameterized](../DataFlow/ProcessVariables.md#new-process-variable) in the process model, so you can pass the value from the interface

---

3. **Record Actions:** 
- A configuration on a record type that starts a process within the context of a record view or a record list
- The process can also be started on a report or form using a record action component
- Use this for updating or adding records to your record type
- can show start and chained forms
- Maintain original interface state after process starts, only true when a record action is opened and submitted in a Dialog Box