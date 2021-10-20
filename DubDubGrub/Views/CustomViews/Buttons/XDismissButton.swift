//
//  XDismissButton.swift
//  DubDubGrub
//
//  Created by Ryan Schefske on 8/16/21.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
		ZStack {
			Circle()
				.frame(width: 30)
				.foregroundColor(.brandPrimary)
			
			Image(systemName: "xmark")
				.foregroundColor(.white)
				.imageScale(.small)
				.frame(width: 44, height: 44)
		}
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton()
    }
}
