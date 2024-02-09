# Gateways

- used to control the workflow in a process based on business logic
- use conditions to determine which path to follow when the process runs
- label the paths out of a gateway to make the diagram more readable, double click on a path to rename it
- test and debugg each outgoing path of a gateway
- if a gateway has two outgoing paths then it needs to be tested twice

## The four Types of Gateways
1. **XOR** — Exclusive Decision/Merge (Exclusive OR)
- allows one incoming path to continue, while excluding any others
- executes a single outgoing path determined by the conditions you set

2. **OR** — Inclusive Decision/Merge
- directs incoming flows to one of many possible output paths, based on the condition(s) you set

3. **COMPLEX** — Complex Decision/Merge
- allows you to selectively accept (or restrict) incoming paths and evaluate rules to determine outgoing paths
- Example: you can restrict the node to accept only the first 3 out of 4 incoming paths, or require input from certain nodes before continuing
- Outgoing paths can be configured in the same manner as other Gateway nodes

4. **AND** — Parallel Fork/Join
- directs all incoming workflow(s) to all of the possible branches
- if more than one incoming path is used, all incoming paths must reach the node before the process can continue.
- it can also be used to join all incoming paths into a single workflow
