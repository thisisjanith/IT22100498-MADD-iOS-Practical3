//
//  Exercise04.swift
//  SE4041 - Practical 03: Closures, map, filter, and reduce
//

import Foundation

print("=== Exercise 04: Closures (map, filter, reduce) ===")

let marks = [72, 45, 65, 48, 90]

// MARK: - filter
print("\n--- filter ---")
let passed = marks.filter { $0 >= 50 }
print(passed)

// MARK: - map
print("\n--- map ---")
let increasedMarks = marks.map { $0 + 5 }
print(increasedMarks)

// MARK: - reduce
print("\n--- reduce ---")
let total = marks.reduce(0) { $0 + $1 }
print(total)

// MARK: - Activity 5
print("\n--- Activity 5: Processing Prices with Closures ---")
let prices = [120.0, 250.0, 80.0, 500.0, 150.0]

// 1. Array containing only prices greater than 100
let expensivePrices = prices.filter { $0 > 100.0 }
print("Prices greater than 100: \(expensivePrices)")

// 2. New array where every price has increased by 10
let pricesIncreasedBy10 = prices.map { $0 + 10.0 }
print("Prices increased by 10: \(pricesIncreasedBy10)")

// 3. Total of all prices
let totalPrice = prices.reduce(0.0) { $0 + $1 }
print("Total price: \(totalPrice)")
