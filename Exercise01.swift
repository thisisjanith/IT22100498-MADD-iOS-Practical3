//
//  Exercise01.swift
//  SE4041 - Practical 03: Functions
//

import Foundation

print("=== Exercise 01: Functions ===")

// MARK: - Step 1: A Simple Function
print("\n--- Step 1: Simple Function ---")
func greet() {
    print("Welcome to SE4041")
}

greet()

// MARK: - Step 2: Function with a Parameter
print("\n--- Step 2: Function with Parameters ---")
func greetStudent(name: String) {
    print("Welcome \(name)")
}

greetStudent(name: "Amal")
greetStudent(name: "Nimali")
greetStudent(name: "Ruwan")

// MARK: - Section 6: Returning a Value
print("\n--- Section 6: Returning a Value ---")
func grade(for mark: Int) -> String {
    if mark >= 50 {
        return "Pass"
    }
    return "Fail"
}

let result = grade(for: 68)
print(result)

// MARK: - Activity 1: calculateAverage
print("\n--- Activity 1: Calculate Average ---")
func calculateAverage(_ a: Double, _ b: Double, _ c: Double) -> Double {
    return (a + b + c) / 3.0
}

let averageResult = calculateAverage(75, 82, 68)
print(averageResult)

// MARK: - Section 7: Argument Labels
print("\n--- Section 7: Argument Labels ---")
func travel(from town: String, to city: String) {
    print("Travelling from \(town) to \(city)")
}

travel(from: "Malabe", to: "Kandy")

// Removing an Argument Label
func double(_ number: Int) -> Int {
    return number * 2
}

print(double(10))

// MARK: - Section 8: Default Parameter Values
print("\n--- Section 8: Default Parameter Values ---")
func result(_ mark: Int, passMark: Int = 50) -> String {
    if mark >= passMark {
        return "Pass"
    }
    return "Fail"
}

print(result(68))
print(result(68, passMark: 75))

// MARK: - Activity 2: finalResult with Default Parameter
print("\n--- Activity 2: Final Result ---")
func finalResult(mark: Int, passMark: Int = 50) -> String {
    if mark >= passMark {
        return "Pass"
    }
    return "Fail"
}

print(finalResult(mark: 45))
print(finalResult(mark: 75))
print(finalResult(mark: 75, passMark: 80))
