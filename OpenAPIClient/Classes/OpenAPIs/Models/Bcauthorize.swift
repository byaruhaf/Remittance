//
// Bcauthorize.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct Bcauthorize: Codable, JSONEncodable, Hashable {

    public enum AccessType: String, Codable, CaseIterable {
        case online = "online"
        case offline = "offline"
    }
    /** Space separated list of scopes. */
    public var scope: String?
    /** The identity of the account holder. */
    public var loginHint: String?
    /** Value either online, or offline. */
    public var accessType: AccessType?
    /** The validity time of the consent in secondsThis parameter can only be used together with access type offline. */
    public var consentValidIn: Int?
    /** This token is required when the client is using Ping or Push mode. */
    public var clientNotificationToken: String?
    /** Base64 encoded Instrcution of the financial transaction. */
    public var scopeInstruction: String?

    public init(scope: String? = nil, loginHint: String? = nil, accessType: AccessType? = nil, consentValidIn: Int? = nil, clientNotificationToken: String? = nil, scopeInstruction: String? = nil) {
        self.scope = scope
        self.loginHint = loginHint
        self.accessType = accessType
        self.consentValidIn = consentValidIn
        self.clientNotificationToken = clientNotificationToken
        self.scopeInstruction = scopeInstruction
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case scope
        case loginHint = "login_hint"
        case accessType = "access_type"
        case consentValidIn = "consent_valid_in"
        case clientNotificationToken = "client_notification_token"
        case scopeInstruction = "scope_instruction"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(scope, forKey: .scope)
        try container.encodeIfPresent(loginHint, forKey: .loginHint)
        try container.encodeIfPresent(accessType, forKey: .accessType)
        try container.encodeIfPresent(consentValidIn, forKey: .consentValidIn)
        try container.encodeIfPresent(clientNotificationToken, forKey: .clientNotificationToken)
        try container.encodeIfPresent(scopeInstruction, forKey: .scopeInstruction)
    }
}

