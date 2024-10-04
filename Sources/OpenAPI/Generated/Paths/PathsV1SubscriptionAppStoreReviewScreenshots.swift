// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var subscriptionAppStoreReviewScreenshots: SubscriptionAppStoreReviewScreenshots {
		SubscriptionAppStoreReviewScreenshots(path: path + "/subscriptionAppStoreReviewScreenshots")
	}

	public struct SubscriptionAppStoreReviewScreenshots {
		/// Path: `/v1/subscriptionAppStoreReviewScreenshots`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.SubscriptionAppStoreReviewScreenshotCreateRequest) -> Request<AppStoreConnect_Swift_SDK.SubscriptionAppStoreReviewScreenshotResponse> {
			Request(path: path, method: "POST", body: body, id: "subscriptionAppStoreReviewScreenshots_createInstance")
		}
	}
}
