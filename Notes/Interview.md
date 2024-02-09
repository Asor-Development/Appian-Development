# Interview 


# Automation
**Combines data, people and syatems to help business get better business reaults and get the most out of their resources**
- End-to-end automation at Appian combines people, systems, and data in an end-to-end process.
- applications or processes can be created that are better at completing work that takes a lot of time or that is repetitive
- because human experience, crativity, problemsloving, or judgement cannot always be replaced(such as when umexpected errors occur)  
    - human and automated tasks can be combined, giving each the appropriate types of work based on which can handle the job most efficiently
- Process models are the core to end-to-end automation, use them to connect people, systems, automation capabilities, and data in a single workflow
- a lot of use cases can be solved using business rules in process models
    - business rules can set permissions, assign tasks, execute processes etc...

## Decision Design Object
**Allow you to capture business specific logic in a easy to read table/format**
- interface that allow you to quickly configure decisions to implement business logic in a intutive way(a way that comes natural)
- Create a decision object
- Create process model and call the decision object on the assignment tab of the User Input task node

## Integrations and Low-Code Smart Services
- a variety of connected systems out-of-the-box, so you can quickly build integrations with external systems
- can leverage integrations and smart services to help automate your workflows
- Appian Smart Services provide a low-code design experience to automate common business activities
    - send emails or generate documents from a process

## Robotic Process Automation (RPA)
- assign repetitive or time consuming tasks to robots, this allow the more complex work to be handled by humans
- robots can access user interfaces, which makes them good for using legacy systems or systems that do not have APIs
- can complete tasks on web and desktop applications
- RPA task recorder, record a user interaction and Appian will generate the robotic task
- can access integrations, decidions, records, rules, processes and data types
- can be added to any business process

## Artificial Intelligence
- whne a computer can mimic human abilities and intelligence
- AI Skills are a set of artificial intelligence and machine learning features to automate workflows
    - design object that lets you build, configure and train a AI model
    - classify documents and emails
    - extract data from documents
- AI Copilot gives users the ability to work with generative AI to imporve efficiency
    - developers can generate a functional Interface from a PDF of a form, this can speed up application developement
    - users can gain new insights about hteir data, using the self service analytics capabilities
    - generative AI plug in allow you to use Appian and third party services to build AI fumctionality, like content generation


# Infosys
- Used Smart Services provide to automate tasks such
    - send emails or generate documents from a process


# Robotic Process Automation (RPA)
- One of the first clients I worked with wanted to improve the way their data was manage
- The process they were using required them to collect and manually enter data into a excel workbook of at least 10 sheet or more, and the data had to be entered in a certain order by differnt employees


 A petroleum distributor needs to coordinate price information across multiple vendors and consolidate the data on a nightly basis. The data from these vendors exists on third-party websites that lack traditional API endpoints. This makes collecting the data difficult since it requires employees to manually collect the information, and then enter and format information in their Appian application. 
Using Appian RPA, the company can create a robot that navigates to a website and extracts information, just like a human would. This information would then be passed into an Appian application, reducing the need for manual data entry. Moreover, the robotic tasks can be easily integrated into a larger case management workflow that the company has already built using Appian.

## RPA + AI Skills + Business Rules
- Insurance company that had to manually verify insurance claims
- Solution 
    - AI Document Extraction to extract the information that was important in order to verify the claims
    - that information was then used and compared aganist business rules in the system

---
# Records
-  best practice, you should download the script for any database table created from a record type
- Record type field references are specific to each record type and environment
## Records Events
**Record events allow us to store the event data in a separate Event History record type**
- Record type --> Events ---> Gnerate Record events
    -  Include Common Event Types: will automatically add event types for creating and updating 
    - Other Event Types: for additional event types other than creating and updating
    - Event History: generated record type will store who performs certain events and when
    - Event Type Lookup: generated record type will store the types of events that can occur
    - Once we configure record events are configured, you can capture and display events throughout our application

---

# Process Model 
## Process Model Best Paractices
- use proper annotations
- use dynamic process display name
- user input task should also have a dynamic Task diaply name
- use data management tab to manage process instances(parent 1 day, sub processes 0 day)
- use the alert tab to assigns alerts to proper groups
- configure proper swim lanes
- use activity chaining to allow navigation from one task to the next without leaving the current screen, for tasks that need to be completed by the same user
- use at least one terminate event to stop all process flows for each process model(configure in the end node results tab)
- business user should have at least initiator access, so they can start the process
## Start Process

## Start Process Link

## Process Variables 
## Subprocess Smart Service: Asynchronously
## Subprocess Smart Service: Synchronous


## Local Variables
- variables that are local to the current expression
- made up of two parts
    - define
    - call it: results value(calling the variables etc....), if using mutiple local variables it must be contained in an array

## Functions
- concat(): Join multiple string values into one string value