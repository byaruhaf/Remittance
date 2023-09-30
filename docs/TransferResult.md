# TransferResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **String** | Amount that will be debited from the payer account. | [optional] 
**currency** | **String** | ISO4217 Currency | [optional] 
**financialTransactionId** | **String** | Financial transactionIdd from mobile money manager.&lt;br&gt; Used to connect to the specific financial transaction made in the account | [optional] 
**externalId** | **String** | External id is used as a reference to the transaction. External id is used for reconciliation. The external id will be included in transaction history report. &lt;br&gt;External id is not required to be unique. | [optional] 
**payee** | [**Party**](Party.md) |  | [optional] 
**payerMessage** | **String** | Message that will be written in the payer transaction history message field. | [optional] 
**payeeNote** | **String** | Message that will be written in the payee transaction history note field. | [optional] 
**status** | **String** |  | [optional] 
**reason** | [**ErrorReason**](ErrorReason.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


