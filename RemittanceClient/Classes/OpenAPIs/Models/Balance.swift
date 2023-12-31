//
// Balance.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The available balance of the account */
public struct Balance: Codable, JSONEncodable, Hashable {

    /** The available balance of the account */
    public var availableBalance: String?
    /** ISO4217 Currency */
    public var currency: String?

    public init(availableBalance: String? = nil, currency: String? = nil) {
        self.availableBalance = availableBalance
        self.currency = currency
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case availableBalance
        case currency
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(availableBalance, forKey: .availableBalance)
        try container.encodeIfPresent(currency, forKey: .currency)
    }
}

