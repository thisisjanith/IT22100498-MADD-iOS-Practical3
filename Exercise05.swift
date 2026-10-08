//
//  Exercise05.swift
//  SE4041 - Practical 03: Enumerations
//

import Foundation

print("=== Exercise 05: Enumerations ===")

// MARK: - Step 1: Basic Enumeration
print("\n--- Basic Enumeration ---")
enum Direction {
    case north
    case south
    case east
    case west
}

var direction = Direction.north
print("Initial direction: \(direction)")
direction = .south
print("Updated direction: \(direction)")

// MARK: - Step 2: Enum with switch
print("\n--- Enum with Switch Statement ---")
enum Status {
    case registered
    case pending
    case rejected
}

func printStatus(_ status: Status) {
    switch status {
    case .registered:
        print("Registration Complete")
    case .pending:
        print("Registration Pending")
    case .rejected:
        print("Registration Rejected")
    }
}

let studentStatus = Status.registered
printStatus(studentStatus)

// MARK: - Step 3: Raw Values
print("\n--- Enum with Raw Values ---")
enum Grade: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case f = "F"
}

let grade = Grade.b
print(grade.rawValue)

// MARK: - Activity 6: ModuleStatus Enum
print("\n--- Activity 6: ModuleStatus ---")
enum ModuleStatus: String {
    case notStarted = "Not Started"
    case inProgress = "In Progress"
    case completed = "Completed"
}

let currentStatus = ModuleStatus.inProgress
print(currentStatus.rawValue)
