//
//  DubDubGrubApp.swift
//  DubDubGrub
//
//  Created by Ryan Schefske on 7/12/21.
//

import SwiftUI

@main
struct DubDubGrubApp: App {
	let locationManager = LocationManager()
	
    var body: some Scene {
        WindowGroup {
            AppTabView().environmentObject(locationManager)
        }
    }
}
