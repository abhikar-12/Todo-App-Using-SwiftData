//
//  ContentView.swift
//  ToDo App SwiftData
//
//  Created by Abhishek Kusalkar on 21/02/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) var context
    @Query var todos : [Todo]
    @State var title : String = ""
    @State var viewModel = TodoViewModel()
    @State var showSheet = false
    
    var body: some View {
        NavigationStack {
                    List{
                        ForEach(todos) { todo in
                            Text(todo.title)
                        }
                        .onDelete { indexSet in
                            for index in indexSet {
                                let todo = todos[index]
                                viewModel.deleteTodo(context: context, todo: todo)
                            }
                        }

                    }
                    .sheet(isPresented: $showSheet) {
                        AddNewTodo(isPresented: $showSheet)
                            .presentationDetents([.medium, .large])
                    }
                    .navigationTitle("Todo App")
                    .toolbar {
                        ToolbarItem(placement: .automatic) {
                            Button {
                                showSheet = true
                            } label: {
                                Image(systemName: "plus")
                                    .font(.title2)
                            }

                        }
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Todo.self, inMemory: true)
}

