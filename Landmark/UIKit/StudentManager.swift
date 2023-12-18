//
//  StudentManager.swift
//  Landmark
//
//  Created by Dvip Patel on 17/12/23.
//

import Foundation
import Combine

class StudentManager: ObservableObject {
    @Published var students: [Student] = []

    func addStudent(name: String, rollNumber: String, grade: String) {
        let student = Student(name: name, rollNumber: rollNumber, grade: grade)
        students.append(student)
    }

    func removeStudent(at index: Int) {
        if index >= 0 && index < students.count {
            students.remove(at: index)
        }
    }
}
