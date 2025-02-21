//
//  StudentDetailView.swift
//  AFP-ListThemAll
//
//  Created by Donovan Ong on 21/2/2025.
//

import SwiftUI

struct StudentDetailView: View {
    let student: String
    
    var body: some View {
        VStack {
            Spacer()
            Text("Student Name:")
                .font(.headline)
            
            Text(student)
                .font(.largeTitle)
                .bold()
                .foregroundStyle(.blue)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    StudentDetailView(student: "Donovan")
}
