// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AlternativeDistributionPackageVersions.WithID {
	public var variants: Variants {
		Variants(path: path + "/variants")
	}

	public struct Variants {
		/// Path: `/v1/alternativeDistributionPackageVersions/{id}/variants`
		public let path: String

		public func get(fieldsAlternativeDistributionPackageVariants: [FieldsAlternativeDistributionPackageVariants]? = nil, limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.AlternativeDistributionPackageVariantsResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsAlternativeDistributionPackageVariants, limit), id: "alternativeDistributionPackageVersions_variants_getToManyRelated")
		}

		private func makeGetQuery(_ fieldsAlternativeDistributionPackageVariants: [FieldsAlternativeDistributionPackageVariants]?, _ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsAlternativeDistributionPackageVariants, forKey: "fields[alternativeDistributionPackageVariants]", explode: false)
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public enum FieldsAlternativeDistributionPackageVariants: String, Codable, CaseIterable {
			case url
			case urlExpirationDate
			case alternativeDistributionKeyBlob
			case fileChecksum
		}
	}
}
