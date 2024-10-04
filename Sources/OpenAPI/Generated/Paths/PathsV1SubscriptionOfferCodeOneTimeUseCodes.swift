// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var subscriptionOfferCodeOneTimeUseCodes: SubscriptionOfferCodeOneTimeUseCodes {
		SubscriptionOfferCodeOneTimeUseCodes(path: path + "/subscriptionOfferCodeOneTimeUseCodes")
	}

	public struct SubscriptionOfferCodeOneTimeUseCodes {
		/// Path: `/v1/subscriptionOfferCodeOneTimeUseCodes`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.SubscriptionOfferCodeOneTimeUseCodeCreateRequest) -> Request<AppStoreConnect_Swift_SDK.SubscriptionOfferCodeOneTimeUseCodeResponse> {
			Request(path: path, method: "POST", body: body, id: "subscriptionOfferCodeOneTimeUseCodes_createInstance")
		}
	}
}
