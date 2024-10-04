// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterAchievementLocalizations.WithID {
	public var gameCenterAchievementImage: GameCenterAchievementImage {
		GameCenterAchievementImage(path: path + "/gameCenterAchievementImage")
	}

	public struct GameCenterAchievementImage {
		/// Path: `/v1/gameCenterAchievementLocalizations/{id}/gameCenterAchievementImage`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterAchievementImageResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "gameCenterAchievementLocalizations_gameCenterAchievementImage_getToOneRelated")
		}

		public struct GetParameters {
			public var fieldsGameCenterAchievementImages: [FieldsGameCenterAchievementImages]?
			public var fieldsGameCenterAchievementLocalizations: [FieldsGameCenterAchievementLocalizations]?
			public var include: [Include]?

			public enum FieldsGameCenterAchievementImages: String, Codable, CaseIterable {
				case fileSize
				case fileName
				case imageAsset
				case uploadOperations
				case assetDeliveryState
				case uploaded
				case gameCenterAchievementLocalization
			}

			public enum FieldsGameCenterAchievementLocalizations: String, Codable, CaseIterable {
				case locale
				case name
				case beforeEarnedDescription
				case afterEarnedDescription
				case gameCenterAchievement
				case gameCenterAchievementImage
			}

			public enum Include: String, Codable, CaseIterable {
				case gameCenterAchievementLocalization
			}

			public init(fieldsGameCenterAchievementImages: [FieldsGameCenterAchievementImages]? = nil, fieldsGameCenterAchievementLocalizations: [FieldsGameCenterAchievementLocalizations]? = nil, include: [Include]? = nil) {
				self.fieldsGameCenterAchievementImages = fieldsGameCenterAchievementImages
				self.fieldsGameCenterAchievementLocalizations = fieldsGameCenterAchievementLocalizations
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsGameCenterAchievementImages, forKey: "fields[gameCenterAchievementImages]")
				encoder.encode(fieldsGameCenterAchievementLocalizations, forKey: "fields[gameCenterAchievementLocalizations]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
