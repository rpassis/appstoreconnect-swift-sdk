// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var preReleaseVersions: PreReleaseVersions {
		PreReleaseVersions(path: path + "/preReleaseVersions")
	}

	public struct PreReleaseVersions {
		/// Path: `/v1/preReleaseVersions`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.PreReleaseVersionsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "preReleaseVersions_getCollection")
		}

		public struct GetParameters {
			public var filterBuildsExpired: [String]?
			public var filterBuildsProcessingState: [FilterBuildsProcessingState]?
			public var filterBuildsVersion: [String]?
			public var filterPlatform: [FilterPlatform]?
			public var filterVersion: [String]?
			public var filterApp: [String]?
			public var filterBuilds: [String]?
			public var sort: [Sort]?
			public var fieldsPreReleaseVersions: [FieldsPreReleaseVersions]?
			public var fieldsBuilds: [FieldsBuilds]?
			public var fieldsApps: [FieldsApps]?
			public var limit: Int?
			public var include: [Include]?
			public var limitBuilds: Int?

			public enum FilterBuildsProcessingState: String, Codable, CaseIterable {
				case processing = "PROCESSING"
				case failed = "FAILED"
				case invalid = "INVALID"
				case valid = "VALID"
			}

			public enum FilterPlatform: String, Codable, CaseIterable {
				case ios = "IOS"
				case macOs = "MAC_OS"
				case tvOs = "TV_OS"
				case visionOs = "VISION_OS"
			}

			public enum Sort: String, Codable, CaseIterable {
				case version
				case minusversion = "-version"
			}

			public enum FieldsPreReleaseVersions: String, Codable, CaseIterable {
				case version
				case platform
				case builds
				case app
			}

			public enum FieldsBuilds: String, Codable, CaseIterable {
				case version
				case uploadedDate
				case expirationDate
				case expired
				case minOsVersion
				case lsMinimumSystemVersion
				case computedMinMacOsVersion
				case iconAssetToken
				case processingState
				case buildAudienceType
				case usesNonExemptEncryption
				case preReleaseVersion
				case individualTesters
				case betaGroups
				case betaBuildLocalizations
				case appEncryptionDeclaration
				case betaAppReviewSubmission
				case app
				case buildBetaDetail
				case appStoreVersion
				case icons
				case buildBundles
				case perfPowerMetrics
				case diagnosticSignatures
			}

			public enum FieldsApps: String, Codable, CaseIterable {
				case name
				case bundleID = "bundleId"
				case sku
				case primaryLocale
				case isOrEverWasMadeForKids
				case subscriptionStatusURL = "subscriptionStatusUrl"
				case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
				case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
				case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
				case contentRightsDeclaration
				case streamlinedPurchasingEnabled
				case appEncryptionDeclarations
				case ciProduct
				case betaTesters
				case betaGroups
				case appStoreVersions
				case preReleaseVersions
				case betaAppLocalizations
				case builds
				case betaLicenseAgreement
				case betaAppReviewDetail
				case appInfos
				case appClips
				case appPricePoints
				case endUserLicenseAgreement
				case preOrder
				case appPriceSchedule
				case appAvailability
				case appAvailabilityV2
				case inAppPurchases
				case subscriptionGroups
				case gameCenterEnabledVersions
				case perfPowerMetrics
				case appCustomProductPages
				case inAppPurchasesV2
				case promotedPurchases
				case appEvents
				case reviewSubmissions
				case subscriptionGracePeriod
				case customerReviews
				case gameCenterDetail
				case appStoreVersionExperimentsV2
				case alternativeDistributionKey
				case analyticsReportRequests
				case marketplaceSearchDetail
			}

			public enum Include: String, Codable, CaseIterable {
				case builds
				case app
			}

			public init(filterBuildsExpired: [String]? = nil, filterBuildsProcessingState: [FilterBuildsProcessingState]? = nil, filterBuildsVersion: [String]? = nil, filterPlatform: [FilterPlatform]? = nil, filterVersion: [String]? = nil, filterApp: [String]? = nil, filterBuilds: [String]? = nil, sort: [Sort]? = nil, fieldsPreReleaseVersions: [FieldsPreReleaseVersions]? = nil, fieldsBuilds: [FieldsBuilds]? = nil, fieldsApps: [FieldsApps]? = nil, limit: Int? = nil, include: [Include]? = nil, limitBuilds: Int? = nil) {
				self.filterBuildsExpired = filterBuildsExpired
				self.filterBuildsProcessingState = filterBuildsProcessingState
				self.filterBuildsVersion = filterBuildsVersion
				self.filterPlatform = filterPlatform
				self.filterVersion = filterVersion
				self.filterApp = filterApp
				self.filterBuilds = filterBuilds
				self.sort = sort
				self.fieldsPreReleaseVersions = fieldsPreReleaseVersions
				self.fieldsBuilds = fieldsBuilds
				self.fieldsApps = fieldsApps
				self.limit = limit
				self.include = include
				self.limitBuilds = limitBuilds
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterBuildsExpired, forKey: "filter[builds.expired]")
				encoder.encode(filterBuildsProcessingState, forKey: "filter[builds.processingState]")
				encoder.encode(filterBuildsVersion, forKey: "filter[builds.version]")
				encoder.encode(filterPlatform, forKey: "filter[platform]")
				encoder.encode(filterVersion, forKey: "filter[version]")
				encoder.encode(filterApp, forKey: "filter[app]")
				encoder.encode(filterBuilds, forKey: "filter[builds]")
				encoder.encode(sort, forKey: "sort")
				encoder.encode(fieldsPreReleaseVersions, forKey: "fields[preReleaseVersions]")
				encoder.encode(fieldsBuilds, forKey: "fields[builds]")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitBuilds, forKey: "limit[builds]")
				return encoder.items
			}
		}
	}
}
