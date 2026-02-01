//
//  ContentView.swift
//  CodeBreaker-SwiftUI
//
//  Created by Thiha Ye Yint Aung on 1/24/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        GameChooser()
            .modelContainer(for: CodeBreaker.self)
    }
}

#Preview {
    ContentView()
}
