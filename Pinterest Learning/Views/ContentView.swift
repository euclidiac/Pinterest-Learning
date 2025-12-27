//
    // Project: MacOSNotesApp
    //  File: ContentView.swift
    //  Created by Noah Carpenter
    //  🐱 Follow me on YouTube! 🎥
    //  https://www.youtube.com/@NoahDoesCoding97
    //  Like and Subscribe for coding tutorials and fun! 💻✨
    //  Fun Fact: Cats have five toes on their front paws, but only four on their back paws! 🐾
    //  Dream Big, Code Bigger
    

import SwiftUI

struct ContentView: View {
    @State private var notes: [Note] = [
        Note(title: "New Note", body: "Start writing here!")
    ]
    @State private var selectedNote: Note?
    func newNote() {
        let newNote = Note(title: "Untitled", body: "")
        notes.append(newNote)
        selectedNote = newNote
    }
    var body: some View {
        NavigationSplitView{
            List(selection: $selectedNote) {
                ForEach(notes){ note in
                    Text(note.title)
                        .tag(note)
                }
            }
            .navigationTitle("My Notes")
            .listStyle(.sidebar)
            .frame(minWidth: 200)
            .toolbar {
                Button("New Note"){
                    newNote()
                }
                .buttonStyle(.plain)
            }
            
        }
    detail:
        {
            if let note = selectedNote {
                SwiftUIView(note: binding(for: note))
            } else{
                Text("Select a note")
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
