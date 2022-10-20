//
//  WarmupExercises.swift
//  CodingExercises
//
//  Created by Jorge Martinez on 09/10/22.
//

import Foundation

class WarmupExercises {
   
    // https://www.hackerrank.com/challenges/simple-array-sum
    func simpleArraySum(ar: [Int]) -> Int {
        return ar.reduce(0, +)
    }
  
    // https://www.hackerrank.com/challenges/compare-the-triplets
    func compareTriplets(a: [Int], b: [Int]) -> [Int] {
        var result: [Int] = Array(repeating: 0, count: 2)
        for i in 0...(a.count - 1) {
            if a[i] > b[i] {
                result[0] += 1
            } else if a[i] < b[i] {
                result[1] += 1
            }
        }
        return result
    }
    
    // https://www.hackerrank.com/challenges/a-very-big-sum
    func aVeryBigSum(ar: [Int]) -> Int {
        return ar.reduce(0, +)
    }
    
    // https://www.hackerrank.com/challenges/diagonal-difference
    func diagonalDifference(arr: [[Int]]) -> Int {
        var diagLeft: Int = 0
        var diagRight: Int = 0
        var edge = 0
        for i in 0...(arr.count - 1) {
            edge = (arr.count - 1) - i
            diagLeft = diagLeft + arr[i][i]
            diagRight = diagRight + arr[i][edge]
            print()
        }
        return abs(diagLeft - diagRight)
    }
    
    // https://www.hackerrank.com/challenges/plus-minus
    func plusMinus(arr: [Int]) -> [String] {
        let formatSix = { (value: Double)  in
            String(format: "%.6f", value)
        }
        let count = Double(arr.count)
        let positives = Double(arr.filter { $0 > 0 }.count)
        let negatives = Double(arr.filter { $0 < 0 }.count)
        let zeros = Double(arr.filter { $0 == 0 }.count)
        return [formatSix(positives / count), formatSix(negatives / count),
                formatSix(zeros / count)]
    }

    // https://www.hackerrank.com/challenges/staircase
    func staircase(n: Int) -> String {
        var result: String = ""
        for i in 1...n {
            let spaces = String(repeating: " ", count: n - i)
            let numberSigns = String(repeating: "#", count: i)
            result.append("\(spaces)\(numberSigns)\n")
        }
        return result
    }
    
   // https://www.hackerrank.com/challenges/mini-max-sum
    func miniMaxSum(arr: [Int]) -> String {
        var sorted = arr.sorted()
        let last = sorted.removeLast()
        let min = sorted.reduce(0, +)
        sorted.insert(last, at: sorted.count)
        _ = sorted.removeFirst()
        let max = sorted.reduce(0, +)
        return "\(min) \(max)"
    }
    
    // https://www.hackerrank.com/challenges/birthday-cake-candles
    func birthdayCakeCandles(candles: [Int]) -> Int {
        let max = candles.max()
        return candles.filter{ $0 == max }.count
    }
    
    // https://www.hackerrank.com/challenges/time-conversion
    func timeConversion(s: String) -> String {
        var result = s
        if s.hasSuffix("PM") {
            if var first = Int(String(result.prefix(2))) {
                if (1...11).contains(first) {
                   first += 12
                    result = String(result.dropFirst(2))
                    result = "\(first)\(result)"
                }
            }
        } else {
            if String(result.prefix(2)) == "12" {
                result = result.replacingOccurrences(of: "12", with: "00")
            }
        }
        result = String(result.dropLast(2))
        return result
    }
}
