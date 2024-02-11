# [Processs Model Data Flow](https://docs.appian.com/suite/help/23.3/Working_with_Data_in_Process.html#_)
**Process Models allow you to querying data from a database, showing data to a user on a form, takeg user input on a form and writing data to your business data source**

## Types of data 
- [Process Variables](./ProcessVariables.md)
    - placeholder for data that can be accessed throughout the lifecycle of a process
    - how data is transferred between different nodes in a model
- [Node Inputs/ACP](./ACP.md)
- [Node Outputs/ACP](./ACP.md)
- [Interface Inputs](./InterfaceInputs.md)



___________________________________________
- Appian process variables, node inputs, node outputs, and interface inputs are strongly typed, so they are configured to hold and represent only certain kinds of data. If the value being saved into one of these isn't the correct type, the value will be cast to correct type, which may alter the value in a way you don't expect

