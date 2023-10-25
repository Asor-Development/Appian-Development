## 2. Personas and Groups
 Describe a successful application using performance measures
- Identify planning components
    - Personas and Groups
        - **Personas:** who will interact with the app and the key activities that each persona needs to perform
        - **Groups:** when you define the activities for each persona it will help you definegroups, which are used to configure security in an app

__________________________

### Groups
- used to organize users based on their needs in the app
- enable users to view and interact with different application components(records, reports, processes etc...)
- **Security** is managed by assigning permissions to groups
- Every Application requires an ALL Users group which holds an adminstrators group that will manage object security
- after creating the All Users group you should identify groups by job function, team membership, or other categories
- specify various levels of security for distinct groups, indiviual user access can be controlled by simply adding or removing users to and from groups
- groups can contain individual user members or sub groups



___________________________________-

#### Create permission matrix: 
- specifies which groups are allowed or denied permission to access app functions and records
- consider who may need to access a function and records even though oit is not part of their mormal responsibilities
- the matrix should explictlt denied or allow access to groups based on the business rules

| Action        | Group1        | Group2   | Group3   |
| ------------- | ------------- | -------- | -------- |
| John          | Test1         | NewYork  | NewYork  |
| Bob           | Test2         | Toronto  | NewYork  |
| Bob           | Test2         | Toronto  | NewYork  |


###### Creating Personas
1. Define Personas
2. Identify each persona's key activities
3. Define groups
4. Create permission matrix