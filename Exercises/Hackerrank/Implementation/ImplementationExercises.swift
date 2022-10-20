//
//  ImplementationExercises.swift
//  UnitTestingCodingExercises
//
//  Created by Jorge Martinez on 09/10/22.
//

import Foundation

class ImplementationExercises {
    
    // https://www.hackerrank.com/challenges/grading
    func gradingStudents(grades: [Int]) -> [Int] {
        // Write your code here
        var result = [Int]()
        for grade in grades {
            if grade >= 38 {
                var founded = false
                for i in 0...2 {
                    if (grade + i) % 5 == 0 {
                        result.append(grade + i)
                        founded = true
                    }
                }
                if !founded {
                    result.append(grade)
                }
            } else {
                result.append(grade)
            }
        }
        return result
    }
   
    // https://www.hackerrank.com/challenges/apple-and-orange
    func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> [Int] {
        let range = s...t
        let fixedApples = apples.map{ $0 + a }
        let fixedOranges = oranges.map{ $0 + b }
        let applesCount = fixedApples.filter{ range.contains($0) }.count
        let orangesCount = fixedOranges.filter{ range.contains($0) }.count
        return [applesCount, orangesCount]
    }
    
    // https://www.hackerrank.com/challenges/kangaroo
    func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
        if x2 > x1 && v2 > v1 {
            return "NO"
        }
        var x1 = x1
        var x2 = x2
        for _ in 0...10000 {
            x1 += v1
            x2 += v2
            if x1 == x2 {
                return "YES"
            }
        }
        return "NO"
    }
    
    // https://www.hackerrank.com/challenges/breaking-best-and-worst-records
    func breakingRecords(scores: [Int]) -> [Int] {
        var best: Int = 0
        var lowest: Int = 0
        var highestScore: Int = scores.first ?? 0
        var lowestScore: Int = scores.first ?? 0
        for score in scores {
            if score > highestScore {
                highestScore = score
                best += 1
            } else if score < lowestScore {
                lowestScore = score
                lowest += 1
            }
        }
        return [best, lowest]
    }
    
    // https://www.hackerrank.com/challenges/the-birthday-bar
    func birthday(s: [Int], d: Int, m: Int) -> Int {
        if m == 0 {
            return 0
        }
        var result: Int = 0
        for i in 0...s.count-1 {
            // Part on slices
            if (i + m - 1) < s.count {
                let sumSlice = s[i...(i + m - 1)].reduce(0, +)
                result = (sumSlice == d) ? result + 1 : result
            }
        }
        return result
    }
    
    // https://www.hackerrank.com/challenges/migratory-birds
    func migratoryBirds(arr: [Int]) -> Int {
        let set = Array(Set<Int>(arr)).sorted()
        var maxCount: [Int] = []
        for item in set {
            let filtered = arr.filter{ $0 == item }
            if maxCount.count < filtered.count {
                maxCount = filtered
            }
        }
        return maxCount.first ?? Int.max
    }
    
    // https://www.hackerrank.com/challenges/bon-appetit
    func bonAppetit(bill: [Int], k: Int, b: Int) -> String {
        var bill = bill
        _ = bill.remove(at: k)
        let charged = bill.reduce(0, +) / 2
        if b > charged {
            return "\(b - charged)"
        } else {
            return "Bon Appetit"
        }
    }
    
    // https://www.hackerrank.com/challenges/sock-merchant
    func sockMerchant(n: Int, ar: [Int]) -> Int {
        let indices = Set(ar)
        var pairs = 0
        // Get the set of the array and filter the ocurrence
        for item in indices {
            let sum = ar.filter{ $0 == item }.count
            pairs += sum / 2
        }
        return pairs
    }
}
