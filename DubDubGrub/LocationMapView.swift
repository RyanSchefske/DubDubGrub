//
//  LocationMapView.swift
//  DubDubGrub
//
//  Created by Ryan Schefske on 7/12/21.
//

import MapKit
import SwiftUI

struct LocationMapView: View {
	@State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.331516, longitude: -121.891054), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
	
    var body: some View {
		ZStack {
			Map(coordinateRegion: $region)
				.edgesIgnoringSafeArea(.top)
			
			VStack {
				Image("ddg-map-logo")
					.resizable()
					.scaledToFit()
					.frame(height: 70)
					.shadow(radius: 10)
				
				Spacer()
			}
		}
    }
}

struct LocationMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapView()
    }
}
