# Oauth2TokenRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**grantType** | **String** | Value ca be either \&quot;urn:openid:params:grant-type:ciba\&quot; or refresh_token | [optional] 
**authReqId** | **String** | Authentication request ID.Value is only mandatory if grant_type is \&quot;urn:openid:params:grant-type:ciba\&quot; | [optional] 
**refreshToken** | **String** | UUID.Refresh token retrieved from oauth2 token endpoint for consents with grant_type offline. This parameter is only valid if grant_type is refresh_token. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


