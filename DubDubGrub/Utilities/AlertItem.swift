//
//  AlertItem.swift
//  DubDubGrub
//
//  Created by Ryan Schefske on 8/13/21.
//

import SwiftUI

struct AlertItem: Identifiable {
	let id = UUID()
	let title: Text
	let message: Text
	let dismissButton: Alert.Button
}

struct AlertContext {
	// MARK: - MapView Errors
	static let unableToGetLocations = AlertItem(title: Text("Locations Error"),
												message: Text("Unable to retrieve locations at this time.\nPlease try again."),
												dismissButton: .default(Text("OK")))
	
	static let locationRestricted = AlertItem(title: Text("Location Restricted"),
												message: Text("Your location is restricted. This may be due to parental controls."),
												dismissButton: .default(Text("OK")))
	
	static let locationDenied = AlertItem(title: Text("Location Denied"),
												message: Text("DubDubGrub does not have permission to access your location. To change that go to your Settings > DubDubGrub > Location"),
												dismissButton: .default(Text("OK")))
	
	static let locationDisabled = AlertItem(title: Text("Location Disabled"),
												message: Text("Your phone's location services are disabled. To change that go to your Settings > Privacy > Location Services"),
												dismissButton: .default(Text("OK")))
	
	// MARK: - ProfileView Errors
	static let invalidProfile = AlertItem(title: Text("Invalid Profile"),
												message: Text("All fields are required as well as a profile photo. Your bio must be < 100 characters.\nPlease try again."),
												dismissButton: .default(Text("OK")))
	
	static let noUserRecord = AlertItem(title: Text("No User Record"),
												message: Text("You must log into iCloud on your phone in order to utilize DubDubGrub's Profile. Please log in on your phone's Settings screen."),
												dismissButton: .default(Text("OK")))
	
	static let createProfileSuccess = AlertItem(title: Text("Profile Created Successfully!"),
												message: Text("Your profile has successfully been created."),
												dismissButton: .default(Text("OK")))
	
	static let createProfileFailed = AlertItem(title: Text("Failed To Create Profile"),
												message: Text("We were unable to create your profile at this time."),
												dismissButton: .default(Text("OK")))
	
	static let unableToGetProfile = AlertItem(title: Text("Unable To Retrieve Profile"),
												message: Text("We were unable to retrieve your profile at this time."),
												dismissButton: .default(Text("OK")))
	
	static let updateProfileSuccessful = AlertItem(title: Text("Profile Update Success!"),
												message: Text("Your DubDubGrub profile was updated successfully."),
												dismissButton: .default(Text("OK")))
	
	static let updateProfileFailed = AlertItem(title: Text("Profile Update Failed"),
												message: Text("We were unable to update your profile at this time."),
												dismissButton: .default(Text("OK")))
	
	// MARK: - LocationDetailViewErrors
	static let invalidPhoneNumber = AlertItem(title: Text("Invalid Phone Number"),
												message: Text("The phone number for the location is invalid."),
												dismissButton: .default(Text("OK")))
	
	static let unableToGetCheckInStatus = AlertItem(title: Text("Server Error"),
												message: Text("Unable to retrieve check in status of the current user."),
												dismissButton: .default(Text("OK")))
	
	static let unableToGetCheckedInProfiles = AlertItem(title: Text("Server Error"),
												message: Text("Unable to get users checked into this location."),
												dismissButton: .default(Text("OK")))
}
