//
//  MyView.swift
//  Landmark
//
//  Created by Dvip Patel on 17/12/23.
//

import Foundation
import SwiftUI

struct MyView: View {
    @Binding var myBinding: MyType

    var body: some View {
        Text("Value: \(myBinding)")
    }
}

struct ContentView: View {
    @State private var myValue: MyType = MyType()

    var body: some View {
        VStack {
            MyView(myBinding: $myValue)
            // ... other views and UI elements
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
