// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.BetaTesters.WithID {
	public var apps: Apps {
		Apps(path: path + "/apps")
	}

	public struct Apps {
		/// Path: `/v1/betaTesters/{id}/apps`
		public let path: String

		public func get(fieldsApps: [FieldsApps]? = nil, limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.AppsWithoutIncludesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsApps, limit), id: "betaTesters_apps_getToManyRelated")
		}

		private func makeGetQuery(_ fieldsApps: [FieldsApps]?, _ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsApps, forKey: "fields[apps]", explode: false)
			encoder.encode(limit, forKey: "limit")
			return encoder.items
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
	}
}
