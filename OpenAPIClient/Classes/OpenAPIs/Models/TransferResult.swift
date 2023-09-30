//
// TransferResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct TransferResult: Codable, JSONEncodable, Hashable {

    public enum Status: String, Codable, CaseIterable {
        case pending = "PENDING"
        case successful = "SUCCESSFUL"
        case failed = "FAILED"
    }
    /** Amount that will be debited from the payer account. */
    public var amount: String?
    /** ISO4217 Currency */
    public var currency: String?
    /** Financial transactionIdd from mobile money manager.<br> Used to connect to the specific financial transaction made in the account */
    public var financialTransactionId: String?
    /** External id is used as a reference to the transaction. External id is used for reconciliation. The external id will be included in transaction history report. <br>External id is not required to be unique. */
    public var externalId: String?
    public var payee: Party?
    /** Message that will be written in the payer transaction history message field. */
    public var payerMessage: String?
    /** Message that will be written in the payee transaction history note field. */
    public var payeeNote: String?
    public var status: Status?
    public var reason: ErrorReason?

    public init(amount: String? = nil, currency: String? = nil, financialTransactionId: String? = nil, externalId: String? = nil, payee: Party? = nil, payerMessage: String? = nil, payeeNote: String? = nil, status: Status? = nil, reason: ErrorReason? = nil) {
        self.amount = amount
        self.currency = currency
        self.financialTransactionId = financialTransactionId
        self.externalId = externalId
        self.payee = payee
        self.payerMessage = payerMessage
        self.payeeNote = payeeNote
        self.status = status
        self.reason = reason
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case amount
        case currency
        case financialTransactionId
        case externalId
        case payee
        case payerMessage
        case payeeNote
        case status
        case reason
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encodeIfPresent(currency, forKey: .currency)
        try container.encodeIfPresent(financialTransactionId, forKey: .financialTransactionId)
        try container.encodeIfPresent(externalId, forKey: .externalId)
        try container.encodeIfPresent(payee, forKey: .payee)
        try container.encodeIfPresent(payerMessage, forKey: .payerMessage)
        try container.encodeIfPresent(payeeNote, forKey: .payeeNote)
        try container.encodeIfPresent(status, forKey: .status)
        try container.encodeIfPresent(reason, forKey: .reason)
    }
}
