// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var gameCenterDetails: GameCenterDetails {
		GameCenterDetails(path: path + "/gameCenterDetails")
	}

	public struct GameCenterDetails {
		/// Path: `/v1/gameCenterDetails`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.GameCenterDetailCreateRequest) -> Request<AppStoreConnect_Swift_SDK.GameCenterDetailResponse> {
			Request(path: path, method: "POST", body: body, id: "gameCenterDetails_createInstance")
		}
	}
}
