//
//  Exercise03.swift
//  SE4041 - Practical 03: Tuples
//

import Foundation

print("=== Exercise 03: Tuples ===")

// MARK: - Step 1: Function Returning a Tuple
print("\n--- Tuple Function Example ---")
func summary(of marks: [Int]) -> (minimum: Int, maximum: Int, average: Double) {
    guard !marks.isEmpty, let minVal = marks.min(), let maxVal = marks.max() else {
        return (0, 0, 0.0)
    }
    let total = marks.reduce(0, +)
    return (
        minVal,
        maxVal,
        Double(total) / Double(marks.count)
    )
}

let result = summary(of: [72, 65, 48, 90])
print(result.minimum)
print(result.maximum)
print(result.average)

// MARK: - Step 2: Tuple Unpacking
print("\n--- Tuple Unpacking ---")
let (low, high, average) = summary(of: [72, 65, 48, 90])
print(low)
print(high)
print(average)

// Unpacking ignoring unwanted element
let (lowOnly, highOnly, _) = summary(of: [72, 65, 48, 90])
print("Low: \(lowOnly), High: \(highOnly)")

// MARK: - Activity 4: analyzeMarks
print("\n--- Activity 4: Analyze Marks ---")
func analyzeMarks(_ marks: [Int]) -> (total: Int, average: Double) {
    let total = marks.reduce(0, +)
    let average = marks.isEmpty ? 0.0 : Double(total) / Double(marks.count)
    return (total: total, average: average)
}

let analysis = analyzeMarks([60, 70, 80, 90])
print("Total: \(analysis.total)")
print("Average: \(analysis.average)")
