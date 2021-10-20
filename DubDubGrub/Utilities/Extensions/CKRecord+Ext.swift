//
//  CKRecord+Ext.swift
//  DubDubGrub
//
//  Created by Ryan Schefske on 8/13/21.
//

import CloudKit

extension CKRecord {
	func convertToDDGLocation() -> DDGLocation { DDGLocation(record: self) }
	func convertToDDGProfile() -> DDGProfile { DDGProfile(record: self) }
}
