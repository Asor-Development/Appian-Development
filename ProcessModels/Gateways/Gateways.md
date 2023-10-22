# Gateways

- used to control the workflow in a process based on business logic
- use conditions to determine which path to follow when the process runs
- label the paths out of a gateway to make the diagram more readable, double click on a path to rename it
- test and debugg each outgoing path of a gateway
- if a gateway has two outgoing paths then it needs to be tested twice

## The four Types of Gateways

1. **XOR:** directs a single incoming path into one of multiple outgoing paths, based on a condition that is evaluated at runtime
    - the fist condition that is evaluated to true will determine which outgoing path is taken
    - use the decision tab of the nodes configuration to create the condition
        - click new condition, this is where you would create the if statement
        ![XOR Example](../../../img/xorgateway.png)
        **If the cancel variable is true then the next step is the process end node, otherwise it is assummed that the user click submit and then the next step is to write to the database**
        - test and debugg each outgoing path of a gateway



2. **OR:** multiple incoming and outgoing paths 
    - the process will follow every path where a condition evaluates to true

3. **Complex:** for business process model and notation support and compliance
    - it is recommended that you use sperprate XOR or OR gateways for each decision to avoid riskof misconfiguration and to improve the maintainability of the process models

4. **AND:** used send a single path into multiple paths, or collect multiple into a single path