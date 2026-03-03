//
//  AddNewTodo.swift
//  ToDo App SwiftData
//
//  Created by Abhishek Kusalkar on 25/02/26.
//

import SwiftUI
import SwiftData

struct AddNewTodo: View {
    
    @Environment(\.modelContext) var context
    @Binding var isPresented: Bool
    @State private var title: String = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                
                TextField("Enter Todo Title", text: $title)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Button("Save") {
                    
                    if title.isEmpty {
                        
                    }
                    let newTodo = Todo(title: title)
                    context.insert(newTodo)
                    isPresented = false
                
                }
                .buttonStyle(.borderedProminent)
                .disabled(title.trimmingCharacters(in: .whitespaces).isEmpty)
                .opacity(title.isEmpty ? 0.5 : 1)
                Spacer()
            }
            .navigationTitle("Add Todo")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Cancel") {
                        isPresented = false
                    }
                }
            }
        }
    }
}

#Preview {
    AddNewTodo(isPresented: .constant(true))
}
