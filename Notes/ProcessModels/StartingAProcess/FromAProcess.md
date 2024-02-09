# Starting A Process From Within a Process
- you can start a process from a process in 3 ways

1. **[Subprocess Smart Service:](../Nodes/SmartServices/StartingProcesses/SubProcess.md)**
- used to launch subprocesses from within your current process
- links the two published process models through a parent-child relationship and allows you to transfer data between them
- parent and child processes each contain references to the other
- can be run either [asynchronously](../Nodes/SmartServices/StartingProcesses/SubProcess.md#subprocess-smart-service-asynchronously) or [synchronously](../Nodes/SmartServices/StartingProcesses/SubProcess.md#subprocess-smart-service-synchronous) .

2. **[Start Process Smart Service:](../Nodes/SmartServices/StartingProcesses/StartProcess.md)**
- allows you to initiate another process from your current process
- the new process is started asynchronously 
- the process flow of the current process continues after the new process starts
- is equivalent or better than process messaging in every category

3. **Process Messaging:**
- Send Event and End Event activities can trigger the starting of a new process
- the new process is started asynchronously
- that process model's start node must be configured to receive messages
- the Start Process smart service is equivalent or better than process messaging in every category
- process model to start is defined	statically
- activity chaining is not followed 
- poor performance under high load
- no parent child relationship
- process variables cannot be passed by reference
- process outputs not available
- cannot access process reports of parent
- quick tasks are not shared