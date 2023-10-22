# Gateways

1. **XOR** — Exclusive Decision/Merge (Exclusive OR)
This type of Gateway node allows one incoming path to continue, while excluding any others. It executes a single outgoing path determined by the conditions you set.
2. **OR** — Inclusive Decision/Merge
This type of Gateway directs incoming flows to one of many possible output paths, based on the condition(s) you set.
3. **COMPLEX** — Complex Decision/Merge
This type of Gateway allows you to selectively accept (or restrict) incoming paths and evaluate rules to determine outgoing paths. For example, you can restrict the node to accept only the first 3 out of 4 incoming paths, or require input from certain nodes before continuing. Outgoing paths can be configured in the same manner as other Gateway nodes.
4. **AND** — Parallel Fork/Join
This type of Gateway directs all incoming workflow(s) to all of the possible branches. If more than one incoming path is used, all incoming paths must reach the node before the process can continue. It can also be used to join all incoming paths into a single workflow.