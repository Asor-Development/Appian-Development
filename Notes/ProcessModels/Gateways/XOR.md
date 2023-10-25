# XOR Gateway
**Directs a single incoming path into one of multiple outgoing paths, based on a condition that is evaluated at runtime**
- the fist condition that is evaluated to true will determine which outgoing path is taken
- use the decision tab of the nodes configuration to create the condition
    - click new condition, this is where you would create the if statement
        ![XOR Example](../../../img/xorgateway.png)
        **If the cancel variable is true then the next step is the process end node, otherwise it is assummed that the user click submit and then the next step is to write to the database**
    - test and debugg each outgoing path of a gateway