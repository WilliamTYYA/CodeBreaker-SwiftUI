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
        GeometryReader { geometry in
            GameChooser()
                .modelContainer(for: CodeBreaker.self)
                .environment(\.sceneFrame, geometry.frame(in: .global))
        }
        .ignoresSafeArea(.all)
    }
}

extension EnvironmentValues {
    @MainActor @Entry var sceneFrame: CGRect = .zero
}

#Preview {
    ContentView()
}
