


### Interfaces
- `RPI_OfficeSummary`
    - Supervisor: 
        - `rule!RPI_getOfficeSupervisor`, expression rule that gets the supervisor's name for the specified office
            - uses the **EmployeeOfficeLocation** record type
        - click the supervisor's name and it will take you to that supervisor's employee record
    - Manager:
        - `rule!RPI_getOfficeManager`, expression rule that gets the supervisor's name for the specified office
            - uses the **EmployeeOfficeLocation** record type
        - click the managers's name and it will take you to that supervisor's employee record