// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppEventLocalizations {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appEventLocalizations/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppEventLocalizationResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "appEventLocalizations_getInstance")
		}

		public struct GetParameters {
			public var fieldsAppEventLocalizations: [FieldsAppEventLocalizations]?
			public var fieldsAppEventScreenshots: [FieldsAppEventScreenshots]?
			public var fieldsAppEventVideoClips: [FieldsAppEventVideoClips]?
			public var include: [Include]?
			public var limitAppEventScreenshots: Int?
			public var limitAppEventVideoClips: Int?

			public enum FieldsAppEventLocalizations: String, Codable, CaseIterable {
				case locale
				case name
				case shortDescription
				case longDescription
				case appEvent
				case appEventScreenshots
				case appEventVideoClips
			}

			public enum FieldsAppEventScreenshots: String, Codable, CaseIterable {
				case fileSize
				case fileName
				case imageAsset
				case assetToken
				case uploadOperations
				case assetDeliveryState
				case uploaded
				case appEventAssetType
				case appEventLocalization
			}

			public enum FieldsAppEventVideoClips: String, Codable, CaseIterable {
				case fileSize
				case fileName
				case previewFrameTimeCode
				case videoURL = "videoUrl"
				case previewImage
				case uploadOperations
				case assetDeliveryState
				case uploaded
				case appEventAssetType
				case appEventLocalization
			}

			public enum Include: String, Codable, CaseIterable {
				case appEvent
				case appEventScreenshots
				case appEventVideoClips
			}

			public init(fieldsAppEventLocalizations: [FieldsAppEventLocalizations]? = nil, fieldsAppEventScreenshots: [FieldsAppEventScreenshots]? = nil, fieldsAppEventVideoClips: [FieldsAppEventVideoClips]? = nil, include: [Include]? = nil, limitAppEventScreenshots: Int? = nil, limitAppEventVideoClips: Int? = nil) {
				self.fieldsAppEventLocalizations = fieldsAppEventLocalizations
				self.fieldsAppEventScreenshots = fieldsAppEventScreenshots
				self.fieldsAppEventVideoClips = fieldsAppEventVideoClips
				self.include = include
				self.limitAppEventScreenshots = limitAppEventScreenshots
				self.limitAppEventVideoClips = limitAppEventVideoClips
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppEventLocalizations, forKey: "fields[appEventLocalizations]")
				encoder.encode(fieldsAppEventScreenshots, forKey: "fields[appEventScreenshots]")
				encoder.encode(fieldsAppEventVideoClips, forKey: "fields[appEventVideoClips]")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitAppEventScreenshots, forKey: "limit[appEventScreenshots]")
				encoder.encode(limitAppEventVideoClips, forKey: "limit[appEventVideoClips]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.AppEventLocalizationUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.AppEventLocalizationResponse> {
			Request(path: path, method: "PATCH", body: body, id: "appEventLocalizations_updateInstance")
		}

		public var delete: Request<Void> {
			Request(path: path, method: "DELETE", id: "appEventLocalizations_deleteInstance")
		}
	}
}
