//
//  DDGProfile.swift
//  DubDubGrub
//
//  Created by Ryan Schefske on 8/13/21.
//

import CloudKit
import UIKit

struct DDGProfile: Identifiable {
	static let kFirstName = "firstName"
	static let kLastName = "lastName"
	static let kAvatar = "avatar"
	static let kCompanyName = "companyName"
	static let kBio = "bio"
	static let kIsCheckedIn = "isCheckedIn"
	static let kIsCheckedInNilCheck = "isCheckedInNilCheck"
	
	let id: CKRecord.ID
	let firstName: String
	let lastName: String
	let avatar: CKAsset!
	let companyName: String
	let bio: String
	let isCheckedIn: CKRecord.Reference?
	
	init(record: CKRecord) {
		id = record.recordID
		firstName = record[Self.kFirstName] as? String ?? "N/A"
		lastName = record[Self.kLastName] as? String ?? "N/A"
		avatar = record[Self.kAvatar] as? CKAsset
		companyName = record[Self.kCompanyName] as? String ?? "N/A"
		bio = record[Self.kBio] as? String ?? "N/A"
		isCheckedIn = record[Self.kIsCheckedIn] as? CKRecord.Reference
	}
	
	func createAvatarImage() -> UIImage {
		guard let avatar = avatar else { return PlaceholderImage.avatar }
		return avatar.convertToUIImage(in: .square)
	}
}
