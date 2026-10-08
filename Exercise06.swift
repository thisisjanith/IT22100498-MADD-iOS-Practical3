//
//  Exercise06.swift
//  SE4041 - Practical 03: Structures and Classes
//

import Foundation

print("=== Exercise 06: Structures and Classes ===")

// MARK: - Step 1: Structures & Stored Properties
print("\n--- Step 1: Basic Structure ---")
struct Student {
    var name: String
    var mark: Int
    var registered: Bool = true
}

let student = Student(name: "Amal", mark: 72)
print(student.name)
print(student.mark)
print(student.registered)

// MARK: - Step 2: Computed Properties
print("\n--- Step 2: Computed Properties (Rectangle) ---")
struct Rectangle {
    var width: Double
    var height: Double

    var area: Double {
        return width * height
    }
}

let rectangle = Rectangle(width: 4, height: 3)
print(rectangle.area)

// MARK: - Step 3: Add a Computed Grade
print("\n--- Step 3: Computed Grade in Struct ---")
enum Grade: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case f = "F"
}

struct GradedStudent {
    var name: String
    var mark: Int

    var grade: Grade {
        switch mark {
        case 75...100:
            return .a
        case 65..<75:
            return .b
        case 50..<65:
            return .c
        default:
            return .f
        }
    }
}

let gradedStudent = GradedStudent(name: "Amal", mark: 72)
print(gradedStudent.name)
print(gradedStudent.grade.rawValue)

// MARK: - Step 4: Methods in Structures
print("\n--- Step 4: Methods in Structures ---")
struct StudentWithMethod {
    var name: String
    var mark: Int

    func displayDetails() {
        print("\(name) received \(mark)")
    }
}

let studentWithMethod = StudentWithMethod(name: "Kamal", mark: 75)
studentWithMethod.displayDetails()

// MARK: - Step 5: Mutating Methods
print("\n--- Step 5: Mutating Methods ---")
struct Counter {
    var count = 0

    mutating func increment() {
        count += 1
    }
}

var counter = Counter()
counter.increment()
counter.increment()
print(counter.count)

// MARK: - Step 6: Classes
print("\n--- Step 6: Classes ---")
class Lecturer {
    var name: String
    var module: String

    init(name: String, module: String) {
        self.name = name
        self.module = module
    }

    func introduce() {
        print("\(name) teaches \(module)")
    }
}

let lecturer = Lecturer(name: "Nushkan", module: "SE4041")
lecturer.introduce()

// MARK: - Step 7: Struct vs Class (Value Type vs Reference Type)
print("\n--- Step 7: Value Type vs Reference Type ---")

// Struct Example (Value Type - Copies data)
print("Struct (Value Type) demonstration:")
struct Point {
    var x = 0
}

var firstPoint = Point()
var secondPoint = firstPoint
secondPoint.x = 99

print(firstPoint.x)
print(secondPoint.x)

// Class Example (Reference Type - Shares reference)
print("\nClass (Reference Type) demonstration:")
class CounterClass {
    var count = 0
}

let firstCounter = CounterClass()
let secondCounter = firstCounter
secondCounter.count = 99

print(firstCounter.count)
print(secondCounter.count)
