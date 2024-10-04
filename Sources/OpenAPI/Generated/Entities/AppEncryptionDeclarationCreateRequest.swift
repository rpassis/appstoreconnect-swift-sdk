// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AppEncryptionDeclarationCreateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var attributes: Attributes
		public var relationships: Relationships

		public enum `Type`: String, Codable, CaseIterable {
			case appEncryptionDeclarations
		}

		public struct Attributes: Codable {
			public var appDescription: String
			public var containsProprietaryCryptography: Bool
			public var containsThirdPartyCryptography: Bool
			public var isAvailableOnFrenchStore: Bool

			public init(appDescription: String, containsProprietaryCryptography: Bool, containsThirdPartyCryptography: Bool, isAvailableOnFrenchStore: Bool) {
				self.appDescription = appDescription
				self.containsProprietaryCryptography = containsProprietaryCryptography
				self.containsThirdPartyCryptography = containsThirdPartyCryptography
				self.isAvailableOnFrenchStore = isAvailableOnFrenchStore
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.appDescription = try values.decode(String.self, forKey: "appDescription")
				self.containsProprietaryCryptography = try values.decode(Bool.self, forKey: "containsProprietaryCryptography")
				self.containsThirdPartyCryptography = try values.decode(Bool.self, forKey: "containsThirdPartyCryptography")
				self.isAvailableOnFrenchStore = try values.decode(Bool.self, forKey: "availableOnFrenchStore")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encode(appDescription, forKey: "appDescription")
				try values.encode(containsProprietaryCryptography, forKey: "containsProprietaryCryptography")
				try values.encode(containsThirdPartyCryptography, forKey: "containsThirdPartyCryptography")
				try values.encode(isAvailableOnFrenchStore, forKey: "availableOnFrenchStore")
			}
		}

		public struct Relationships: Codable {
			/// - warning: Deprecated.
			public var app: App

			@available(*, deprecated, message: "Deprecated")
			public struct App: Codable {
				public var data: Data

				public struct Data: Codable, Identifiable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case apps
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

				public init(data: Data) {
					self.data = data
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.data = try values.decode(Data.self, forKey: "data")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(data, forKey: "data")
				}
			}

			public init(app: App) {
				self.app = app
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.app = try values.decode(App.self, forKey: "app")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encode(app, forKey: "app")
			}
		}

		public init(type: `Type`, attributes: Attributes, relationships: Relationships) {
			self.type = type
			self.attributes = attributes
			self.relationships = relationships
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.type = try values.decode(`Type`.self, forKey: "type")
			self.attributes = try values.decode(Attributes.self, forKey: "attributes")
			self.relationships = try values.decode(Relationships.self, forKey: "relationships")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encode(type, forKey: "type")
			try values.encode(attributes, forKey: "attributes")
			try values.encode(relationships, forKey: "relationships")
		}
	}

	public init(data: Data) {
		self.data = data
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode(Data.self, forKey: "data")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
	}
}
