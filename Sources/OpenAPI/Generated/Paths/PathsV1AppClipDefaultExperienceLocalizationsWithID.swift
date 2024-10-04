// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppClipDefaultExperienceLocalizations {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appClipDefaultExperienceLocalizations/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppClipDefaultExperienceLocalizationResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "appClipDefaultExperienceLocalizations_getInstance")
		}

		public struct GetParameters {
			public var fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations]?
			public var fieldsAppClipHeaderImages: [FieldsAppClipHeaderImages]?
			public var include: [Include]?

			public enum FieldsAppClipDefaultExperienceLocalizations: String, Codable, CaseIterable {
				case locale
				case subtitle
				case appClipDefaultExperience
				case appClipHeaderImage
			}

			public enum FieldsAppClipHeaderImages: String, Codable, CaseIterable {
				case fileSize
				case fileName
				case sourceFileChecksum
				case imageAsset
				case uploadOperations
				case assetDeliveryState
				case uploaded
				case appClipDefaultExperienceLocalization
			}

			public enum Include: String, Codable, CaseIterable {
				case appClipDefaultExperience
				case appClipHeaderImage
			}

			public init(fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations]? = nil, fieldsAppClipHeaderImages: [FieldsAppClipHeaderImages]? = nil, include: [Include]? = nil) {
				self.fieldsAppClipDefaultExperienceLocalizations = fieldsAppClipDefaultExperienceLocalizations
				self.fieldsAppClipHeaderImages = fieldsAppClipHeaderImages
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppClipDefaultExperienceLocalizations, forKey: "fields[appClipDefaultExperienceLocalizations]")
				encoder.encode(fieldsAppClipHeaderImages, forKey: "fields[appClipHeaderImages]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.AppClipDefaultExperienceLocalizationUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.AppClipDefaultExperienceLocalizationResponse> {
			Request(path: path, method: "PATCH", body: body, id: "appClipDefaultExperienceLocalizations_updateInstance")
		}

		public var delete: Request<Void> {
			Request(path: path, method: "DELETE", id: "appClipDefaultExperienceLocalizations_deleteInstance")
		}
	}
}
