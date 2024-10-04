// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterLeaderboards.WithID {
	public var localizations: Localizations {
		Localizations(path: path + "/localizations")
	}

	public struct Localizations {
		/// Path: `/v1/gameCenterLeaderboards/{id}/localizations`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterLeaderboardLocalizationsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "gameCenterLeaderboards_localizations_getToManyRelated")
		}

		public struct GetParameters {
			public var fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations]?
			public var fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]?
			public var fieldsGameCenterLeaderboardImages: [FieldsGameCenterLeaderboardImages]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsGameCenterLeaderboardLocalizations: String, Codable, CaseIterable {
				case locale
				case name
				case formatterOverride
				case formatterSuffix
				case formatterSuffixSingular
				case gameCenterLeaderboard
				case gameCenterLeaderboardImage
			}

			public enum FieldsGameCenterLeaderboards: String, Codable, CaseIterable {
				case defaultFormatter
				case referenceName
				case vendorIdentifier
				case submissionType
				case scoreSortType
				case scoreRangeStart
				case scoreRangeEnd
				case recurrenceStartDate
				case recurrenceDuration
				case recurrenceRule
				case archived
				case gameCenterDetail
				case gameCenterGroup
				case groupLeaderboard
				case gameCenterLeaderboardSets
				case localizations
				case releases
			}

			public enum FieldsGameCenterLeaderboardImages: String, Codable, CaseIterable {
				case fileSize
				case fileName
				case imageAsset
				case uploadOperations
				case assetDeliveryState
				case uploaded
				case gameCenterLeaderboardLocalization
			}

			public enum Include: String, Codable, CaseIterable {
				case gameCenterLeaderboard
				case gameCenterLeaderboardImage
			}

			public init(fieldsGameCenterLeaderboardLocalizations: [FieldsGameCenterLeaderboardLocalizations]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]? = nil, fieldsGameCenterLeaderboardImages: [FieldsGameCenterLeaderboardImages]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.fieldsGameCenterLeaderboardLocalizations = fieldsGameCenterLeaderboardLocalizations
				self.fieldsGameCenterLeaderboards = fieldsGameCenterLeaderboards
				self.fieldsGameCenterLeaderboardImages = fieldsGameCenterLeaderboardImages
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsGameCenterLeaderboardLocalizations, forKey: "fields[gameCenterLeaderboardLocalizations]")
				encoder.encode(fieldsGameCenterLeaderboards, forKey: "fields[gameCenterLeaderboards]")
				encoder.encode(fieldsGameCenterLeaderboardImages, forKey: "fields[gameCenterLeaderboardImages]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
