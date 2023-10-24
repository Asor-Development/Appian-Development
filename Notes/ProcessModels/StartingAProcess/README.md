## Starting a process
**There are a variety of ways in which your processes can be started, depending on your application's need**
- you can start a process from an interface, tempo, site, portal, outside of Appian, automatically or from another process

- [From Interface](./FromInterface.md)
- [From Tempo](./FromTempo.md)
- [From Site]()
- [From Portal](./FromPortal.md)
- [From outside Appian]()
- [From another process]()
- [Automatically]()
- [From]()

## Starting a process from Tempo or sites


## Start
- `a!startProcess` is a function and it can only execute inside a saveInto or a Web API
- porocesses run asynchronously, meaning that the current process flow will continue without waiting for these processes to complete
## a!StartprocessLink
- `a!startProcessLink` users are shown the start form or first chained attended node and any subsequent chained forms
- After submitting the last form, the chain completes, the user returns to the original interface, and that interface reloads