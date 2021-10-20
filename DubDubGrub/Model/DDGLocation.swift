//
//  DDGLocation.swift
//  DubDubGrub
//
//  Created by Ryan Schefske on 7/23/21.
//

import CloudKit
import UIKit

struct DDGLocation: Identifiable {
	static let kName = "name"
	static let kDescription = "description"
	static let kSquareAsset = "squareAsset"
	static let kBannerAsset = "bannerAsset"
	static let kAddress = "address"
	static let kLocation = "location"
	static let kWebsiteURL = "websiteURL"
	static let kPhoneNumber = "phoneNumber"
	
	let id: CKRecord.ID
	let name: String
	let description: String
	let squareAsset: CKAsset!
	let bannerAsset: CKAsset!
	let address: String
	let location: CLLocation
	let websiteURL: String
	let phoneNumber: String
	
	init(record: CKRecord) {
		id = record.recordID
		name = record[Self.kName] as? String ?? "N/A"
		description = record[Self.kDescription] as? String ?? "N/A"
		squareAsset = record[Self.kSquareAsset] as? CKAsset
		bannerAsset = record[Self.kBannerAsset] as? CKAsset
		address = record[Self.kAddress] as? String ?? "N/A"
		location = record[Self.kLocation] as? CLLocation ?? CLLocation(latitude: 0, longitude: 0)
		websiteURL = record[Self.kWebsiteURL] as? String ?? "N/A"
		phoneNumber = record[Self.kPhoneNumber] as? String ?? "N/A"
	}
	
	func createSquareImage() -> UIImage {
		guard let squareAsset = squareAsset else { return PlaceholderImage.square }
		return squareAsset.convertToUIImage(in: .square)
	}
	
	func createBannerImage() -> UIImage {
		guard let bannerAsset = bannerAsset else { return PlaceholderImage.banner }
		return bannerAsset.convertToUIImage(in: .banner)
	}
}
