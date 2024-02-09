# Intelligent Document Processing(IDP)

- now allows you to install and configure IDP without any external services
- google intergrations was optional for document extraction but required in order to set up document classification, but now you can skip the Google AutoML classification of documents
    - if no goggle automl is configured in the channel configuration, you can use the **Extraction Only** workflow, which now allows mutiple document types
        - document types can be pre-classified or manually classified through Appian tasks

## Table Extraction Feature 

- is in preview status
- Appian's built-in document extraction features now includes table extraction
    - you can extract table information from your documents without ever sending them outside your Appian environment
    - Appian identifies tables within a PDF file, and extract line items from those tables, for use as structured data
    - you will need to use a muti-nested CDT to represent the table data(see docs for configuration requirements)
