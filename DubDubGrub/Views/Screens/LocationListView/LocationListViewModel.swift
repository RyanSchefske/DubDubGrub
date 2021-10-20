//
//  LocationListViewModel.swift
//  DubDubGrub
//
//  Created by Ryan Schefske on 8/26/21.
//

import CloudKit

final class LocationListViewModel: ObservableObject {
	@Published var checkedInProfiles: [CKRecord.ID: [DDGProfile]] = [:]
	
	func getCheckedInProfilesDictionary() {
		CloudKitManager.shared.getCheckedInProfilesDictionary { result in
			DispatchQueue.main.async {
				switch result {
					case .success(let checkInProfiles):
						self.checkedInProfiles = checkInProfiles
					case .failure:
						print("Error")
				}
			}
		}
	}
}
