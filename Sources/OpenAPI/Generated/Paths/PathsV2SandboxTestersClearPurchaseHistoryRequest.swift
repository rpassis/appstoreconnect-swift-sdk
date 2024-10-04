// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V2 {
	public var sandboxTestersClearPurchaseHistoryRequest: SandboxTestersClearPurchaseHistoryRequest {
		SandboxTestersClearPurchaseHistoryRequest(path: path + "/sandboxTestersClearPurchaseHistoryRequest")
	}

	public struct SandboxTestersClearPurchaseHistoryRequest {
		/// Path: `/v2/sandboxTestersClearPurchaseHistoryRequest`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.SandboxTestersClearPurchaseHistoryRequestV2CreateRequest) -> Request<AppStoreConnect_Swift_SDK.SandboxTestersClearPurchaseHistoryRequestV2Response> {
			Request(path: path, method: "POST", body: body, id: "sandboxTestersClearPurchaseHistoryRequestV2_createInstance")
		}
	}
}
