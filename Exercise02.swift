//
//  Exercise02.swift
//  SE4041 - Practical 03: Guard Statement
//

import Foundation

print("=== Exercise 02: Guard Statement ===")

// MARK: - Step 1: Basic Guard with Optional Binding
print("\n--- Basic Guard Example ---")
func registerBasic(_ name: String?) {
    guard let name = name else {
        print("No name given")
        return
    }

    print("Registered \(name)")
}

registerBasic("Kamal")
registerBasic(nil)

// MARK: - Step 2: Guard with Multiple Validations
print("\n--- Guard with Multiple Validations ---")
func register(_ name: String?) {
    guard let name = name else {
        print("No name given")
        return
    }

    guard !name.isEmpty else {
        print("Name cannot be empty")
        return
    }

    print("Registered \(name)")
}

register(nil)
register("")
register("Kamal")

// MARK: - Activity 3: checkStudent with guard let
print("\n--- Activity 3: Check Student Validation ---")
func checkStudent(name: String?, mark: Int?) {
    guard let name = name else {
        print("Student name unavailable")
        return
    }

    guard let mark = mark else {
        print("Student mark unavailable")
        return
    }

    print("\(name) received \(mark) marks")
}

// Test cases for Activity 3
checkStudent(name: "Kamal", mark: 75)
checkStudent(name: nil, mark: 75)
checkStudent(name: "Kamal", mark: nil)
checkStudent(name: nil, mark: nil)
