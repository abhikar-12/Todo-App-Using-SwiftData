#📝 Todo App – SwiftUI + SwiftData

A modern Todo List application built using SwiftUI and SwiftData, following the MVVM architecture. The app allows users to add and delete tasks with real-time UI updates and local data persistence.

**🚀 Features**

    ➕ Add new todos using a modal sheet
    🗑 Delete todos with swipe gesture
    ✅ Disabled save button for empty input validation
    🔄 Automatic UI updates using @Query
    💾 Local data persistence using SwiftData
    🏗 Clean MVVM architecture

**🏛 Architecture**

    This project follows the Model-View-ViewModel (MVVM) pattern:
    Model → Todo (SwiftData @Model)
    View → ContentView, AddNewTodo
    ViewModel → TodoViewModel
    Persistence Layer → SwiftData with ModelContainer
    This structure ensures scalability, separation of concerns, and maintainable code.

**🛠 Tech Stack**

    Swift
    SwiftUI
    SwiftData
    MVVM Architecture
    Xcode (iOS 17+)

**📂 Project Structure**

    Todo-App/
    │
    ├── Models/
    │   └── Todo.swift
    │
    ├── ViewModels/
    │   └── TodoViewModel.swift
    │
    ├── Views/
    │   ├── ContentView.swift
    │   └── AddNewTodo.swift
    │
    └── ToDo_App_SwiftDataApp.swift
