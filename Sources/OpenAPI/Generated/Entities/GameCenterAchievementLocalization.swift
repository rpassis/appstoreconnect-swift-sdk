// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct GameCenterAchievementLocalization: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case gameCenterAchievementLocalizations
	}

	public struct Attributes: Codable {
		public var locale: String?
		public var name: String?
		public var beforeEarnedDescription: String?
		public var afterEarnedDescription: String?

		public init(locale: String? = nil, name: String? = nil, beforeEarnedDescription: String? = nil, afterEarnedDescription: String? = nil) {
			self.locale = locale
			self.name = name
			self.beforeEarnedDescription = beforeEarnedDescription
			self.afterEarnedDescription = afterEarnedDescription
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.locale = try values.decodeIfPresent(String.self, forKey: "locale")
			self.name = try values.decodeIfPresent(String.self, forKey: "name")
			self.beforeEarnedDescription = try values.decodeIfPresent(String.self, forKey: "beforeEarnedDescription")
			self.afterEarnedDescription = try values.decodeIfPresent(String.self, forKey: "afterEarnedDescription")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(locale, forKey: "locale")
			try values.encodeIfPresent(name, forKey: "name")
			try values.encodeIfPresent(beforeEarnedDescription, forKey: "beforeEarnedDescription")
			try values.encodeIfPresent(afterEarnedDescription, forKey: "afterEarnedDescription")
		}
	}

	public struct Relationships: Codable {
		public var gameCenterAchievement: GameCenterAchievement?
		public var gameCenterAchievementImage: GameCenterAchievementImage?

		public struct GameCenterAchievement: Codable {
			public var links: RelationshipLinks?
			public var data: Data?

			public struct Data: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case gameCenterAchievements
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(links: RelationshipLinks? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(RelationshipLinks.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct GameCenterAchievementImage: Codable {
			public var links: RelationshipLinks?
			public var data: Data?

			public struct Data: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case gameCenterAchievementImages
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(links: RelationshipLinks? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(RelationshipLinks.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public init(gameCenterAchievement: GameCenterAchievement? = nil, gameCenterAchievementImage: GameCenterAchievementImage? = nil) {
			self.gameCenterAchievement = gameCenterAchievement
			self.gameCenterAchievementImage = gameCenterAchievementImage
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.gameCenterAchievement = try values.decodeIfPresent(GameCenterAchievement.self, forKey: "gameCenterAchievement")
			self.gameCenterAchievementImage = try values.decodeIfPresent(GameCenterAchievementImage.self, forKey: "gameCenterAchievementImage")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(gameCenterAchievement, forKey: "gameCenterAchievement")
			try values.encodeIfPresent(gameCenterAchievementImage, forKey: "gameCenterAchievementImage")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.relationships = relationships
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
		self.links = try values.decodeIfPresent(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encodeIfPresent(relationships, forKey: "relationships")
		try values.encodeIfPresent(links, forKey: "links")
	}
}
