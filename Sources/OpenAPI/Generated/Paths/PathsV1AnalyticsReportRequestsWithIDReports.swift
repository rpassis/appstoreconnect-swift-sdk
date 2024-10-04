// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AnalyticsReportRequests.WithID {
	public var reports: Reports {
		Reports(path: path + "/reports")
	}

	public struct Reports {
		/// Path: `/v1/analyticsReportRequests/{id}/reports`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AnalyticsReportsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "analyticsReportRequests_reports_getToManyRelated")
		}

		public struct GetParameters {
			public var filterName: [String]?
			public var filterCategory: [FilterCategory]?
			public var fieldsAnalyticsReports: [FieldsAnalyticsReports]?
			public var limit: Int?

			public enum FilterCategory: String, Codable, CaseIterable {
				case appUsage = "APP_USAGE"
				case appStoreEngagement = "APP_STORE_ENGAGEMENT"
				case commerce = "COMMERCE"
				case frameworkUsage = "FRAMEWORK_USAGE"
				case performance = "PERFORMANCE"
			}

			public enum FieldsAnalyticsReports: String, Codable, CaseIterable {
				case name
				case category
				case instances
			}

			public init(filterName: [String]? = nil, filterCategory: [FilterCategory]? = nil, fieldsAnalyticsReports: [FieldsAnalyticsReports]? = nil, limit: Int? = nil) {
				self.filterName = filterName
				self.filterCategory = filterCategory
				self.fieldsAnalyticsReports = fieldsAnalyticsReports
				self.limit = limit
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterName, forKey: "filter[name]")
				encoder.encode(filterCategory, forKey: "filter[category]")
				encoder.encode(fieldsAnalyticsReports, forKey: "fields[analyticsReports]")
				encoder.encode(limit, forKey: "limit")
				return encoder.items
			}
		}
	}
}
