# Send Email Smart Service
- allows you to send  notification by email
- you need to first get some output from a previous node such as Write Records Node, to pass data to the smart service\
1. Go to the Setup Tab
    - **From:** Process Initiator
    - **To:** you could select Appian users by entering their names 
        - **Edit as Expression:** you can manually set email`toemailaddress(emailaddress@email.com)`
    - **Subject:**
        - **Edit as Expression:** enter what you want to email subject to say
            - can use the data tab to use process variables etc...
    - **Message Body:**
         - **Edit as Expression:** enter what you want to email message to say
            - can use the data tab to use process variables etc...