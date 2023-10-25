# Deployment and Monitoring

1. Async Imports
    - everyone can keep working while a manual package Import is going on in the background
    - when the import is done a email notification is sent
    - you can check the import status in the deployments view
2. Deploy only changes to Apps configuration
    - use new panel in package view clled `Application Configurations`
    - click the gear icon to review the application's configuration settings that will be included in the package
    - you can export changes made to things such as application properties, linked documents and post deployment process model without having to export the entire application
        - click the add tp package button in the app configuration dialog box

3. Plug ins
    - can now bw added to a package at any point during development
    - in the package view locate the Plug-ins pane and click the gear icon
    - you can view and add plug-ins to the package

4. HTTP request/response logs
    - provide system administrators with access to the raw HTTP requests and response for integration calls
    - should help system adminstrators reproduce integration calls and understand errors
    - available for integrations that use HTTP or OpenAPI connected systems
    - to enable go to the admin console logging screen and mark the checkbox under HTTP Request/Response Logging
    - click the link to review and understand the integration logging guidelines