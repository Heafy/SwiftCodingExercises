//
//  ImplementationTests.swift
//  UnitTestingCodingExercises
//
//  Created by Jorge Martinez on 09/10/22.
//

import Foundation
import XCTest

class ImplementationTests: XCTestCase {
    
    var testClass: ImplementationExercises!
    
    override func setUp() {
        testClass = ImplementationExercises()
    }
    
    func testGradingStudents() {
        XCTAssertEqual(testClass.gradingStudents(grades: [73, 67, 38, 33]), [75, 67, 40, 33,])
    }
    
    func testCountApplesAndOranges() {
        XCTAssertEqual(testClass.countApplesAndOranges(s: 7, t: 11, a: 5, b: 15, apples: [-2, 2, 1], oranges: [5, -6]), [1, 1])
        XCTAssertEqual(testClass.countApplesAndOranges(s: 2, t: 3, a: 1, b: 5, apples: [2], oranges: [-2]), [1, 1])
    }
    
    func testKangaroo() {
        XCTAssertEqual(testClass.kangaroo(x1: 0, v1: 3, x2: 4, v2: 2), "YES")
        XCTAssertEqual(testClass.kangaroo(x1: 0, v1: 2, x2: 5, v2: 3), "NO")
    }
    
    func testBreakingRecords() {
        XCTAssertEqual(testClass.breakingRecords(scores: [10, 5, 20, 20, 4, 5, 2, 25, 1]), [2, 4])
        XCTAssertEqual(testClass.breakingRecords(scores: [3, 4, 21, 36, 10, 28, 35, 5, 24, 42]), [4, 0])
    }
    
    func testBirthday() {
        XCTAssertEqual(testClass.birthday(s: [1, 2, 1, 3, 2], d: 3, m: 2), 2)
        XCTAssertEqual(testClass.birthday(s: [4], d: 4, m: 1) , 1)
        XCTAssertEqual(testClass.birthday(s: [1, 1, 1, 1, 1, 1], d: 0, m: 0), 0)
    }
    
    func testMigratoryBirds() {
        XCTAssertEqual(testClass.migratoryBirds(arr: [1, 1, 2, 2, 3]), 1)
        XCTAssertEqual(testClass.migratoryBirds(arr: [2, 2, 1, 1, 3]), 1)
        XCTAssertEqual(testClass.migratoryBirds(arr: [1, 4, 4, 4, 5, 3]), 4)
        XCTAssertEqual(testClass.migratoryBirds(arr: [1, 2, 3, 4, 5, 4, 3, 2, 1, 3, 4]), 3)
    }
    
    func testBonAppetit() {
        XCTAssertEqual(testClass.bonAppetit(bill: [3, 10, 2, 9], k: 1, b: 12), "5")
        XCTAssertEqual(testClass.bonAppetit(bill: [3, 10, 2, 9], k: 1, b: 7), "Bon Appetit")
    }
    
    func testSockMerchant() {
        XCTAssertEqual(testClass.sockMerchant(n: 9, ar: [10, 20, 20, 10, 10, 30, 50, 10, 20]), 3)
        XCTAssertEqual(testClass.sockMerchant(n: 10, ar: [1, 1, 3, 1, 2, 1, 3, 3, 3, 3]), 4)
    }
}
