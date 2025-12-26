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
            List(selection: $) {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
            }

        }
    }
}

#Preview {
    ContentView()
}
