Different between loads with evaluated?

load(): Lets you define local variables within an expression for an interface and evaluate the expression with the new variables, then re-evaluate the function with the local variables' values from the previous evaluation.

with(): Lets you define local variables within a function and evaluate the expression with the new variables. Note: In interfaces, this function differs from the load() function because it recalculates the local variable values after interactions. This recalculation always happens, even if the interaction's updates could not have impacted the variable's value. This means data queries and other slow operations in with() variables can have important performance impacts.

Have a look at the new evaluation function, a!localVariables(). It does everything load() does but with additional refresh options that may drastically simplify your design.