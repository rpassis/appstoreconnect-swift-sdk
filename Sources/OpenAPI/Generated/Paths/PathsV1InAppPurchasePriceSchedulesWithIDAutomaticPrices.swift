// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.InAppPurchasePriceSchedules.WithID {
	public var automaticPrices: AutomaticPrices {
		AutomaticPrices(path: path + "/automaticPrices")
	}

	public struct AutomaticPrices {
		/// Path: `/v1/inAppPurchasePriceSchedules/{id}/automaticPrices`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.InAppPurchasePricesResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "inAppPurchasePriceSchedules_automaticPrices_getToManyRelated")
		}

		public struct GetParameters {
			public var filterTerritory: [String]?
			public var fieldsInAppPurchasePrices: [FieldsInAppPurchasePrices]?
			public var fieldsInAppPurchasePricePoints: [FieldsInAppPurchasePricePoints]?
			public var fieldsTerritories: [FieldsTerritories]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsInAppPurchasePrices: String, Codable, CaseIterable {
				case startDate
				case endDate
				case manual
				case inAppPurchaseV2
				case inAppPurchasePricePoint
				case territory
			}

			public enum FieldsInAppPurchasePricePoints: String, Codable, CaseIterable {
				case customerPrice
				case proceeds
				case territory
				case inAppPurchaseV2
			}

			public enum FieldsTerritories: String, Codable, CaseIterable {
				case currency
			}

			public enum Include: String, Codable, CaseIterable {
				case inAppPurchasePricePoint
				case territory
			}

			public init(filterTerritory: [String]? = nil, fieldsInAppPurchasePrices: [FieldsInAppPurchasePrices]? = nil, fieldsInAppPurchasePricePoints: [FieldsInAppPurchasePricePoints]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.filterTerritory = filterTerritory
				self.fieldsInAppPurchasePrices = fieldsInAppPurchasePrices
				self.fieldsInAppPurchasePricePoints = fieldsInAppPurchasePricePoints
				self.fieldsTerritories = fieldsTerritories
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterTerritory, forKey: "filter[territory]")
				encoder.encode(fieldsInAppPurchasePrices, forKey: "fields[inAppPurchasePrices]")
				encoder.encode(fieldsInAppPurchasePricePoints, forKey: "fields[inAppPurchasePricePoints]")
				encoder.encode(fieldsTerritories, forKey: "fields[territories]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
