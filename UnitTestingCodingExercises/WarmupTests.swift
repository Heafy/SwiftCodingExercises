//
//  WarmupTests.swift
//  UnitTestingCodingExercises
//
//  Created by Jorge Martinez on 09/10/22.
//

import Foundation
import XCTest

class WarmupTests: XCTestCase {
   
    var testClass: WarmupExercises!
    
    override func setUp() {
        testClass = WarmupExercises()
    }
    
    func testSimpleArraySum() {
        XCTAssertEqual(testClass.simpleArraySum(ar: [1, 2, 3, 4, 10, 11]), 31)
    }
    
    func testCompareTriplets() {
        XCTAssertEqual(testClass.compareTriplets(a: [5, 6, 7], b: [3, 6, 10]), [1, 1])
        XCTAssertEqual(testClass.compareTriplets(a: [17, 28, 30], b: [99, 16, 8]), [2, 1])
    }
    
    func testAVeryBigSum() {
        XCTAssertEqual(testClass.aVeryBigSum(ar: [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]), 5000000015)
    }
    
    func testDiagonalDifference() {
        XCTAssertEqual(testClass.diagonalDifference(arr: [[11, 2, 4], [4, 5, 6], [10, 8, -12]]), 15)
    }
   
    func testPlusMinus() {
        XCTAssertEqual(testClass.plusMinus(arr: [-4, 3, -9, 0, 4, 1]), ["0.500000","0.333333","0.166667"])
        XCTAssertEqual(testClass.plusMinus(arr: [1, 2, 3, -1, -2, -3, 0, 0]), ["0.375000","0.375000","0.250000"])
    }
   
    func testStaircase() {
        XCTAssertEqual(testClass.staircase(n: 6), "     #\n    ##\n   ###\n  ####\n #####\n######\n")
    }
    
    func testMiniMaxSum() {
        XCTAssertEqual(testClass.miniMaxSum(arr: [1, 2, 3, 4, 5]), "10 14")
        XCTAssertEqual(testClass.miniMaxSum(arr: [7, 69, 2, 221, 8974]), "299 9271")
    }
   
    func testBirthdayCakeCandles() {
        XCTAssertEqual(testClass.birthdayCakeCandles(candles: [3, 2, 1, 3]), 2)
    }
    
    func testTimeConversion() {
        XCTAssertEqual(testClass.timeConversion(s: "07:05:45PM"), "19:05:45")
        XCTAssertEqual(testClass.timeConversion(s: "12:05:39AM"), "00:05:39")
        XCTAssertEqual(testClass.timeConversion(s: "12:45:54PM"), "12:45:54")
    }
    
}
