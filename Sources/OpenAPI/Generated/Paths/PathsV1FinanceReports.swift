// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var financeReports: FinanceReports {
		FinanceReports(path: path + "/financeReports")
	}

	public struct FinanceReports {
		/// Path: `/v1/financeReports`
		public let path: String

		public func get(parameters: GetParameters) -> Request<Data> {
			Request(path: path, method: "GET", query: parameters.asQuery, id: "financeReports_getCollection")
		}

		public struct GetParameters {
			public var filterVendorNumber: [String]
			public var filterReportType: [FilterReportType]
			public var filterRegionCode: [String]
			public var filterReportDate: [String]

			public enum FilterReportType: String, Codable, CaseIterable {
				case financial = "FINANCIAL"
				case financeDetail = "FINANCE_DETAIL"
			}

			public init(filterVendorNumber: [String], filterReportType: [FilterReportType], filterRegionCode: [String], filterReportDate: [String]) {
				self.filterVendorNumber = filterVendorNumber
				self.filterReportType = filterReportType
				self.filterRegionCode = filterRegionCode
				self.filterReportDate = filterReportDate
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterVendorNumber, forKey: "filter[vendorNumber]")
				encoder.encode(filterReportType, forKey: "filter[reportType]")
				encoder.encode(filterRegionCode, forKey: "filter[regionCode]")
				encoder.encode(filterReportDate, forKey: "filter[reportDate]")
				return encoder.items
			}
		}
	}
}
