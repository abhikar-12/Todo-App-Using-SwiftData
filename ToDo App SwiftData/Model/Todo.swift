//
//  Todo.swift
//  ToDo App SwiftData
//
//  Created by Abhishek Kusalkar on 21/02/26.
//

import SwiftData

@Model
class Todo {
    var title : String
    
    init(title: String) {
        self.title = title
    }
}
