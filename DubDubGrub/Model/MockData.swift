//
//  MockData.swift
//  DubDubGrub
//
//  Created by Ryan Schefske on 8/13/21.
//

import CloudKit

struct MockData {
	
	static var location: CKRecord {
		let record = CKRecord(recordType: RecordType.location)
		record[DDGLocation.kName] = "Sean's Bar and Grill"
		record[DDGLocation.kAddress] = "123 Main Street"
		record[DDGLocation.kDescription] = "This is a test description. Isn't it awesome. Not sure how long to make it to test the 3 lines."
		record[DDGLocation.kWebsiteURL] = "https://seanallen.co"
		record[DDGLocation.kLocation] = CLLocation(latitude: 37.331516, longitude: -121.891054)
		return record
	}
	
	static var profile: CKRecord {
		let record = CKRecord(recordType: RecordType.profile)
		record[DDGProfile.kFirstName] = "Test"
		record[DDGProfile.kLastName] = "User"
		record[DDGProfile.kCompanyName] = "Best company ever"
		record[DDGProfile.kBio] = "This is my test bio."
		return record
	}
}
