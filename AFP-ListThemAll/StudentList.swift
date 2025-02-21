//
//  StudentList.swift
//  AFP-ListThemAll
//
//  Created by Donovan Ong on 21/2/2025.
//

import SwiftUI

struct StudentList: View {
    
    let students: [String] = [
     "Abhijeet Raj",
    "Amogh",
    "Aryan",
    "David",
    "Ivan",
    "Jonathan",
     "Mansib",
    "Oscar",
    "Patrick",
    "Thiam Yi Donovan",
    "Trivesh",
    "Wen Wei",
    "Yuwen",
    "Akansha",
    "Anushka",
    "Elly Dongyeon"
    , "Heethasha",
    "Jingyi",
    "Lam",
    "Linda",
    "Mira",
    "Noor",
    "Phuc",
     "Sara",
    "Shahira",
     "Thuy Anh",
    "Tilde",
    "Yana",
    "Zhilin",
    "Allwin",
     ]
    
    var body: some View {
        NavigationStack{
            VStack {
                List {
                    ForEach(students.sorted(), id: \.self) { student in
                        NavigationLink {
                            StudentDetailView(student: student)
                        } label: {
                            Image(systemName: "swift")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 25)
                                .foregroundStyle(.orange)
                            
                            if(student == "Thiam Yi Donovan"){
                                Text("😎" + student)
                                    .font(.title)
                                    .foregroundStyle(.orange)
                            } else {
                                Text("🤓" + student)
                                    .font(.title)
                            }
                        }

                    }
                }
                .listStyle(.plain)
            }
            .navigationTitle("Swifters")
            .padding(.horizontal)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink{
                        LoginView()
                    } label: {
                        Image(systemName: "person.circle")
                            .foregroundStyle(.orange)
                    }
                    
                }
                
            }
        }
    }
}

#Preview {
    StudentList()
}
