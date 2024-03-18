
## **Connected Syatem:** `BAM Authorize.Net`
- HTTP
- **Base URL** https://apitest.authorize.net/xml/v1/request.api
- **Authentication** NONE
- Used in `BAM_AuthorizeCreditCardPayment` Integration

## **Integration:** `BAM_AuthorizeCreditCardPayment`
- uses **Connected Syatem:** `BAM Authorize.Net`
- **Method:** POST
- **Rule Inputs:**
    - **cardNumber:** text
    - **expirationDate:** text
    - **cvv:** number(Integer)
    - **amount:** number(decimal)

- **Interface:** `BAM_ProcessCreditCardPaymentUsingExternalSystem`

- `https://developer.authorize.net/`
- `5424000000000015`