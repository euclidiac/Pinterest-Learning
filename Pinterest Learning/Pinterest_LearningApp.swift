//
//  Pinterest_LearningApp.swift
//  Pinterest Learning
//
//  Created by Daniel Asamudo on 2025-12-26.
//

import SwiftUI


class NewNote: ObservableObject {
    @State private var notes: [Note] = [
        Note(title: "New Note", body: "Start writing here!")
    ]
    @State private var selectedNote: Note?
    func newNote() {
        let newNote = Note(title: "Untitled", body: "")
        notes.append(newNote)
        selectedNote = newNote
    }
}
@main
struct Pinterest_LearningApp: App {
    @State var newnote = newNote()
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .commands {
            CommandMenu("Actions") {
                Button("New Note") {
                    newNote()
                }
            }
        }
    }
}
