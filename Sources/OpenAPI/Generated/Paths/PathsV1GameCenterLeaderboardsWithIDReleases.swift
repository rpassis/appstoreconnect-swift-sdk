// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterLeaderboards.WithID {
	public var releases: Releases {
		Releases(path: path + "/releases")
	}

	public struct Releases {
		/// Path: `/v1/gameCenterLeaderboards/{id}/releases`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterLeaderboardReleasesResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "gameCenterLeaderboards_releases_getToManyRelated")
		}

		public struct GetParameters {
			public var filterLive: [String]?
			public var filterGameCenterDetail: [String]?
			public var fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases]?
			public var fieldsGameCenterDetails: [FieldsGameCenterDetails]?
			public var fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsGameCenterLeaderboardReleases: String, Codable, CaseIterable {
				case live
				case gameCenterDetail
				case gameCenterLeaderboard
			}

			public enum FieldsGameCenterDetails: String, Codable, CaseIterable {
				case arcadeEnabled
				case challengeEnabled
				case app
				case gameCenterAppVersions
				case gameCenterGroup
				case gameCenterLeaderboards
				case gameCenterLeaderboardSets
				case gameCenterAchievements
				case defaultLeaderboard
				case defaultGroupLeaderboard
				case achievementReleases
				case leaderboardReleases
				case leaderboardSetReleases
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

			public enum Include: String, Codable, CaseIterable {
				case gameCenterDetail
				case gameCenterLeaderboard
			}

			public init(filterLive: [String]? = nil, filterGameCenterDetail: [String]? = nil, fieldsGameCenterLeaderboardReleases: [FieldsGameCenterLeaderboardReleases]? = nil, fieldsGameCenterDetails: [FieldsGameCenterDetails]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.filterLive = filterLive
				self.filterGameCenterDetail = filterGameCenterDetail
				self.fieldsGameCenterLeaderboardReleases = fieldsGameCenterLeaderboardReleases
				self.fieldsGameCenterDetails = fieldsGameCenterDetails
				self.fieldsGameCenterLeaderboards = fieldsGameCenterLeaderboards
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterLive, forKey: "filter[live]")
				encoder.encode(filterGameCenterDetail, forKey: "filter[gameCenterDetail]")
				encoder.encode(fieldsGameCenterLeaderboardReleases, forKey: "fields[gameCenterLeaderboardReleases]")
				encoder.encode(fieldsGameCenterDetails, forKey: "fields[gameCenterDetails]")
				encoder.encode(fieldsGameCenterLeaderboards, forKey: "fields[gameCenterLeaderboards]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
