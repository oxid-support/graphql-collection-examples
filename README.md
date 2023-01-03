# GraphQL Collection Examples
Collections of GraphQL queries to demonstrate typical workflows done by GraphQL requests.

## Requirements
- OXID eShop compatible with [GraphQL Storefront Module](https://github.com/OXID-eSales/graphql-storefront-module).
- [Altair GraphQL Client](https://altairgraphql.dev/)

## Preparation
- Open the Altair Client
- Click in the top right corner the button **No environment**.
- Copy the content into the textarea **Global environment**.
  ````json
  {
    "url": "https://{your-shop-url}/graphql/",
    "username": "{your-shop-admin-username}",
    "password": "{your-shop-admin-password}",
    "token": "",
  
    "salutation": "MRS",
    "firstName": "Jane",
    "lastName": "Doe",
    "company": "Some GmbH",
    "additionalInfo": "Invoice address",
    "street": "Bertoldstrasse",
    "streetNumber": "48",
    "zipCode": "79098",
    "city": "Freiburg",
    "countryId": "a7c40f631fc920687.20179984",
    "phone": "123456",
    "mobile": "665",
    "fax": "555",

    "deliveryCompany": "",
    "deliveryAdditionalInfo" : "",
    "deliveryStreet": "Padkamp",
    "deliveryStreetNumber": "420",
    "deliveryZipCode": "48282",
    "deliveryCity": "Emsdetten",

    "basketTitle": "example-title-1",
    "basketId": "",
    "deliveryMethodId": "oxidstandard",
    "paymentId": "oxidinvoice"
  }
  ````

- Click in the bottom left corner on the folder button **Collections**.
- Click on the top left button **Import**.
- Import the files *.agc.

## Usage
A response contains sometimes values which are needed for further requests. Those values can be copied into the environment file to prevent repetive work easily.  
An example is the authentication. For many requests an authentication Bearer Token is needed. So for each query a header needs to be created. If the token changes, the header for each request needs to be updated accordingly. By setting the environment variable, the header gets updated for each query automatically.  
  
To use an environment variable, add a new line to the environment file:
```json
"paymentId": "oxidinvoice"
```
becomes
```json
"paymentId": "oxidinvoice",
"new-variable": "the-value"
```
After saving the file, it's possible to use the variable in the requests, headers or in the URL:
```
mutation {
     example-method (
         property: "{{new-variable}}",
     ) {
         id
     }
 }
```
