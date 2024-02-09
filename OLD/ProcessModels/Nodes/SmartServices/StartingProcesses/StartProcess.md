# Start Process Smart Service
- initiates processes in your process models, interfaces, and web APIs
- processes run asynchronously, meaning that the current process flow will continue without waiting for these processes to complete
- is equivalent or better than process messaging in every category
- to start multiple subprocesses at the same time you should use Multiple Node Instances (MNI) functionality
    -  the Start Process smart service will manage load on the system by spreading the newly started processes across all execution engines
- process model to start is defined	dynamically
- activity chaining is followed in the new process until chaining ends, then the parent process resumes (even if the new process has not finished)
- good performance under high load
- no parent child relationship
- process variables cannot be passed by reference
- process outputs not available
- cannot access process reports of parent
- quick tasks are not shared

## Node
- behavior of the node depends on the permissions of the user running the smart service

## `a!startProcess`
- this is the Start Process smart service as an expression function
- can be executed only inside a saveInto on a Interface Component or as part of a Web API