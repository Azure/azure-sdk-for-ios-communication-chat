// --------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// --------------------------------------------------------------------------

import AzureCore
import Foundation
// swiftlint:disable superfluous_disable_command
// swiftlint:disable identifier_name
// swiftlint:disable line_length
// swiftlint:disable cyclomatic_complexity

/// Chat message.
internal struct ChatMessageInternal: Codable {
    // MARK: Properties

    /// The id of the chat message. This id is server generated.
    internal let id: String
    /// The chat message type.
    internal let type: ChatMessageType
    /// Sequence of the chat message in the conversation.
    internal let sequenceId: String
    /// Version of the chat message.
    internal let version: String
    /// Content of a chat message.
    internal let content: ChatMessageContentInternal?
    /// The display name of the chat message sender. This property is used to populate sender name for push notifications.
    internal let senderDisplayName: String?
    /// The timestamp when the chat message arrived at the server. The timestamp is in RFC3339 format: `yyyy-MM-ddTHH:mm:ssZ`.
    internal let createdOn: Iso8601Date
    /// Identifies a participant in Azure Communication services. A participant is, for example, a phone number or an Azure communication user. This model must be interpreted as a union: Apart from rawId, at most one further property may be set.
    internal let senderCommunicationIdentifier: CommunicationIdentifierModelInternal?
    /// The timestamp (if applicable) when the message was deleted. The timestamp is in RFC3339 format: `yyyy-MM-ddTHH:mm:ssZ`.
    internal let deletedOn: Iso8601Date?
    /// The last timestamp (if applicable) when the message was edited. The timestamp is in RFC3339 format: `yyyy-MM-ddTHH:mm:ssZ`.
    internal let editedOn: Iso8601Date?

    // MARK: Initializers

    /// Initialize a `ChatMessageInternal` structure.
    /// - Parameters:
    ///   - id: The id of the chat message. This id is server generated.
    ///   - type: The chat message type.
    ///   - sequenceId: Sequence of the chat message in the conversation.
    ///   - version: Version of the chat message.
    ///   - content: Content of a chat message.
    ///   - senderDisplayName: The display name of the chat message sender. This property is used to populate sender name for push notifications.
    ///   - createdOn: The timestamp when the chat message arrived at the server. The timestamp is in RFC3339 format: `yyyy-MM-ddTHH:mm:ssZ`.
    ///   - senderCommunicationIdentifier: Identifies a participant in Azure Communication services. A participant is, for example, a phone number or an Azure communication user. This model must be interpreted as a union: Apart from rawId, at most one further property may be set.
    ///   - deletedOn: The timestamp (if applicable) when the message was deleted. The timestamp is in RFC3339 format: `yyyy-MM-ddTHH:mm:ssZ`.
    ///   - editedOn: The last timestamp (if applicable) when the message was edited. The timestamp is in RFC3339 format: `yyyy-MM-ddTHH:mm:ssZ`.
    internal init(
        id: String, type: ChatMessageType, sequenceId: String, version: String,
        content: ChatMessageContentInternal? = nil,
        senderDisplayName: String? = nil, createdOn: Iso8601Date,
        senderCommunicationIdentifier: CommunicationIdentifierModelInternal? = nil, deletedOn: Iso8601Date? = nil,
        editedOn: Iso8601Date? = nil
    ) {
        self.id = id
        self.type = type
        self.sequenceId = sequenceId
        self.version = version
        self.content = content
        self.senderDisplayName = senderDisplayName
        self.createdOn = createdOn
        self.senderCommunicationIdentifier = senderCommunicationIdentifier
        self.deletedOn = deletedOn
        self.editedOn = editedOn
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case id = "id"
        case type = "type"
        case sequenceId = "sequenceId"
        case version = "version"
        case content = "content"
        case senderDisplayName = "senderDisplayName"
        case createdOn = "createdOn"
        case senderCommunicationIdentifier = "senderCommunicationIdentifier"
        case deletedOn = "deletedOn"
        case editedOn = "editedOn"
    }

    /// Initialize a `ChatMessageInternal` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.type = try container.decode(ChatMessageType.self, forKey: .type)
        self.sequenceId = try container.decode(String.self, forKey: .sequenceId)
        self.version = try container.decode(String.self, forKey: .version)
        self.content = try? container.decode(ChatMessageContentInternal.self, forKey: .content)
        self.senderDisplayName = try? container.decode(String.self, forKey: .senderDisplayName)
        self.createdOn = try container.decode(Iso8601Date.self, forKey: .createdOn)
        self.senderCommunicationIdentifier = try? container.decode(
            CommunicationIdentifierModelInternal.self,
            forKey: .senderCommunicationIdentifier
        )
        self.deletedOn = try? container.decode(Iso8601Date.self, forKey: .deletedOn)
        self.editedOn = try? container.decode(Iso8601Date.self, forKey: .editedOn)
    }

    /// Encode a `ChatMessageInternal` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(type, forKey: .type)
        try container.encode(sequenceId, forKey: .sequenceId)
        try container.encode(version, forKey: .version)
        if content != nil { try? container.encode(content, forKey: .content) }
        if senderDisplayName != nil { try? container.encode(senderDisplayName, forKey: .senderDisplayName) }
        try container.encode(createdOn, forKey: .createdOn)
        if senderCommunicationIdentifier !=
            nil { try? container.encode(senderCommunicationIdentifier, forKey: .senderCommunicationIdentifier) }
        if deletedOn != nil { try? container.encode(deletedOn, forKey: .deletedOn) }
        if editedOn != nil { try? container.encode(editedOn, forKey: .editedOn) }
    }
}
