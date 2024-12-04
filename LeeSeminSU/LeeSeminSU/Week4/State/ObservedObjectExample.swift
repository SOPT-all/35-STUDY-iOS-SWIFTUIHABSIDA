//
//  ObservedObjectExample.swift
//  LeeSeminSU
//
//  Created by 이세민 on 12/5/24.
//

import SwiftUI

class TodoListModel: ObservableObject {
    @Published var todos: [String] = []
    
    func addTodo(_ todo: String) {
        todos.append(todo)
    }
    
    func removeTodo(at index: Int) {
        todos.remove(at: index)
    }
}

struct ObservedObjectExample: View {
    @ObservedObject var todoListModel = TodoListModel()
    @State private var newTodo: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("To Do List")
                .font(.largeTitle)
                .bold()
                .padding()
            
            HStack {
                TextField("할 일을 추가하세요.", text: $newTodo)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.trailing, 8)
                
                Button(action: {
                    if !newTodo.isEmpty {
                        todoListModel.addTodo(newTodo)
                        newTodo = ""
                    }
                }) {
                    Text("추가")
                        .padding(.vertical, 8)
                        .padding(.horizontal, 12)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding()
            
            List {
                ForEach(Array(todoListModel.todos.enumerated()), id: \.offset) { index, todo in
                    HStack {
                        Text(todo)
                        Spacer()
                        Button(action: {
                            todoListModel.removeTodo(at: index)
                        }) {
                            Image(systemName: "trash")
                                .foregroundColor(.red)
                        }
                    }
                }
            }
        }
        .listStyle(PlainListStyle())
        .padding()
    }
}

#Preview {
    ObservedObjectExample()
}
