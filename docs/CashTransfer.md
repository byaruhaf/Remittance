# CashTransfer

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **String** | Amount that will be debited from the payer account. | [optional] 
**currency** | **String** | ISO4217 Currency | [optional] 
**payee** | [**Party**](Party.md) |  | [optional] 
**externalId** | **String** | External id is used as a reference to the transaction. External id is used for reconciliation. The external id will be included in transaction history report. &lt;br&gt;External id is not required to be unique. | [optional] 
**orginatingCountry** | **String** | Country where the request came from | [optional] 
**originalAmount** | **String** | Amount that was sent before any foreign exchange | [optional] 
**originalCurrency** | **String** | ISO4217 Currency of the originalAmoun | [optional] 
**payerMessage** | **String** | Message that will be written in the payer transaction history message field. | [optional] 
**payeeNote** | **String** | Message that will be written in the payee transaction history note field. | [optional] 
**payerIdentificationType** | **String** | Identification type of the payer | [optional] 
**payerIdentificationNumber** | **String** | Identification number of the payer | [optional] 
**payerIdentity** | **String** | Identification of the payer | [optional] 
**payerFirstName** | **String** | FirstName | [optional] 
**payerSurName** | **String** | Surname | [optional] 
**payerLanguageCode** | **String** | LanguageCode | [optional] 
**payerEmail** | **String** | Email | [optional] 
**payerMsisdn** | **String** | Msisdn | [optional] 
**payerGender** | **String** | GenderCode according to ISO 20022 | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


