//
//  CollectionExtensionsTests.swift
//  SwifterSwift
//
//  Created by Omar Albeik on 09/02/2017.
//  Copyright © 2017 SwifterSwift
//

import XCTest
@testable import SwifterSwift

final class CollectionExtensionsTests: XCTestCase {
	
	func testForEachInParallel() {
		let collection = [1, 2, 3, 4, 5]
		collection.forEachInParallel { item in
			XCTAssert(collection.contains(item))
		}
	}
	
	func testSafeSubscript() {
		let collection = [1, 2, 3, 4, 5]
		XCTAssertNotNil(collection[safe: 2])
		XCTAssertEqual(collection[safe: 2], 3)
		XCTAssertNil(collection[safe: 10])
	}
	
    func testRandomItem() {
        XCTAssertNotNil([1, 2, 3].randomItem)
        XCTAssert([1, 2, 3].contains([1, 2, 3].randomItem!))
        XCTAssertNil([].randomItem)
    }
}
