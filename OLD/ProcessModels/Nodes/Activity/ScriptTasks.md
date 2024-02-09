# Script Tasks

**Used to perform user-defined business logic in a process**
- Often used to call an expression rule for 
    - manipulating data in a process
    - execute a query to a relational database
    - evaluate a decision that elps to determine how the process will progress
- **Example:** a script task that sets the vehicle id in comments database equal to the vehicle id associated with the comment, this way we can identify which vehicle each comment is associated with in the comments database

## Node Inputs/Outputs
- have no predefined node inputs or outputs
- you can use both inputs and outputs if you want to perform a sequence of operations on data(do this, then do that)
- if you only need to perform a single operation you only need to configure node outputs

### Configure Script Tasks Node Output

1. Click New Custom Output
2. **Expression:** Open the expression editor and click the rules and constats tab then select the expression you want to use
3. **Target:** commentsPV
    - save the updated vehicle id and comment data to the comment PV for use elsewhere in the process
    - the next step in the process will write the updated vehicle id and comment to the DSE
