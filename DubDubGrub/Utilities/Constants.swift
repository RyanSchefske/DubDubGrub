//
//  Constants.swift
//  DubDubGrub
//
//  Created by Ryan Schefske on 8/13/21.
//

import Foundation
import UIKit

enum RecordType {
	static let location = "DDGLocation"
	static let profile = "DDGProfile"
}

enum PlaceholderImage {
	static let avatar = UIImage(named: "default-avatar")!
	static let square = UIImage(named: "default-square-asset")!
	static let banner = UIImage(named: "default-banner-asset")!
}

enum ImageDimension {
	case square, banner
	
	static func getPlaceholder(for dimension: Self) -> UIImage {
		switch dimension {
			case .square:
				return PlaceholderImage.square
			case .banner:
				return PlaceholderImage.banner
		}
	}
}
