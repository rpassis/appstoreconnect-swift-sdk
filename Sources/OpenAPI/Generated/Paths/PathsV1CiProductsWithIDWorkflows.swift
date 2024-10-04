// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.CiProducts.WithID {
	public var workflows: Workflows {
		Workflows(path: path + "/workflows")
	}

	public struct Workflows {
		/// Path: `/v1/ciProducts/{id}/workflows`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.CiWorkflowsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "ciProducts_workflows_getToManyRelated")
		}

		public struct GetParameters {
			public var fieldsCiWorkflows: [FieldsCiWorkflows]?
			public var fieldsCiProducts: [FieldsCiProducts]?
			public var fieldsScmRepositories: [FieldsScmRepositories]?
			public var fieldsCiXcodeVersions: [FieldsCiXcodeVersions]?
			public var fieldsCiMacOsVersions: [FieldsCiMacOsVersions]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsCiWorkflows: String, Codable, CaseIterable {
				case name
				case description
				case branchStartCondition
				case tagStartCondition
				case pullRequestStartCondition
				case scheduledStartCondition
				case manualBranchStartCondition
				case manualTagStartCondition
				case manualPullRequestStartCondition
				case actions
				case isEnabled
				case isLockedForEditing
				case clean
				case containerFilePath
				case lastModifiedDate
				case product
				case repository
				case xcodeVersion
				case macOsVersion
				case buildRuns
			}

			public enum FieldsCiProducts: String, Codable, CaseIterable {
				case name
				case createdDate
				case productType
				case app
				case bundleID = "bundleId"
				case workflows
				case primaryRepositories
				case additionalRepositories
				case buildRuns
			}

			public enum FieldsScmRepositories: String, Codable, CaseIterable {
				case lastAccessedDate
				case httpCloneURL = "httpCloneUrl"
				case sshCloneURL = "sshCloneUrl"
				case ownerName
				case repositoryName
				case scmProvider
				case defaultBranch
				case gitReferences
				case pullRequests
			}

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
				case product
				case repository
				case xcodeVersion
				case macOsVersion
			}

			public init(fieldsCiWorkflows: [FieldsCiWorkflows]? = nil, fieldsCiProducts: [FieldsCiProducts]? = nil, fieldsScmRepositories: [FieldsScmRepositories]? = nil, fieldsCiXcodeVersions: [FieldsCiXcodeVersions]? = nil, fieldsCiMacOsVersions: [FieldsCiMacOsVersions]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.fieldsCiWorkflows = fieldsCiWorkflows
				self.fieldsCiProducts = fieldsCiProducts
				self.fieldsScmRepositories = fieldsScmRepositories
				self.fieldsCiXcodeVersions = fieldsCiXcodeVersions
				self.fieldsCiMacOsVersions = fieldsCiMacOsVersions
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsCiWorkflows, forKey: "fields[ciWorkflows]")
				encoder.encode(fieldsCiProducts, forKey: "fields[ciProducts]")
				encoder.encode(fieldsScmRepositories, forKey: "fields[scmRepositories]")
				encoder.encode(fieldsCiXcodeVersions, forKey: "fields[ciXcodeVersions]")
				encoder.encode(fieldsCiMacOsVersions, forKey: "fields[ciMacOsVersions]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
