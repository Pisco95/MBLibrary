//
//  CGPoint.swift
//  MBLibrary
//
//  Created by Marco Boschi on 17/08/16.
//  Copyright © 2016 Marco Boschi. All rights reserved.
//

import CoreGraphics

public func + (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
	return CGPoint(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
}

public func - (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
	return CGPoint(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
}

prefix operator - {}
public prefix func - (p: CGPoint) -> CGPoint {
	return CGPoint(x: -p.x, y: -p.y)
}

extension CGPoint {
	
	public var module: CGFloat {
		return sqrt(x*x + y*y)
	}
	
	public func normalized() -> CGPoint {
		let m = module
		guard m != 0 else {
			return .zero
		}
		
		return CGPoint(x: x / m, y: y / m)
	}
	
}
