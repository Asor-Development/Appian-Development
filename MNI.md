# Muti-Node Instances 
**Execute any node mutiple times in a single process flow**
- method you can use to repeat the same set of actions multiple times
- should only be used when you can guarantee that the maximum number of instances spawned will be relatively small
    - try not to exceed 1000

## Configure MNI
- You can configure MNI in every Node by going to the Others tab and selecting **Automatically run multiple instances of this node**
    - you can choose how many instances you want to spawn
    - you can choose what the instance do when they complete
- you can configure MNI using a sub-process, which will run on the same engine as the parent
- you can also configure MNI using a start process node and it will choose the engine with the lowest current load, which improves engine utilization

## Common Uses
- can use it in a user input task to assign that task to a list of individuals rather than just a group or single user
- another common use is to spawn mutiple instances of a child process
    - Find and exmple of this [here]()






