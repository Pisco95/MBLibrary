//
//  ComplexTests.swift
//  Matrix
//
//  Created by Marco Boschi on 02/05/16.
//  Copyright © 2016 Marco Boschi. All rights reserved.
//

import XCTest

class ComplexTests: XCTestCase {
	
	var a, b, c, d: Complex!
	
    override func setUp() {
        super.setUp()
		
		a = Complex(re: 2, im: -2)
		b = Complex(re: -2, im: 0)
		c = Complex(re: 0, im: 3)
		d = Complex(re: 2, im: 4)
    }
	
	func testType() {
		XCTAssert(a.isComplex)
		XCTAssert(!a.isReal)
		XCTAssert(b.isReal)
		XCTAssert(!b.isComplex)
		XCTAssert(c.isComplex)
		XCTAssert(!c.isReal)
	}
    
    func testSum() {
        var sum = a + b
		XCTAssertEqual(sum.r, 0, accuracy: 0.0001)
		XCTAssertEqual(sum.i, -2, accuracy: 0.0001)
		
		sum = b + c
		XCTAssertEqual(sum.r, -2, accuracy: 0.0001)
		XCTAssertEqual(sum.i, 3, accuracy: 0.0001)
    }
	
	func testEquality() {
		XCTAssertEqual(b + c, Complex(re: -2, im: 3))
	}
	
	func testProduct() {
		var prod = b * c
		XCTAssertEqual(prod.r, 0, accuracy: 0.0001)
		XCTAssertEqual(prod.i, -6, accuracy: 0.0001)
		
		prod = a * d
		XCTAssertEqual(prod.r, 12, accuracy: 0.0001)
		XCTAssertEqual(prod.i, 4, accuracy: 0.0001)
		
		prod = 3.1 * a
		XCTAssertEqual(prod.r, 6.2, accuracy: 0.0001)
		XCTAssertEqual(prod.i, -6.2, accuracy: 0.0001)
		XCTAssertEqual(prod, a * 3.1)
	}
	
	func testDivision() {
		let div = a / d
		XCTAssertEqual(div.r, -0.2, accuracy: 0.0001)
		XCTAssertEqual(div.i, -0.6, accuracy: 0.0001)
	}
	
	func testConjugate() {
		let conj = a.conjugate()
		XCTAssertEqual(conj.r, a.r, accuracy: 0.0001)
		XCTAssertEqual(conj.i, -a.i, accuracy: 0.0001)
		
		XCTAssertEqual(b, b.conjugate())
	}
	
	func testModule() {
		XCTAssertEqual(a.abs(), 2.8284, accuracy: 0.0001)
		XCTAssertEqual(b.abs(), abs(b.r), accuracy: 0.0001)
	}
    
}
