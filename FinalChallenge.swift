//
//  FinalChallenge.swift
//  SE4041 - Practical 03: Final Practical Task – Student Management System
//

import Foundation

print("=== SE4041 Practical 03: Student Management System ===")

// MARK: - Part A: Create a Grade Enum
enum Grade: String {
    case a = "A"
    case aMinus = "A-"
    case bPlus = "B+"
    case b = "B"
    case bMinus = "B-"
    case cPlus = "C+"
    case c = "C"
    case cMinus = "C-"
    case f = "F"
}

// MARK: - Part B, C, D: Student Struct with Stored/Computed Properties & Method
struct Student {
    var studentID: String
    var name: String
    var mark: Int

    // Part C: Computed Grade Property
    var grade: Grade {
        switch mark {
        case 80...100:
            return .a
        case 75..<80:
            return .aMinus
        case 70..<75:
            return .bPlus
        case 65..<70:
            return .b
        case 60..<65:
            return .bMinus
        case 55..<60:
            return .cPlus
        case 45..<55:
            return .c
        case 40..<45:
            return .cMinus
        default:
            return .f
        }
    }

    // Part D: Display Method
    func displayDetails() {
        print("ID: \(studentID)")
        print("Name: \(name)")
        print("Mark: \(mark)")
        print("Grade: \(grade.rawValue)")
    }
}

// MARK: - Part E: Create Students
print("\n--- Part E & F: All Students ---")
let students = [
    Student(studentID: "IT001", name: "Amal", mark: 72),
    Student(studentID: "IT002", name: "Nimali", mark: 45),
    Student(studentID: "IT003", name: "Ruwan", mark: 68),
    Student(studentID: "IT004", name: "Sanduni", mark: 90),
    Student(studentID: "IT005", name: "Kasun", mark: 38)
]

// MARK: - Part F: Display Students
for student in students {
    student.displayDetails()
    print("---------------------------------")
}

// MARK: - Part G: Use filter (Students with mark >= 50)
print("\n--- Part G: Passed Students (mark >= 50) ---")
let passedStudents = students.filter { $0.mark >= 50 }
print("Passed student names:")
for student in passedStudents {
    print("- \(student.name) (Mark: \(student.mark), Grade: \(student.grade.rawValue))")
}

// MARK: - Part H: Use map (Extract Student Names)
print("\n--- Part H: Student Names ---")
let studentNames = students.map { $0.name }
print(studentNames)

// MARK: - Part I: Use reduce (Total Marks and Class Average)
print("\n--- Part I: Class Average ---")
let totalMarks = students.reduce(0) { $0 + $1.mark }
let classAverage = Double(totalMarks) / Double(students.count)
print("Total Marks: \(totalMarks)")
print("Class Average: \(classAverage)")

// MARK: - Section 22: Additional Provisional Challenge
print("\n--- Section 22: Additional Challenge (Provisional) ---")

// 1. Validation function using guard let
func validateStudent(name: String?, mark: Int?) -> Student? {
    guard let name = name, !name.trimmingCharacters(in: .whitespaces).isEmpty else {
        print("Validation Error: Invalid or empty student name")
        return nil
    }

    guard let mark = mark, (0...100).contains(mark) else {
        print("Validation Error: Mark must be between 0 and 100")
        return nil
    }

    print("Student \(name) validated successfully with mark \(mark).")
    return Student(studentID: "IT999", name: name, mark: mark)
}

print("Testing validation:")
_ = validateStudent(name: nil, mark: 75)
_ = validateStudent(name: "", mark: 75)
_ = validateStudent(name: "Kavinda", mark: 105)
_ = validateStudent(name: "Kavinda", mark: 85)

// 2. Summary function using tuples
func summarizeStudents(_ list: [Student]) -> (minimum: Int, maximum: Int, average: Double)? {
    guard !list.isEmpty else {
        print("Cannot summarize an empty student array.")
        return nil
    }

    let marks = list.map { $0.mark }
    guard let minMark = marks.min(), let maxMark = marks.max() else {
        return nil
    }

    let total = marks.reduce(0, +)
    let avg = Double(total) / Double(marks.count)
    return (minimum: minMark, maximum: maxMark, average: avg)
}

if let summary = summarizeStudents(students) {
    print("\nBatch Summary:")
    print("Lowest Mark: \(summary.minimum)")
    print("Highest Mark: \(summary.maximum)")
    print("Average Mark: \(summary.average)")
}

// 3. Demonstrate Struct (Value) vs Class (Reference) semantics with comments
print("\nValue vs Reference Semantics:")

// Struct: Copies value independently
var studentA = Student(studentID: "IT101", name: "Original Struct", mark: 70)
var studentB = studentA
studentB.mark = 95
// Explanation: Since Student is a struct (value type), mutating studentB does not modify studentA.
print("Struct original mark: \(studentA.mark) (remains unchanged)")
print("Struct copy mark: \(studentB.mark) (updated independently)")

// Class: Shares reference
class StudentClassReference {
    var studentID: String
    var name: String
    var mark: Int

    init(studentID: String, name: String, mark: Int) {
        self.studentID = studentID
        self.name = name
        self.mark = mark
    }
}

let refA = StudentClassReference(studentID: "IT201", name: "Shared Class", mark: 70)
let refB = refA
refB.mark = 95
// Explanation: Since StudentClassReference is a class (reference type), mutating refB alters the shared object referenced by refA.
print("Class reference A mark: \(refA.mark) (modified through refB)")
print("Class reference B mark: \(refB.mark)")
