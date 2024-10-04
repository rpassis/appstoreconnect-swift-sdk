// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct GameCenterMatchmakingBooleanRuleResultsV1MetricResponse: Codable {
	public var data: [Datum]
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public struct Datum: Codable {
		public var dataPoints: DataPoints?
		public var dimensions: Dimensions?
		public var granularity: Granularity?

		public struct DataPoints: Codable {
			public var start: Date?
			public var end: Date?
			public var values: Values?

			public struct Values: Codable {
				public var count: Int?

				public init(count: Int? = nil) {
					self.count = count
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.count = try values.decodeIfPresent(Int.self, forKey: "count")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(count, forKey: "count")
				}
			}

			public init(start: Date? = nil, end: Date? = nil, values: Values? = nil) {
				self.start = start
				self.end = end
				self.values = values
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.start = try values.decodeIfPresent(Date.self, forKey: "start")
				self.end = try values.decodeIfPresent(Date.self, forKey: "end")
				self.values = try values.decodeIfPresent(Values.self, forKey: "values")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(start, forKey: "start")
				try values.encodeIfPresent(end, forKey: "end")
				try values.encodeIfPresent(self.values, forKey: "values")
			}
		}

		public struct Dimensions: Codable {
			public var result: Result?
			public var gameCenterMatchmakingQueue: GameCenterMatchmakingQueue?

			public struct Result: Codable {
				public var links: Links?
				public var data: String?

				public struct Links: Codable {
					public var groupBy: String?

					public init(groupBy: String? = nil) {
						self.groupBy = groupBy
					}

					public init(from decoder: Decoder) throws {
						let values = try decoder.container(keyedBy: StringCodingKey.self)
						self.groupBy = try values.decodeIfPresent(String.self, forKey: "groupBy")
					}

					public func encode(to encoder: Encoder) throws {
						var values = encoder.container(keyedBy: StringCodingKey.self)
						try values.encodeIfPresent(groupBy, forKey: "groupBy")
					}
				}

				public init(links: Links? = nil, data: String? = nil) {
					self.links = links
					self.data = data
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.links = try values.decodeIfPresent(Links.self, forKey: "links")
					self.data = try values.decodeIfPresent(String.self, forKey: "data")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(links, forKey: "links")
					try values.encodeIfPresent(data, forKey: "data")
				}
			}

			public struct GameCenterMatchmakingQueue: Codable {
				public var links: Links?
				public var data: String?

				public struct Links: Codable {
					public var groupBy: String?
					public var related: String?

					public init(groupBy: String? = nil, related: String? = nil) {
						self.groupBy = groupBy
						self.related = related
					}

					public init(from decoder: Decoder) throws {
						let values = try decoder.container(keyedBy: StringCodingKey.self)
						self.groupBy = try values.decodeIfPresent(String.self, forKey: "groupBy")
						self.related = try values.decodeIfPresent(String.self, forKey: "related")
					}

					public func encode(to encoder: Encoder) throws {
						var values = encoder.container(keyedBy: StringCodingKey.self)
						try values.encodeIfPresent(groupBy, forKey: "groupBy")
						try values.encodeIfPresent(related, forKey: "related")
					}
				}

				public init(links: Links? = nil, data: String? = nil) {
					self.links = links
					self.data = data
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.links = try values.decodeIfPresent(Links.self, forKey: "links")
					self.data = try values.decodeIfPresent(String.self, forKey: "data")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(links, forKey: "links")
					try values.encodeIfPresent(data, forKey: "data")
				}
			}

			public init(result: Result? = nil, gameCenterMatchmakingQueue: GameCenterMatchmakingQueue? = nil) {
				self.result = result
				self.gameCenterMatchmakingQueue = gameCenterMatchmakingQueue
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.result = try values.decodeIfPresent(Result.self, forKey: "result")
				self.gameCenterMatchmakingQueue = try values.decodeIfPresent(GameCenterMatchmakingQueue.self, forKey: "gameCenterMatchmakingQueue")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(result, forKey: "result")
				try values.encodeIfPresent(gameCenterMatchmakingQueue, forKey: "gameCenterMatchmakingQueue")
			}
		}

		public enum Granularity: String, Codable, CaseIterable {
			case p1d = "P1D"
			case pt1h = "PT1H"
			case pt15m = "PT15M"
		}

		public init(dataPoints: DataPoints? = nil, dimensions: Dimensions? = nil, granularity: Granularity? = nil) {
			self.dataPoints = dataPoints
			self.dimensions = dimensions
			self.granularity = granularity
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.dataPoints = try values.decodeIfPresent(DataPoints.self, forKey: "dataPoints")
			self.dimensions = try values.decodeIfPresent(Dimensions.self, forKey: "dimensions")
			self.granularity = try values.decodeIfPresent(Granularity.self, forKey: "granularity")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(dataPoints, forKey: "dataPoints")
			try values.encodeIfPresent(dimensions, forKey: "dimensions")
			try values.encodeIfPresent(granularity, forKey: "granularity")
		}
	}

	public init(data: [Datum], links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.links = links
		self.meta = meta
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode([Datum].self, forKey: "data")
		self.links = try values.decode(PagedDocumentLinks.self, forKey: "links")
		self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
		try values.encode(links, forKey: "links")
		try values.encodeIfPresent(meta, forKey: "meta")
	}
}
