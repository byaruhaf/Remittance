# Oauth2TokenResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessToken** | **String** | Oauth2 JWT access token.The generated token is valid 3600 seconds as default. | [optional] 
**tokenType** | **String** | Value is Bearer | [optional] 
**expiresIn** | **Double** | Shows when the authentication request ID expires, in seconds. | [optional] 
**scope** | **String** | List of scopes that belongs to the authentication request ID. | [optional] 
**refreshToken** | **String** | UUID of the refresh_token | [optional] 
**refreshTokenExpiredIn** | **Int** | The time in seconds until the consent can no longer be refreshed. Based on the default value for consent validity, or the value set to parameter consent_valid_in sent in the bc-authorize request. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


