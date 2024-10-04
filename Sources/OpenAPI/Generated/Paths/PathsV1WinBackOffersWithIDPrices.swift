// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.WinBackOffers.WithID {
	public var prices: Prices {
		Prices(path: path + "/prices")
	}

	public struct Prices {
		/// Path: `/v1/winBackOffers/{id}/prices`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.WinBackOfferPricesResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "winBackOffers_prices_getToManyRelated")
		}

		public struct GetParameters {
			public var filterTerritory: [String]?
			public var fieldsWinBackOfferPrices: [FieldsWinBackOfferPrices]?
			public var fieldsTerritories: [FieldsTerritories]?
			public var fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsWinBackOfferPrices: String, Codable, CaseIterable {
				case territory
				case subscriptionPricePoint
			}

			public enum FieldsTerritories: String, Codable, CaseIterable {
				case currency
			}

			public enum FieldsSubscriptionPricePoints: String, Codable, CaseIterable {
				case customerPrice
				case proceeds
				case proceedsYear2
				case territory
				case subscription
				case equalizations
			}

			public enum Include: String, Codable, CaseIterable {
				case territory
				case subscriptionPricePoint
			}

			public init(filterTerritory: [String]? = nil, fieldsWinBackOfferPrices: [FieldsWinBackOfferPrices]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, fieldsSubscriptionPricePoints: [FieldsSubscriptionPricePoints]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.filterTerritory = filterTerritory
				self.fieldsWinBackOfferPrices = fieldsWinBackOfferPrices
				self.fieldsTerritories = fieldsTerritories
				self.fieldsSubscriptionPricePoints = fieldsSubscriptionPricePoints
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterTerritory, forKey: "filter[territory]")
				encoder.encode(fieldsWinBackOfferPrices, forKey: "fields[winBackOfferPrices]")
				encoder.encode(fieldsTerritories, forKey: "fields[territories]")
				encoder.encode(fieldsSubscriptionPricePoints, forKey: "fields[subscriptionPricePoints]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
