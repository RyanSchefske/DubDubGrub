//
//  View+Ext.swift
//  DubDubGrub
//
//  Created by Ryan Schefske on 7/20/21.
//

import SwiftUI

extension View {
	func profileNameStyle() -> some View {
		self.modifier(ProfileNameText())
	}
	
	func dismissKeyboard(){
		UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
	}
}
