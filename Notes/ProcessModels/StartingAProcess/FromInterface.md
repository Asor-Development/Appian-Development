# Starting a process directly from an interface
- you can start a process from a interface in 3 ways
- each method allow you to configure the start of a process in the,  pass in data to a process
1. **a!startProcess:** 
- A function that starts a process when triggering an interface reevaluation
- Use this for unattended activities related to a specific piece of information on the interface
- Maintain original interface state after process starts

2. **a!startProcessLink:** 
- A link type that starts a process and navigates the user through any initial chained forms
- Use this for taking the user to a process related to a specific piece of information on an interface

3. **Record Actions:** 
- A configuration on a record type that starts a process within the context of a record view or a record list
- The process can also be started on a report or form using a record action component
- Use this for updating or adding records to your record type
- can show start and chained forms
- Maintain original interface state after process starts, only true when a record action is opened and submitted in a Dialog Box