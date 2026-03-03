//
//  TodoViewModel.swift
//  ToDo App SwiftData
//
//  Created by Abhishek Kusalkar on 21/02/26.
//

import SwiftData

@Observable
class TodoViewModel {
    
    func addTodo(context : ModelContext, title : String) {
        guard !title.isEmpty else { return }
        
        let newTodo = Todo(title: title)
        context.insert(newTodo)
        
    }
    
    func deleteTodo(context : ModelContext, todo : Todo) {
        context.delete(todo)
    }
    
}
