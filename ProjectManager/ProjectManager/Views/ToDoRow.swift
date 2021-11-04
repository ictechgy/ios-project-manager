//
//  ToDoRow.swift
//  ProjectManager
//
//  Created by Kim Do hyung on 2021/10/28.
//

import SwiftUI

struct ToDoRow: View {
    let column: Int
    let row: Int
    let toDo: ToDo
    @State private var isPopoverShown = false
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(toDo.title)
                    .font(.title)
                Text(toDo.description)
                    .font(.body)
                    .foregroundColor(.gray)
                Text(toDo.date.description)
                    .font(.caption)
            }
            Spacer()
        }
        .onLongPressGesture {
            isPopoverShown = true
        }
        .popover(isPresented: $isPopoverShown) {
            ToDoPopover(column: column, row: row, isPopoverShown: $isPopoverShown)
        }
    }
}

struct ToDoRow_Previews: PreviewProvider {
    static var previews: some View {
        ToDoRow(column: 0, row: 0, toDo: ToDo())
    }
}
