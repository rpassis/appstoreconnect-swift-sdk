// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppPriceSchedules.WithID {
	public var manualPrices: ManualPrices {
		ManualPrices(path: path + "/manualPrices")
	}

	public struct ManualPrices {
		/// Path: `/v1/appPriceSchedules/{id}/manualPrices`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppPricesV2Response> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "appPriceSchedules_manualPrices_getToManyRelated")
		}

		public struct GetParameters {
			public var filterStartDate: [String]?
			public var filterEndDate: [String]?
			public var filterTerritory: [String]?
			public var fieldsAppPrices: [FieldsAppPrices]?
			public var fieldsAppPricePoints: [FieldsAppPricePoints]?
			public var fieldsTerritories: [FieldsTerritories]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsAppPrices: String, Codable, CaseIterable {
				case manual
				case startDate
				case endDate
				case appPricePoint
				case territory
			}

			public enum FieldsAppPricePoints: String, Codable, CaseIterable {
				case customerPrice
				case proceeds
				case app
				case equalizations
				case territory
			}

			public enum FieldsTerritories: String, Codable, CaseIterable {
				case currency
			}

			public enum Include: String, Codable, CaseIterable {
				case appPricePoint
				case territory
			}

			public init(filterStartDate: [String]? = nil, filterEndDate: [String]? = nil, filterTerritory: [String]? = nil, fieldsAppPrices: [FieldsAppPrices]? = nil, fieldsAppPricePoints: [FieldsAppPricePoints]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.filterStartDate = filterStartDate
				self.filterEndDate = filterEndDate
				self.filterTerritory = filterTerritory
				self.fieldsAppPrices = fieldsAppPrices
				self.fieldsAppPricePoints = fieldsAppPricePoints
				self.fieldsTerritories = fieldsTerritories
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterStartDate, forKey: "filter[startDate]")
				encoder.encode(filterEndDate, forKey: "filter[endDate]")
				encoder.encode(filterTerritory, forKey: "filter[territory]")
				encoder.encode(fieldsAppPrices, forKey: "fields[appPrices]")
				encoder.encode(fieldsAppPricePoints, forKey: "fields[appPricePoints]")
				encoder.encode(fieldsTerritories, forKey: "fields[territories]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
