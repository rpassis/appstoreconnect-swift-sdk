// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AgeRatingDeclaration: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case ageRatingDeclarations
	}

	public struct Attributes: Codable {
		public var alcoholTobaccoOrDrugUseOrReferences: AlcoholTobaccoOrDrugUseOrReferences?
		public var contests: Contests?
		/// - warning: Deprecated.
		public var isGamblingAndContests: Bool?
		public var isGambling: Bool?
		public var gamblingSimulated: GamblingSimulated?
		public var kidsAgeBand: KidsAgeBand?
		public var isLootBox: Bool?
		public var medicalOrTreatmentInformation: MedicalOrTreatmentInformation?
		public var profanityOrCrudeHumor: ProfanityOrCrudeHumor?
		public var sexualContentGraphicAndNudity: SexualContentGraphicAndNudity?
		public var sexualContentOrNudity: SexualContentOrNudity?
		public var horrorOrFearThemes: HorrorOrFearThemes?
		public var matureOrSuggestiveThemes: MatureOrSuggestiveThemes?
		public var isUnrestrictedWebAccess: Bool?
		public var violenceCartoonOrFantasy: ViolenceCartoonOrFantasy?
		public var violenceRealisticProlongedGraphicOrSadistic: ViolenceRealisticProlongedGraphicOrSadistic?
		public var violenceRealistic: ViolenceRealistic?
		public var ageRatingOverride: AgeRatingOverride?
		public var koreaAgeRatingOverride: KoreaAgeRatingOverride?
		/// - warning: Deprecated.
		public var isSeventeenPlus: Bool?

		public enum AlcoholTobaccoOrDrugUseOrReferences: String, Codable, CaseIterable {
			case `none` = "NONE"
			case infrequentOrMild = "INFREQUENT_OR_MILD"
			case frequentOrIntense = "FREQUENT_OR_INTENSE"
		}

		public enum Contests: String, Codable, CaseIterable {
			case `none` = "NONE"
			case infrequentOrMild = "INFREQUENT_OR_MILD"
			case frequentOrIntense = "FREQUENT_OR_INTENSE"
		}

		public enum GamblingSimulated: String, Codable, CaseIterable {
			case `none` = "NONE"
			case infrequentOrMild = "INFREQUENT_OR_MILD"
			case frequentOrIntense = "FREQUENT_OR_INTENSE"
		}

		public enum MedicalOrTreatmentInformation: String, Codable, CaseIterable {
			case `none` = "NONE"
			case infrequentOrMild = "INFREQUENT_OR_MILD"
			case frequentOrIntense = "FREQUENT_OR_INTENSE"
		}

		public enum ProfanityOrCrudeHumor: String, Codable, CaseIterable {
			case `none` = "NONE"
			case infrequentOrMild = "INFREQUENT_OR_MILD"
			case frequentOrIntense = "FREQUENT_OR_INTENSE"
		}

		public enum SexualContentGraphicAndNudity: String, Codable, CaseIterable {
			case `none` = "NONE"
			case infrequentOrMild = "INFREQUENT_OR_MILD"
			case frequentOrIntense = "FREQUENT_OR_INTENSE"
		}

		public enum SexualContentOrNudity: String, Codable, CaseIterable {
			case `none` = "NONE"
			case infrequentOrMild = "INFREQUENT_OR_MILD"
			case frequentOrIntense = "FREQUENT_OR_INTENSE"
		}

		public enum HorrorOrFearThemes: String, Codable, CaseIterable {
			case `none` = "NONE"
			case infrequentOrMild = "INFREQUENT_OR_MILD"
			case frequentOrIntense = "FREQUENT_OR_INTENSE"
		}

		public enum MatureOrSuggestiveThemes: String, Codable, CaseIterable {
			case `none` = "NONE"
			case infrequentOrMild = "INFREQUENT_OR_MILD"
			case frequentOrIntense = "FREQUENT_OR_INTENSE"
		}

		public enum ViolenceCartoonOrFantasy: String, Codable, CaseIterable {
			case `none` = "NONE"
			case infrequentOrMild = "INFREQUENT_OR_MILD"
			case frequentOrIntense = "FREQUENT_OR_INTENSE"
		}

		public enum ViolenceRealisticProlongedGraphicOrSadistic: String, Codable, CaseIterable {
			case `none` = "NONE"
			case infrequentOrMild = "INFREQUENT_OR_MILD"
			case frequentOrIntense = "FREQUENT_OR_INTENSE"
		}

		public enum ViolenceRealistic: String, Codable, CaseIterable {
			case `none` = "NONE"
			case infrequentOrMild = "INFREQUENT_OR_MILD"
			case frequentOrIntense = "FREQUENT_OR_INTENSE"
		}

		public enum AgeRatingOverride: String, Codable, CaseIterable {
			case `none` = "NONE"
			case seventeenPlus = "SEVENTEEN_PLUS"
			case unrated = "UNRATED"
		}

		public enum KoreaAgeRatingOverride: String, Codable, CaseIterable {
			case `none` = "NONE"
			case fifteenPlus = "FIFTEEN_PLUS"
			case nineteenPlus = "NINETEEN_PLUS"
		}

		public init(alcoholTobaccoOrDrugUseOrReferences: AlcoholTobaccoOrDrugUseOrReferences? = nil, contests: Contests? = nil, isGamblingAndContests: Bool? = nil, isGambling: Bool? = nil, gamblingSimulated: GamblingSimulated? = nil, kidsAgeBand: KidsAgeBand? = nil, isLootBox: Bool? = nil, medicalOrTreatmentInformation: MedicalOrTreatmentInformation? = nil, profanityOrCrudeHumor: ProfanityOrCrudeHumor? = nil, sexualContentGraphicAndNudity: SexualContentGraphicAndNudity? = nil, sexualContentOrNudity: SexualContentOrNudity? = nil, horrorOrFearThemes: HorrorOrFearThemes? = nil, matureOrSuggestiveThemes: MatureOrSuggestiveThemes? = nil, isUnrestrictedWebAccess: Bool? = nil, violenceCartoonOrFantasy: ViolenceCartoonOrFantasy? = nil, violenceRealisticProlongedGraphicOrSadistic: ViolenceRealisticProlongedGraphicOrSadistic? = nil, violenceRealistic: ViolenceRealistic? = nil, ageRatingOverride: AgeRatingOverride? = nil, koreaAgeRatingOverride: KoreaAgeRatingOverride? = nil, isSeventeenPlus: Bool? = nil) {
			self.alcoholTobaccoOrDrugUseOrReferences = alcoholTobaccoOrDrugUseOrReferences
			self.contests = contests
			self.isGamblingAndContests = isGamblingAndContests
			self.isGambling = isGambling
			self.gamblingSimulated = gamblingSimulated
			self.kidsAgeBand = kidsAgeBand
			self.isLootBox = isLootBox
			self.medicalOrTreatmentInformation = medicalOrTreatmentInformation
			self.profanityOrCrudeHumor = profanityOrCrudeHumor
			self.sexualContentGraphicAndNudity = sexualContentGraphicAndNudity
			self.sexualContentOrNudity = sexualContentOrNudity
			self.horrorOrFearThemes = horrorOrFearThemes
			self.matureOrSuggestiveThemes = matureOrSuggestiveThemes
			self.isUnrestrictedWebAccess = isUnrestrictedWebAccess
			self.violenceCartoonOrFantasy = violenceCartoonOrFantasy
			self.violenceRealisticProlongedGraphicOrSadistic = violenceRealisticProlongedGraphicOrSadistic
			self.violenceRealistic = violenceRealistic
			self.ageRatingOverride = ageRatingOverride
			self.koreaAgeRatingOverride = koreaAgeRatingOverride
			self.isSeventeenPlus = isSeventeenPlus
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.alcoholTobaccoOrDrugUseOrReferences = try values.decodeIfPresent(AlcoholTobaccoOrDrugUseOrReferences.self, forKey: "alcoholTobaccoOrDrugUseOrReferences")
			self.contests = try values.decodeIfPresent(Contests.self, forKey: "contests")
			self.isGamblingAndContests = try values.decodeIfPresent(Bool.self, forKey: "gamblingAndContests")
			self.isGambling = try values.decodeIfPresent(Bool.self, forKey: "gambling")
			self.gamblingSimulated = try values.decodeIfPresent(GamblingSimulated.self, forKey: "gamblingSimulated")
			self.kidsAgeBand = try values.decodeIfPresent(KidsAgeBand.self, forKey: "kidsAgeBand")
			self.isLootBox = try values.decodeIfPresent(Bool.self, forKey: "lootBox")
			self.medicalOrTreatmentInformation = try values.decodeIfPresent(MedicalOrTreatmentInformation.self, forKey: "medicalOrTreatmentInformation")
			self.profanityOrCrudeHumor = try values.decodeIfPresent(ProfanityOrCrudeHumor.self, forKey: "profanityOrCrudeHumor")
			self.sexualContentGraphicAndNudity = try values.decodeIfPresent(SexualContentGraphicAndNudity.self, forKey: "sexualContentGraphicAndNudity")
			self.sexualContentOrNudity = try values.decodeIfPresent(SexualContentOrNudity.self, forKey: "sexualContentOrNudity")
			self.horrorOrFearThemes = try values.decodeIfPresent(HorrorOrFearThemes.self, forKey: "horrorOrFearThemes")
			self.matureOrSuggestiveThemes = try values.decodeIfPresent(MatureOrSuggestiveThemes.self, forKey: "matureOrSuggestiveThemes")
			self.isUnrestrictedWebAccess = try values.decodeIfPresent(Bool.self, forKey: "unrestrictedWebAccess")
			self.violenceCartoonOrFantasy = try values.decodeIfPresent(ViolenceCartoonOrFantasy.self, forKey: "violenceCartoonOrFantasy")
			self.violenceRealisticProlongedGraphicOrSadistic = try values.decodeIfPresent(ViolenceRealisticProlongedGraphicOrSadistic.self, forKey: "violenceRealisticProlongedGraphicOrSadistic")
			self.violenceRealistic = try values.decodeIfPresent(ViolenceRealistic.self, forKey: "violenceRealistic")
			self.ageRatingOverride = try values.decodeIfPresent(AgeRatingOverride.self, forKey: "ageRatingOverride")
			self.koreaAgeRatingOverride = try values.decodeIfPresent(KoreaAgeRatingOverride.self, forKey: "koreaAgeRatingOverride")
			self.isSeventeenPlus = try values.decodeIfPresent(Bool.self, forKey: "seventeenPlus")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(alcoholTobaccoOrDrugUseOrReferences, forKey: "alcoholTobaccoOrDrugUseOrReferences")
			try values.encodeIfPresent(contests, forKey: "contests")
			try values.encodeIfPresent(isGamblingAndContests, forKey: "gamblingAndContests")
			try values.encodeIfPresent(isGambling, forKey: "gambling")
			try values.encodeIfPresent(gamblingSimulated, forKey: "gamblingSimulated")
			try values.encodeIfPresent(kidsAgeBand, forKey: "kidsAgeBand")
			try values.encodeIfPresent(isLootBox, forKey: "lootBox")
			try values.encodeIfPresent(medicalOrTreatmentInformation, forKey: "medicalOrTreatmentInformation")
			try values.encodeIfPresent(profanityOrCrudeHumor, forKey: "profanityOrCrudeHumor")
			try values.encodeIfPresent(sexualContentGraphicAndNudity, forKey: "sexualContentGraphicAndNudity")
			try values.encodeIfPresent(sexualContentOrNudity, forKey: "sexualContentOrNudity")
			try values.encodeIfPresent(horrorOrFearThemes, forKey: "horrorOrFearThemes")
			try values.encodeIfPresent(matureOrSuggestiveThemes, forKey: "matureOrSuggestiveThemes")
			try values.encodeIfPresent(isUnrestrictedWebAccess, forKey: "unrestrictedWebAccess")
			try values.encodeIfPresent(violenceCartoonOrFantasy, forKey: "violenceCartoonOrFantasy")
			try values.encodeIfPresent(violenceRealisticProlongedGraphicOrSadistic, forKey: "violenceRealisticProlongedGraphicOrSadistic")
			try values.encodeIfPresent(violenceRealistic, forKey: "violenceRealistic")
			try values.encodeIfPresent(ageRatingOverride, forKey: "ageRatingOverride")
			try values.encodeIfPresent(koreaAgeRatingOverride, forKey: "koreaAgeRatingOverride")
			try values.encodeIfPresent(isSeventeenPlus, forKey: "seventeenPlus")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, links: ResourceLinks? = nil) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		self.links = try values.decodeIfPresent(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encodeIfPresent(links, forKey: "links")
	}
}
