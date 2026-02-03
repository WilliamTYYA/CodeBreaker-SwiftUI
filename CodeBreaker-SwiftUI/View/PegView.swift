//
//  PegView.swift
//  CodeBreaker-SwiftUI
//
//  Created by Thiha Ye Yint Aung on 1/26/26.
//

import SwiftUI

struct PegView: View {
    // MARK: Data In
    let peg: Peg
    
    // MARK: - Body
    
    let pegShape = Diamond()

    var body: some View {
        pegShape
            .contentShape(pegShape)
            .aspectRatio(1, contentMode: .fit)
            .foregroundStyle(Color(hex: peg) ?? .clear)
    }
    
//    var body: some View {
//        GeometryReader { geometry in
//            let rect = geometry.frame(in: .local)
//            Path { path in
//                path.move(to: CGPoint(x: rect.midX, y: rect.minY))
//                path.addLine(to: CGPoint(x: rect.minX, y: rect.midY))
//                path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
//                path.addLine(to: CGPoint(x: rect.maxX, y: rect.midY))
//                path.closeSubpath()
//            }
//        }
//        .contentShape(pegShape)
//        .aspectRatio(1, contentMode: .fit)
//        .foregroundStyle(Color(hex: peg) ?? .clear)
//    }
}

#Preview {
    PegView(peg: Color.blue.hex)
        .padding()
}
