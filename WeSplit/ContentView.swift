//
//  ContentView.swift
//  WeSplit
//
//  Created by Kiran Shrestha on 1/26/25.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount : Int = 0
    @State private var nameOfUser : String = ""
    let students : [String] = ["Silg", "Ren", "Daki"]
    @State private var selectedStudent = "Silg"
    
    
    var body: some View {
        NavigationStack{
            Form {
                Picker ("Select student", selection: $selectedStudent){
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
        
        Form {
            TextField("Enter your name: ", text: $nameOfUser)
            Text("Your name: \(nameOfUser)")
        }
        
        Form {
            ForEach(0..<100) {
                Text("Num: \($0)")
            }
        }
        
        Button("Tap Count: \(tapCount)") {
            tapCount += 1
        }
        
    }
}

#Preview {
    ContentView()
}
