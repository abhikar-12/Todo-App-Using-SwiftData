📝 Todo App – SwiftUI + SwiftData

A modern Todo List application built using SwiftUI and SwiftData, following the MVVM architecture. The app allows users to add and delete tasks with real-time UI updates and local data persistence.

<img width="250" height="601" alt="Screenshot 2026-03-03 at 8 45 03 PM" src="https://github.com/user-attachments/assets/8a6ea099-b8dd-4918-95d6-8ef09b4b6ae8" />
<img width="250" height="601" alt="Screenshot 2026-03-03 at 8 45 43 PM" src="https://github.com/user-attachments/assets/0749077f-7f09-4cdd-aa48-7d212ef87c08" />
<img width="250" height="601" alt="Screenshot 2026-03-03 at 8 45 56 PM" src="https://github.com/user-attachments/assets/335538e2-fad8-4a48-b496-344c45996803" />




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
