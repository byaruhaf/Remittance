//
// ErrorReason.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ErrorReason: Codable, JSONEncodable, Hashable {

    public enum Code: String, Codable, CaseIterable {
        case payeeNotFound = "PAYEE_NOT_FOUND"
        case payerNotFound = "PAYER_NOT_FOUND"
        case notAllowed = "NOT_ALLOWED"
        case notAllowedTargetEnvironment = "NOT_ALLOWED_TARGET_ENVIRONMENT"
        case invalidCallbackUrlHost = "INVALID_CALLBACK_URL_HOST"
        case invalidCurrency = "INVALID_CURRENCY"
        case serviceUnavailable = "SERVICE_UNAVAILABLE"
        case internalProcessingError = "INTERNAL_PROCESSING_ERROR"
        case notEnoughFunds = "NOT_ENOUGH_FUNDS"
        case payerLimitReached = "PAYER_LIMIT_REACHED"
        case payeeNotAllowedToReceive = "PAYEE_NOT_ALLOWED_TO_RECEIVE"
        case paymentNotApproved = "PAYMENT_NOT_APPROVED"
        case resourceNotFound = "RESOURCE_NOT_FOUND"
        case approvalRejected = "APPROVAL_REJECTED"
        case expired = "EXPIRED"
        case transactionCanceledPeriod = "TRANSACTION_CANCELED."
        case resourceAlreadyExist = "RESOURCE_ALREADY_EXIST"
        case transactionNotCompleted = "TRANSACTION_NOT_COMPLETED"
        case transactionNotFound = "TRANSACTION_NOT_FOUND"
        case informationalScopeInstruction = "INFORMATIONAL_SCOPE_INSTRUCTION"
        case missingScopeInstruction = "MISSING_SCOPE_INSTRUCTION"
        case moreThanOneFinancialScopeNotSupported = "MORE_THAN_ONE_FINANCIAL_SCOPE_NOT_SUPPORTED"
        case unsupportedScopeCombination = "UNSUPPORTED_SCOPE_COMBINATION"
        case consentMismatch = "CONSENT_MISMATCH"
        case unsupportedScope = "UNSUPPORTED_SCOPE"
        case notFound = "NOT_FOUND"
    }
    public var code: Code?
    public var message: String?

    public init(code: Code? = nil, message: String? = nil) {
        self.code = code
        self.message = message
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case message
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(code, forKey: .code)
        try container.encodeIfPresent(message, forKey: .message)
    }
}

