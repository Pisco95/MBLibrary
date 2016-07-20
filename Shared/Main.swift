//
//  Main.swift
//  MBLibrary
//
//  Created by Marco Boschi on 19/07/16.
//  Copyright © 2016 Marco Boschi. All rights reserved.
//

import Foundation

public var decimalPoint: String { return String.decimalPoint }
public var CSVSeparator: String { return String.CSVSeparator }

public protocol Animatable: class {
	
	func startAnimation()
	func stopAnimation()
	func isAnimating() -> Bool
	
}
