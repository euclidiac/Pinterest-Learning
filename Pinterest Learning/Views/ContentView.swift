//
//  ContentView.swift
//  Pinterest Learning
//
//  Created by Daniel Asamudo on 2025-12-26.
//

import SwiftUI

struct ContentView: View {
    @State private var notes: [Note] = [
        Note(title: "Hey there!", body: "Start writing here!")
    ]
    @State private var selectedNote: Note?
    var body: some View {
        NavigationSplitView{
            List(selection: $selectedNote) {
                ForEach(notes){ note in
                    Text(note.title)
                }
            }
            .navigationTitle("My Notes")
            .listStyle(.sidebar)
            .frame(minWidth: 200)
            .toolbar {
                Button("New Note"){
                    let newNote = Note(title: "New Note", body: "")
                    notes.append(newNote)
                    selectedNote = newNote
                    
                }
            }
        }
        detail: {
            if let note = selectedNote {
                SwiftUIView(note: binding(for: note))
            } else {
                Text("Choose a note.")
                    .foregroundStyle(.secondary)
            }
        }
    }
    private func binding(for note: Note) -> Binding<Note> {
        guard let index = notes.firstIndex(where: { $0.id == note.id}) else {
            fatalError("Note not found")
        }
        return $notes[index]
    }
}

#Preview {
    ContentView()
}
