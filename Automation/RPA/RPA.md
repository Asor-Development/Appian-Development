# RPA
- manual repetitive and predictable activities
- a productivity tool that allows a user to configure one or more scripts (which some vendors refer to as “bots”) to activate specific keystrokes in an automated fashion
- bots can be used to mimic or emulate selected tasks (transaction steps) within an overall business or IT process
- may include manipulating data, passing data to and from different applications, triggering responses, or executing transactions
- uses a combination of user interface interaction and descriptor technologies and scripts can overlay on one or more software applications
##  Appian RPA
- Backed by Appian Platform
- Part of End to End Process Automation
- Supported by Appian Data Fabric
    - governed data already baked into it
- Business processes that require accessing a system where an API can not be easily implemented, would be an excellent fit for RPA if they have the following characteristics:
  - **Repetitive:** Something an employee does over and over again, following a predefined workflow
  - **High Volume:** Robots are faster than people, so if there is a high volume of work, a robot provides more value
  - **Rule Based:** The behavior of the robot must be codified using rules such as "if this" then "do that"
- Robots typically automate repetitive work that involves:
  - Clicking a mouse and typing text using a keyboard
  - Copying and pasting data from one place to another, and 
  - Interacting with websites and other desktop applications
- not suitable for cognitive Tasks(use Cognitive Automation AI Skill/The Learner)
- dont rule out Appian RPA simply because APIs exist
- Connected Systems and Integeation
  
### RPA Architecture
- Appian RPA ---> Orchestration Server <--- Robots
- **Appian RPA:** Connected System and Integrations allow an Appian process to trigger robotic tasks
- **Orchestration Server:** communicates with each robot about which action to perform next during task execution
  - talks to the robot agents located on the host machines
- **Robots:** execute robotic tasks on a host machine, which can be your computer or a remote desktop
    - after creating a robot you will download and run the robot agent on the host machine


### Robot Management
- screen that displays all robots in the environment
- you would only see robots that you have access to
- **Robot Details:**
  - clicking into a robot, will allow users to manage robot configurations and view currently running, queued and executed robotic tasks
  - can check the progress of robotic tasks in Robot Details
- users need to be at least a Viewer of the robotic task design object to see it in this view

### Robot Pools
- a collection of robots, each installed on individual host machines, that run robotic tasks
- Create different robot pools to categorize robots for purpose, security and system access
- when a robotic task is triggered, it can use any robot in a robot pool to complete the work
- If a host machine is down, or a robot is unavailable, a different, available robot in the robot pool would complete the work
- If a robot pool is not added, the robotic task can still be configured but will not be able to debug or execute



### Appian RPA console:  used to assign robot user permissions(from users page)
- Prior to 23.3, the Appian RPA console was the primary way to interact with RPA including creating robots and robotic tasks
- This process has been simplified with the Operations Console and a new design object for robotic tasks
- Robotic Tasks are design objects that can be secured using rolemaps like Viewer, Editor and Administrato
- developers can use the Appian RPA console to schedule events and set alerts
- access from the Appian Designer navigation menu
- After creating a robot from the Operations Console, you would add your robot to a robot pool
- Simply create a Robot Pool design object in your application to get started

- A single robot can be part of multiple pools and a pool can be part of other pool
  
#### Dashboard
- displays by default, provides an at-a-glance status of all robotic tasks in the environment
- it is recommended to use the Operations Console to view the progress of your robotic tasks
- List of robotic tasks in execution
- List of robotic tasks
- Robotic task permissions tags provide access to credentials and queues
- You can configure object security directly in the robotic task design object 
- Description, Execution,	Start, Result, Actions, and	Permission Tags columns for each task
- **Actions:** start, configure, or change permissions for a robotic task by clicking icon

#### Users Page
- used to set permission tags to give users access to robots in the Operations Console
- you can assign permission tags to users to control their access on the Users page
- **Actions:**
  - lock icon to change permissions for and individual user
  - key icon is used to refresh the Maven key
  - Maven is a software tool used to compile, package, and deploy Java artifacts
- **Permissions:** once multiple users are selected click the lock icon to set permissions for all of them at once

#### Robotic Tasks Page
- see a list of the robotic tasks in the environment
- you would only need to access this page if configuring Credentials or Workflow Libraries
- Operations Console is recommended for viewing the progress of robotic tasks
- **Credentials:** to specify the login credentials for applications your robotic task will need to access
    - enables you to securely store the password so it isn't available in plain text. Add a shared permission tag for the credential and the robotic task
- **Workflow Libraries:** to create or import custom low-code methods for your robotic tasks
  - a set of code and classes designed to be reused both within a robotic task and across multiple robotic tasks
  - can import and export libraries
  
#### Operations Console: used to create robots
- where system administrators create and manage robots used in the environment
- developers can monitor running, queued or executed robotic tasks for any robot they have access to
- can be accessed from the Appian Designer navigation menu
- System administrators can create and manage robots while other users can manage robot configuration settings, if given access
  - as well as monitor the progress of currently running, queued, and executed robotic tasks
  - given access to do so, developers can edit the configuration of a robot and monitor the progress of robotic tasks


## Creating  RPA
1. Document the steps in a process model
2. Use Operations Console to create a Robot
    - Configure the name of your robot and set permission tags
    - You can attribute permission tags with users from the Appian RPA console
    - Choose the operating system that the robot will run on
    - download and run the installer on the host machine. You can also review the system requirements prior to downloading
    - Once the robot agent runs on the host machine, its status is Online, and it can communicate with the orchestration server
3. Once the robot has been created, go to the Appian RPA Console and assign the same permission tag to the users who should have access to this robot
_________________________________

1. **Create Robot**
  - assign the same permission tag to the users who should have access to this robot
  - add robot to robot pool
2. **Create a new robotic task in Appian Designer**