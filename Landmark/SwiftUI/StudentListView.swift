//
//  StudentListView.swift
//  Landmark
//
//  Created by Dvip Patel on 17/12/23.
//
import Foundation
import Combine
import SwiftUI
struct StudentListView: View {
    @ObservedObject var studentManager: StudentManager

    var body: some View {
        NavigationView {
            List($studentManager.students) { student in
                Text(student.name)
            }
            .navigationBarTitle("Students")
        }
    }
}

struct StudentListView_Previews: PreviewProvider {
    static var previews: some View {
        StudentListView(studentManager: StudentManager())
    }
}
