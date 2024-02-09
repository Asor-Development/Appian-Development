# Multi-node instances
- execute any node mutiple time in a single process flow
- execute any activity multiple times in the same process flow by using the Multiple Node Instances (MNI) functionality
- method you can use to repeat the same set of actions multiple times
- should only be used when you can guarantee that the maximum number of instances spawned will be relatively small
- you can also configure MNI using a start process node. The advantage of this second option is that - unlike a sub-process that runs on the same engine with the parent process - a start process will choose the engine with the lowest current load, which improves engine utilization.
## 
- User Input task: you can assign a task to a list of individuals rather than a group or single user
- use it to spawn mutiple instance of a child process

Other ---> Automatically run multiple instances of this node
    - you can choose how many instances you want to spawn
    - you can choose what the instance do when they complete

## Example: Create users in bulk
### Interface: Create Users
**Uses a editable grid inside a form layout**
- Rule Input: `newUser` type Array of Map
### Process Model
#### Parent Process: Create New users
- takes the full list of users and pass them one at a time to the child process using a sub process
- Use MNI:
- In Process Start Form add the Create Users Interface, and the appropiate process variable for the rule inputs
- Add Subprocess Node: will point to the child to pass in the users
    - From the Other Tab: select `Automatically run multiple instances of this node`
    - select `Run one instance for each item in PV` the process variable is chossen from a drop down
    - From the Setup tab add the child process in the `Run this process model` property
        - the child process PV will appear in the Input Variables section
        - select the Parent PV from the dropdown to pass into the child
#### Child Process: Create user
- Process variable: 
    - newUser, Type Map, parameterized, does not need to be mutiple because this process will only take one user at a time
- Configure Create User Smart Service
    - Data ---> Node Inputs
    - pass the process variable and index it to the appropiate fields into `value` property EX:  `pv!newuser.firstName`
- Send Email Node:
    - SetUp Tab
    - from Process model
    - to the new user email:  `toemailaddress(pv!newUser.email)`


1. What are MNI
    - I explaind what MNI is and gave an example of when to use it
2. What are the advantages of Synced Record Types
3. What is the difference between a Start Process Smart Service and a Sub Process Smart Service
4. If there is an Interface, Site etc.. that has a lot of data using KPIs Grids Charts graphs etc... that takes a long time to load how would you debug it.
5. What is activity chainning and why would you use it?
6. If you are given a requirement document and you dont understand everthing how would you go about getting a better understanding of it.
7. Tell me about your previous experience with Appian
8. How did you handle challages working with Service Now
9. Have you created Stored procedures before