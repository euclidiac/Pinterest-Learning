//
//  SwiftUIView.swift
//  Pinterest Learning
//
//  Created by Daniel Asamudo on 2025-12-26.
//

import SwiftUI

struct SwiftUIView: View {
    @Binding var note: Note
    var body: some View {
        VStack(alignment: .leading){
            TextField("Title", text: $note.title)
                .font(.title)
                .padding(.bottom)
            TextEditor(text: $note.body)
                .font(.body)
                .border(Color.white.opacity(0.5))
        }
        .padding()
        .navigationTitle(note.title)
    }
}

#Preview {
    @Previewable @State var sampleNote = Note(title: "example title", body: "example body")
    SwiftUIView(note: $sampleNote)
}
