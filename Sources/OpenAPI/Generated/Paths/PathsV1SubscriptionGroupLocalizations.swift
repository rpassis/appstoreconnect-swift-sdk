// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var subscriptionGroupLocalizations: SubscriptionGroupLocalizations {
		SubscriptionGroupLocalizations(path: path + "/subscriptionGroupLocalizations")
	}

	public struct SubscriptionGroupLocalizations {
		/// Path: `/v1/subscriptionGroupLocalizations`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.SubscriptionGroupLocalizationCreateRequest) -> Request<AppStoreConnect_Swift_SDK.SubscriptionGroupLocalizationResponse> {
			Request(path: path, method: "POST", body: body, id: "subscriptionGroupLocalizations_createInstance")
		}
	}
}
