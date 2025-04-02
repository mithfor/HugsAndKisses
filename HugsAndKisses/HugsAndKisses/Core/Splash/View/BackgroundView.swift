//
//  BackgroundView.swift
//  HugsAndKisses
//
//  Created by Dmitrii Voronin on 02.04.2025.
//
import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [.Colors.Accent.primary, .Colors.Accent.red]),
            startPoint: .leading,
            endPoint: .trailing
        )
        .edgesIgnoringSafeArea(.all)
    }
}
