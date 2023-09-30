# DefaultAPI

All URIs are relative to *https://sandbox.momodeveloper.mtn.com/remittance*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bcAuthorize**](DefaultAPI.md#bcauthorize) | **POST** /v1_0/bc-authorize | bc-authorize
[**cashTransfer**](DefaultAPI.md#cashtransfer) | **POST** /v2_0/cashtransfer | CashTransfer
[**createAccessToken**](DefaultAPI.md#createaccesstoken) | **POST** /token/ | CreateAccessToken
[**createOauth2Token**](DefaultAPI.md#createoauth2token) | **POST** /oauth2/token/ | CreateOauth2Token
[**getAccountBalance**](DefaultAPI.md#getaccountbalance) | **GET** /v1_0/account/balance | GetAccountBalance
[**getAccountBalanceInSpecificCurrency**](DefaultAPI.md#getaccountbalanceinspecificcurrency) | **GET** /v1_0/account/balance/{currency} | GetAccountBalanceInSpecificCurrency
[**getBasicUserinfo**](DefaultAPI.md#getbasicuserinfo) | **GET** /v1_0/accountholder/msisdn/{accountHolderMSISDN}/basicuserinfo | GetBasicUserinfo
[**getCashTransferStatus**](DefaultAPI.md#getcashtransferstatus) | **GET** /v2_0/cashtransfer/{referenceId} | GetCashTransferStatus
[**getTransferStatus**](DefaultAPI.md#gettransferstatus) | **GET** /v1_0/transfer/{referenceId} | GetTransferStatus
[**getUserInfoWithConsent**](DefaultAPI.md#getuserinfowithconsent) | **GET** /oauth2/v1_0/userinfo | GetUserInfoWithConsent
[**transfer**](DefaultAPI.md#transfer) | **POST** /v1_0/transfer | Transfer
[**validateAccountHolderStatus**](DefaultAPI.md#validateaccountholderstatus) | **GET** /v1_0/accountholder/{accountHolderIdType}/{accountHolderId}/active | ValidateAccountHolderStatus


# **bcAuthorize**
```swift
    open class func bcAuthorize(authorization: String, xTargetEnvironment: String, xCallbackUrl: String? = nil, scope: String? = nil, loginHint: String? = nil, accessType: AccessType_bcAuthorize? = nil, consentValidIn: Int? = nil, clientNotificationToken: String? = nil, scopeInstruction: String? = nil, completion: @escaping (_ data: BcauthorizeResponse?, _ error: Error?) -> Void)
```

bc-authorize

This operation is used to claim a consent by the account holder for the requested scopes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | Basic authentication header containing API user ID and API key. Should be sent in as B64 encoded.
let xTargetEnvironment = "xTargetEnvironment_example" // String | The identifier of the Wallet Platform system where the transaction shall be processed. This parameter is used to route the request to the Wallet Platform system that will initiate the transaction.
let xCallbackUrl = "xCallbackUrl_example" // String | URL to the server where the callback should be sent. (optional)
let scope = "scope_example" // String |  (optional)
let loginHint = "loginHint_example" // String |  (optional)
let accessType = "accessType_example" // String |  (optional)
let consentValidIn = 987 // Int |  (optional)
let clientNotificationToken = "clientNotificationToken_example" // String |  (optional)
let scopeInstruction = "scopeInstruction_example" // String |  (optional)

// bc-authorize
DefaultAPI.bcAuthorize(authorization: authorization, xTargetEnvironment: xTargetEnvironment, xCallbackUrl: xCallbackUrl, scope: scope, loginHint: loginHint, accessType: accessType, consentValidIn: consentValidIn, clientNotificationToken: clientNotificationToken, scopeInstruction: scopeInstruction) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | Basic authentication header containing API user ID and API key. Should be sent in as B64 encoded. | 
 **xTargetEnvironment** | **String** | The identifier of the Wallet Platform system where the transaction shall be processed. This parameter is used to route the request to the Wallet Platform system that will initiate the transaction. | 
 **xCallbackUrl** | **String** | URL to the server where the callback should be sent. | [optional] 
 **scope** | **String** |  | [optional] 
 **loginHint** | **String** |  | [optional] 
 **accessType** | **String** |  | [optional] 
 **consentValidIn** | **Int** |  | [optional] 
 **clientNotificationToken** | **String** |  | [optional] 
 **scopeInstruction** | **String** |  | [optional] 

### Return type

[**BcauthorizeResponse**](BcauthorizeResponse.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cashTransfer**
```swift
    open class func cashTransfer(xReferenceId: String, xTargetEnvironment: String, authorization: String? = nil, xCallbackUrl: String? = nil, cashTransfer: CashTransfer? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

CashTransfer

Cash transfer operation is used to transfer an amount from the owner’s account to a payee account. Status of the transaction can be validated by using GET /cashtransfer/{referenceId}

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let xReferenceId = "xReferenceId_example" // String | Format - UUID. Recource ID of the created ‘request-to-pay’ transaction. This ID is used for e.g. validating the status of the request. Universal Unique ID for the transaction generated using UUID version 4.
let xTargetEnvironment = "xTargetEnvironment_example" // String | The identifier of the Wallet Platform system where the transaction shall be processed. This parameter is used to route the request to the Wallet Platform system that will initiate the transaction.
let authorization = "authorization_example" // String | Bearer Authentication Token generated using CreateAccessToken API Call (optional)
let xCallbackUrl = "xCallbackUrl_example" // String | URL to the server where the callback should be sent, Uses PORT method. (optional)
let cashTransfer = CashTransfer(amount: "amount_example", currency: "currency_example", payee: Party(partyIdType: "partyIdType_example", partyId: "partyId_example"), externalId: "externalId_example", orginatingCountry: "orginatingCountry_example", originalAmount: "originalAmount_example", originalCurrency: "originalCurrency_example", payerMessage: "payerMessage_example", payeeNote: "payeeNote_example", payerIdentificationType: "payerIdentificationType_example", payerIdentificationNumber: "payerIdentificationNumber_example", payerIdentity: "payerIdentity_example", payerFirstName: "payerFirstName_example", payerSurName: "payerSurName_example", payerLanguageCode: "payerLanguageCode_example", payerEmail: "payerEmail_example", payerMsisdn: "payerMsisdn_example", payerGender: "payerGender_example") // CashTransfer |  (optional)

// CashTransfer
DefaultAPI.cashTransfer(xReferenceId: xReferenceId, xTargetEnvironment: xTargetEnvironment, authorization: authorization, xCallbackUrl: xCallbackUrl, cashTransfer: cashTransfer) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xReferenceId** | **String** | Format - UUID. Recource ID of the created ‘request-to-pay’ transaction. This ID is used for e.g. validating the status of the request. Universal Unique ID for the transaction generated using UUID version 4. | 
 **xTargetEnvironment** | **String** | The identifier of the Wallet Platform system where the transaction shall be processed. This parameter is used to route the request to the Wallet Platform system that will initiate the transaction. | 
 **authorization** | **String** | Bearer Authentication Token generated using CreateAccessToken API Call | [optional] 
 **xCallbackUrl** | **String** | URL to the server where the callback should be sent, Uses PORT method. | [optional] 
 **cashTransfer** | [**CashTransfer**](CashTransfer.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, ReferenceId already in use, Incorrect currency for target environment

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createAccessToken**
```swift
    open class func createAccessToken(authorization: String, completion: @escaping (_ data: TokenPost200ApplicationJsonResponse?, _ error: Error?) -> Void)
```

CreateAccessToken

This operation is used to create an access token which can then be used to authorize and authenticate towards the other end-points of the API.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | Basic authentication header containing API user ID and API key. Should be sent in as B64 encoded.

// CreateAccessToken
DefaultAPI.createAccessToken(authorization: authorization) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | Basic authentication header containing API user ID and API key. Should be sent in as B64 encoded. | 

### Return type

[**TokenPost200ApplicationJsonResponse**](TokenPost200ApplicationJsonResponse.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOauth2Token**
```swift
    open class func createOauth2Token(authorization: String, xTargetEnvironment: String, grantType: String? = nil, authReqId: String? = nil, refreshToken: String? = nil, completion: @escaping (_ data: Oauth2TokenResponse?, _ error: Error?) -> Void)
```

CreateOauth2Token

This operation is used to claim a consent by the account holder for the requested scopes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | Basic authentication header containing API user ID and API key. Should be sent in as B64 encoded.
let xTargetEnvironment = "xTargetEnvironment_example" // String | The identifier of the Wallet Platform system where the transaction shall be processed. This parameter is used to route the request to the Wallet Platform system that will initiate the transaction.
let grantType = "grantType_example" // String |  (optional)
let authReqId = "authReqId_example" // String |  (optional)
let refreshToken = "refreshToken_example" // String |  (optional)

// CreateOauth2Token
DefaultAPI.createOauth2Token(authorization: authorization, xTargetEnvironment: xTargetEnvironment, grantType: grantType, authReqId: authReqId, refreshToken: refreshToken) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | Basic authentication header containing API user ID and API key. Should be sent in as B64 encoded. | 
 **xTargetEnvironment** | **String** | The identifier of the Wallet Platform system where the transaction shall be processed. This parameter is used to route the request to the Wallet Platform system that will initiate the transaction. | 
 **grantType** | **String** |  | [optional] 
 **authReqId** | **String** |  | [optional] 
 **refreshToken** | **String** |  | [optional] 

### Return type

[**Oauth2TokenResponse**](Oauth2TokenResponse.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountBalance**
```swift
    open class func getAccountBalance(authorization: String, xTargetEnvironment: String, completion: @escaping (_ data: Balance?, _ error: Error?) -> Void)
```

GetAccountBalance

Get the balance of own account.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | Bearer Authentication Token generated using CreateAccessToken API Call
let xTargetEnvironment = "xTargetEnvironment_example" // String | The identifier of the Wallet Platform system where the transaction shall be processed. This parameter is used to route the request to the Wallet Platform system that will initiate the transaction.

// GetAccountBalance
DefaultAPI.getAccountBalance(authorization: authorization, xTargetEnvironment: xTargetEnvironment) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | Bearer Authentication Token generated using CreateAccessToken API Call | 
 **xTargetEnvironment** | **String** | The identifier of the Wallet Platform system where the transaction shall be processed. This parameter is used to route the request to the Wallet Platform system that will initiate the transaction. | 

### Return type

[**Balance**](Balance.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, Incorrect target environment

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAccountBalanceInSpecificCurrency**
```swift
    open class func getAccountBalanceInSpecificCurrency(currency: String, authorization: String, xTargetEnvironment: String, completion: @escaping (_ data: Balance?, _ error: Error?) -> Void)
```

GetAccountBalanceInSpecificCurrency

Get the balance of own account. Currency parameter passed in GET

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let currency = "currency_example" // String | Should be in ISO4217 Currency
let authorization = "authorization_example" // String | Bearer Authentication Token generated using CreateAccessToken API Call
let xTargetEnvironment = "xTargetEnvironment_example" // String | The identifier of the Wallet Platform system where the transaction shall be processed. This parameter is used to route the request to the Wallet Platform system that will initiate the transaction.

// GetAccountBalanceInSpecificCurrency
DefaultAPI.getAccountBalanceInSpecificCurrency(currency: currency, authorization: authorization, xTargetEnvironment: xTargetEnvironment) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **String** | Should be in ISO4217 Currency | 
 **authorization** | **String** | Bearer Authentication Token generated using CreateAccessToken API Call | 
 **xTargetEnvironment** | **String** | The identifier of the Wallet Platform system where the transaction shall be processed. This parameter is used to route the request to the Wallet Platform system that will initiate the transaction. | 

### Return type

[**Balance**](Balance.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, Incorrect target environment

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBasicUserinfo**
```swift
    open class func getBasicUserinfo(accountHolderMSISDN: String, authorization: String, xTargetEnvironment: String, completion: @escaping (_ data: BasicUserInfoJsonResponse?, _ error: Error?) -> Void)
```

GetBasicUserinfo

This operation returns personal information of the account holder. The operation does not need any consent by the account holder.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountHolderMSISDN = "accountHolderMSISDN_example" // String | Bearer Authentication Token generated using CreateAccessToken API Call
let authorization = "authorization_example" // String | Bearer Authentication Token generated using CreateAccessToken API Call
let xTargetEnvironment = "xTargetEnvironment_example" // String | The identifier of the Wallet Platform system where the transaction shall be processed. This parameter is used to route the request to the Wallet Platform system that will initiate the transaction.

// GetBasicUserinfo
DefaultAPI.getBasicUserinfo(accountHolderMSISDN: accountHolderMSISDN, authorization: authorization, xTargetEnvironment: xTargetEnvironment) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountHolderMSISDN** | **String** | Bearer Authentication Token generated using CreateAccessToken API Call | 
 **authorization** | **String** | Bearer Authentication Token generated using CreateAccessToken API Call | 
 **xTargetEnvironment** | **String** | The identifier of the Wallet Platform system where the transaction shall be processed. This parameter is used to route the request to the Wallet Platform system that will initiate the transaction. | 

### Return type

[**BasicUserInfoJsonResponse**](BasicUserInfoJsonResponse.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCashTransferStatus**
```swift
    open class func getCashTransferStatus(referenceId: String, authorization: String, xTargetEnvironment: String, completion: @escaping (_ data: CashTransferResult?, _ error: Error?) -> Void)
```

GetCashTransferStatus

This operation is used to get the status of a transfer. X-Reference-Id that was passed in the post is used as reference to the request.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let referenceId = "referenceId_example" // String | UUID of transaction to get result. Reference id  used when creating the CashTransfer.
let authorization = "authorization_example" // String | Bearer Authentication Token generated using CreateAccessToken API Call
let xTargetEnvironment = "xTargetEnvironment_example" // String | The identifier of the Wallet Platform system where the transaction shall be processed. This parameter is used to route the request to the Wallet Platform system that will initiate the transaction.

// GetCashTransferStatus
DefaultAPI.getCashTransferStatus(referenceId: referenceId, authorization: authorization, xTargetEnvironment: xTargetEnvironment) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **referenceId** | **String** | UUID of transaction to get result. Reference id  used when creating the CashTransfer. | 
 **authorization** | **String** | Bearer Authentication Token generated using CreateAccessToken API Call | 
 **xTargetEnvironment** | **String** | The identifier of the Wallet Platform system where the transaction shall be processed. This parameter is used to route the request to the Wallet Platform system that will initiate the transaction. | 

### Return type

[**CashTransferResult**](CashTransferResult.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Successful transfer, Payer limit breached, API user insufficient balance, application/json, Transfer not found, Unspecified internal error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTransferStatus**
```swift
    open class func getTransferStatus(referenceId: String, authorization: String, xTargetEnvironment: String, completion: @escaping (_ data: TransferResult?, _ error: Error?) -> Void)
```

GetTransferStatus

This operation is used to get the status of a transfer. X-Reference-Id that was passed in the post is used as reference to the request.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let referenceId = "referenceId_example" // String | UUID of transaction to get result. Reference id  used when creating the Transfer.
let authorization = "authorization_example" // String | Bearer Authentication Token generated using CreateAccessToken API Call
let xTargetEnvironment = "xTargetEnvironment_example" // String | The identifier of the Wallet Platform system where the transaction shall be processed. This parameter is used to route the request to the Wallet Platform system that will initiate the transaction.

// GetTransferStatus
DefaultAPI.getTransferStatus(referenceId: referenceId, authorization: authorization, xTargetEnvironment: xTargetEnvironment) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **referenceId** | **String** | UUID of transaction to get result. Reference id  used when creating the Transfer. | 
 **authorization** | **String** | Bearer Authentication Token generated using CreateAccessToken API Call | 
 **xTargetEnvironment** | **String** | The identifier of the Wallet Platform system where the transaction shall be processed. This parameter is used to route the request to the Wallet Platform system that will initiate the transaction. | 

### Return type

[**TransferResult**](TransferResult.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Successful transfer, Payer limit breached, API user insufficient balance, application/json, Transfer not found, Unspecified internal error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserInfoWithConsent**
```swift
    open class func getUserInfoWithConsent(authorization: String, xTargetEnvironment: String, completion: @escaping (_ data: ConsentkycResponse?, _ error: Error?) -> Void)
```

GetUserInfoWithConsent

This operation is used to claim a consent by the account holder for the requested scopes.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | Bearer Token. Replace with a valid oauth2 token received from oauth2 token endpoint in Wallet Platform.
let xTargetEnvironment = "xTargetEnvironment_example" // String | The identifier of the Wallet Platform system where the transaction shall be processed. This parameter is used to route the request to the Wallet Platform system that will initiate the transaction.

// GetUserInfoWithConsent
DefaultAPI.getUserInfoWithConsent(authorization: authorization, xTargetEnvironment: xTargetEnvironment) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | Bearer Token. Replace with a valid oauth2 token received from oauth2 token endpoint in Wallet Platform. | 
 **xTargetEnvironment** | **String** | The identifier of the Wallet Platform system where the transaction shall be processed. This parameter is used to route the request to the Wallet Platform system that will initiate the transaction. | 

### Return type

[**ConsentkycResponse**](ConsentkycResponse.md)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transfer**
```swift
    open class func transfer(authorization: String, xReferenceId: String, xTargetEnvironment: String, xCallbackUrl: String? = nil, transfer: Transfer? = nil, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Transfer

Transfer operation is used to transfer an amount from the own account to a payee account.<br> Status of the transaction can validated by using the GET /transfer/\\{referenceId\\}

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let authorization = "authorization_example" // String | Bearer Authentication Token generated using CreateAccessToken API Call
let xReferenceId = "xReferenceId_example" // String | Format - UUID. Recource ID of the created request to pay transaction. This ID is used, for example validating the status of the request. ‘Universal Unique ID’ for the transaction generated using UUID version 4.
let xTargetEnvironment = "xTargetEnvironment_example" // String | The identifier of the Wallet Platform system where the transaction shall be processed. This parameter is used to route the request to the Wallet Platform system that will initiate the transaction.
let xCallbackUrl = "xCallbackUrl_example" // String | URL to the server where the callback should be sent. (optional)
let transfer = Transfer(amount: "amount_example", currency: "currency_example", externalId: "externalId_example", payee: Party(partyIdType: "partyIdType_example", partyId: "partyId_example"), payerMessage: "payerMessage_example", payeeNote: "payeeNote_example") // Transfer |  (optional)

// Transfer
DefaultAPI.transfer(authorization: authorization, xReferenceId: xReferenceId, xTargetEnvironment: xTargetEnvironment, xCallbackUrl: xCallbackUrl, transfer: transfer) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String** | Bearer Authentication Token generated using CreateAccessToken API Call | 
 **xReferenceId** | **String** | Format - UUID. Recource ID of the created request to pay transaction. This ID is used, for example validating the status of the request. ‘Universal Unique ID’ for the transaction generated using UUID version 4. | 
 **xTargetEnvironment** | **String** | The identifier of the Wallet Platform system where the transaction shall be processed. This parameter is used to route the request to the Wallet Platform system that will initiate the transaction. | 
 **xCallbackUrl** | **String** | URL to the server where the callback should be sent. | [optional] 
 **transfer** | [**Transfer**](Transfer.md) |  | [optional] 

### Return type

Void (empty response body)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, ReferenceId already in use, Incorrect currency for target environment

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **validateAccountHolderStatus**
```swift
    open class func validateAccountHolderStatus(accountHolderId: String, accountHolderIdType: String, authorization: String, xTargetEnvironment: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

ValidateAccountHolderStatus

Operation is used  to check if an account holder is registered and active in the system.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let accountHolderId = "accountHolderId_example" // String | The AccountHolder number that's Validated according to the AccountHolder ID type (case Sensitive)<br> msisdn - Mobile Number validated according to ITU-T E.164. Validated with IsMSISDN <br>email - Validated to be a valid e-mail format. Validated with IsEmail
let accountHolderIdType = "accountHolderIdType_example" // String | Specifies the type of the party id. Allowed values [msisdn, email, party_code].
let authorization = "authorization_example" // String | Bearer Authentication Token generated using CreateAccessToken API Call
let xTargetEnvironment = "xTargetEnvironment_example" // String | The identifier of the Wallet Platform system where the transaction shall be processed. This parameter is used to route the request to the Wallet Platform system that will initiate the transaction.

// ValidateAccountHolderStatus
DefaultAPI.validateAccountHolderStatus(accountHolderId: accountHolderId, accountHolderIdType: accountHolderIdType, authorization: authorization, xTargetEnvironment: xTargetEnvironment) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountHolderId** | **String** | The AccountHolder number that&#39;s Validated according to the AccountHolder ID type (case Sensitive)&lt;br&gt; msisdn - Mobile Number validated according to ITU-T E.164. Validated with IsMSISDN &lt;br&gt;email - Validated to be a valid e-mail format. Validated with IsEmail | 
 **accountHolderIdType** | **String** | Specifies the type of the party id. Allowed values [msisdn, email, party_code]. | 
 **authorization** | **String** | Bearer Authentication Token generated using CreateAccessToken API Call | 
 **xTargetEnvironment** | **String** | The identifier of the Wallet Platform system where the transaction shall be processed. This parameter is used to route the request to the Wallet Platform system that will initiate the transaction. | 

### Return type

Void (empty response body)

### Authorization

[apiKeyQuery](../README.md#apiKeyQuery), [apiKeyHeader](../README.md#apiKeyHeader)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Incorrect target environment

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

