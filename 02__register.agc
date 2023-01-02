{"version":1,"type":"collection","title":"02. Register","queries":[{"version":1,"type":"window","query":"# https://docs.oxid-esales.com/interfaces/graphql/en/latest/consuming/AdministrateCustomer.html\n     mutation customerRegister {\n     customerRegister (\n         customer: {\n             email: \"{{username}}\",\n             password: \"{{password}}\",\n         }\n     ) {\n         id\n         email\n     }\n }","apiUrl":"{{url}}","variables":"{}","subscriptionUrl":"","subscriptionConnectionParams":"{}","headers":[{"key":"","value":"","enabled":true}],"windowName":"01. customerRegister","preRequestScript":"","preRequestScriptEnabled":false,"postRequestScript":"","postRequestScriptEnabled":false,"id":"48d30019-85f6-4ee4-8f90-29856f4398eb","created_at":1671633936098,"updated_at":1671635148741},{"version":1,"type":"window","query":"# https://docs.oxid-esales.com/interfaces/graphql/en/latest/consuming/PlaceOrder.html#setup-the-basket\n\nquery {\n    token (\n        username: \"{{username}}\"\n        password: \"{{password}}\"\n    )\n}","apiUrl":"{{url}}","variables":"{\n\t\"username\": \"\",\n\t\"password\": \"\"\n}\n","subscriptionUrl":"","subscriptionConnectionParams":"{}","headers":[{"key":"","value":"","enabled":true}],"windowName":"02. Token (Login)","preRequestScript":"","preRequestScriptEnabled":false,"postRequestScript":"","postRequestScriptEnabled":false,"id":"b1359de5-4abb-4cc9-bec9-93ca228c764c","created_at":1671634266172,"updated_at":1671634292611},{"version":1,"type":"window","query":"# https://docs.oxid-esales.com/interfaces/graphql/en/latest/consuming/AdministrateCustomer.html#id7\n          mutation customerInvoiceAddressSet {\n    customerInvoiceAddressSet (\n        invoiceAddress: {\n            salutation: \"{{salutation}}\"\n            firstName: \"{{firstName}}\"\n            lastName: \"{{lastName}}\"\n            company: \"{{company}}\"\n            additionalInfo: \"{{additionalInfo}}\"\n            street: \"{{street}}\"\n            streetNumber: \"{{streetNumber}}\"\n            zipCode: \"{{zipCode}}\"\n            city: \"{{city}}\"\n            countryId: \"{{countryId}}\"\n            phone: \"{{phone}}\"\n            mobile: \"{{mobile}}\"\n            fax: \"{{fax}}\"\n        }\n    ) {\n        salutation\n        firstName\n        lastName\n        company\n        additionalInfo\n        street\n        streetNumber\n        zipCode\n        city\n        phone\n        mobile\n        fax\n    }\n}","apiUrl":"{{url}}","variables":"{}","subscriptionUrl":"","subscriptionConnectionParams":"{}","headers":[{"key":"Authorization","value":"Bearer {{token}}","enabled":true}],"windowName":"03. Save Invoice Address","preRequestScript":"","preRequestScriptEnabled":false,"postRequestScript":"","postRequestScriptEnabled":false,"id":"fc6da2ef-2af2-45b7-a7fc-e1c9e4a1b7be","created_at":1671635987500,"updated_at":1671784914387},{"version":1,"type":"window","query":"#https://docs.oxid-esales.com/interfaces/graphql/en/latest/consuming/AdministrateCustomer.html#id9\n     mutation customerDeliveryAddressAdd {\n    customerDeliveryAddressAdd (\n        deliveryAddress: {\n            salutation: \"{{salutation}}\"\n            firstName: \"{{firstName}}\"\n            lastName: \"{{lastName}}\"\n            company: \"{{deliveryCompany}}\"\n            additionalInfo: \"{{deliveryAdditionalInfo}}\"\n            street: \"{{deliveryStreet}}\"\n            streetNumber: \"{{deliveryStreetNumber}}\"\n            zipCode: \"{{deliveryZipCode}}\"\n            city: \"{{deliveryCity}}\"\n            countryId: \"a7c40f631fc920687.20179984\"\n            phone: \"{{phone}}\"\n            fax: \"{{fax}}\"\n        }\n    ) {\n        id\n        salutation\n        firstName\n        lastName\n        company\n        additionalInfo\n        street\n        streetNumber\n        zipCode\n        city\n        phone\n        fax\n    }\n }","apiUrl":"{{url}}","variables":"{}","subscriptionUrl":"","subscriptionConnectionParams":"{}","headers":[{"key":"Authorization","value":"Bearer {{token}}","enabled":true}],"windowName":"04. Save Delivery Address","preRequestScript":"","preRequestScriptEnabled":false,"postRequestScript":"","postRequestScriptEnabled":false,"id":"8bec5862-5acc-44d6-b387-05b61fefd30b","created_at":1671784237569,"updated_at":1671784892611}],"preRequest":{"script":"","enabled":false},"postRequest":{"script":"","enabled":false},"id":"c991928d-5176-4604-adaf-9609faea7a79","parentPath":"","created_at":1671633936098,"updated_at":1672666253915,"collections":[]}