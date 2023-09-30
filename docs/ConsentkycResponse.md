# ConsentkycResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sub** | **String** | Subject - Identifier for the End-User at the Issuer. | [optional] 
**name** | **String** | End-User&#39;s full name in displayable form including all name parts. | [optional] 
**givenName** | **String** | Given name(s) or first name(s) of the End-User. | [optional] 
**familyName** | **String** | Surname(s) or last name(s) of the End-User. | [optional] 
**middleName** | **String** | Middle name(s) of the End-User. | [optional] 
**email** | **String** | End-User&#39;s preferred e-mail address. Its value MUST conform to the  RFC 5322 [RFC5322] address specification syntax. | [optional] 
**emailVerified** | **Bool** | The response value is True if the End-User&#39;s e-mail address has been verified;otherwise false. | [optional] 
**gender** | **String** | End-User&#39;s gender. | [optional] 
**locale** | **String** | Preffered language. | [optional] 
**phoneNumber** | **String** | End-User&#39;s preferred telephone number | [optional] 
**phoneNumberVerified** | **Bool** | The response value is True if the End-User&#39;s phone number has been verified; otherwise false. | [optional] 
**address** | **String** | User Address | [optional] 
**updatedAt** | **Double** | The time the End-User&#39;s information was last updated. | [optional] 
**status** | **String** | Account holder status. | [optional] 
**birthdate** | **String** | The birth date of the account holder. | [optional] 
**creditScore** | **String** | The credit score of the account holder. | [optional] 
**active** | **Bool** | The status of the account holder. | [optional] 
**countryOfBirth** | **String** | Account holder country of birth. | [optional] 
**regionOfBirth** | **String** | The birth region of the account holder. | [optional] 
**cityOfBirth** | **String** | The city of birth for the account holder. | [optional] 
**occupation** | **String** | Occupation of the account holder. | [optional] 
**employerName** | **String** | The name of the employer. | [optional] 
**identificationType** | **String** | Type of identification.The first non-expired identification is always chosen. | [optional] 
**identificationValue** | **String** | The value of the identification. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


