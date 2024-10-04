// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.CiMacOsVersions.WithID {
	public var xcodeVersions: XcodeVersions {
		XcodeVersions(path: path + "/xcodeVersions")
	}

	public struct XcodeVersions {
		/// Path: `/v1/ciMacOsVersions/{id}/xcodeVersions`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.CiXcodeVersionsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "ciMacOsVersions_xcodeVersions_getToManyRelated")
		}

		public struct GetParameters {
			public var fieldsCiXcodeVersions: [FieldsCiXcodeVersions]?
			public var fieldsCiMacOsVersions: [FieldsCiMacOsVersions]?
			public var limit: Int?
			public var include: [Include]?
			public var limitMacOsVersions: Int?

			public enum FieldsCiXcodeVersions: String, Codable, CaseIterable {
				case version
				case name
				case testDestinations
				case macOsVersions
			}

			public enum FieldsCiMacOsVersions: String, Codable, CaseIterable {
				case version
				case name
				case xcodeVersions
			}

			public enum Include: String, Codable, CaseIterable {
				case macOsVersions
			}

			public init(fieldsCiXcodeVersions: [FieldsCiXcodeVersions]? = nil, fieldsCiMacOsVersions: [FieldsCiMacOsVersions]? = nil, limit: Int? = nil, include: [Include]? = nil, limitMacOsVersions: Int? = nil) {
				self.fieldsCiXcodeVersions = fieldsCiXcodeVersions
				self.fieldsCiMacOsVersions = fieldsCiMacOsVersions
				self.limit = limit
				self.include = include
				self.limitMacOsVersions = limitMacOsVersions
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsCiXcodeVersions, forKey: "fields[ciXcodeVersions]")
				encoder.encode(fieldsCiMacOsVersions, forKey: "fields[ciMacOsVersions]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitMacOsVersions, forKey: "limit[macOsVersions]")
				return encoder.items
			}
		}
	}
}
