//
//  SplashView.swift
//  HugsAndKisses
//
//  Created by Dmitrii Voronin on 02.04.2025.
//

import SwiftUI

struct SplashView: View {
    let logoImage: Image
    @State private var isLoading = true
    
    private enum ViewLayoutConstants {
        static let splashLogoSize: CGFloat = 160
        static let splashLogoCornerRadius: CGFloat = 40
        static let spinnerBottomSpace: CGFloat = -104
    }
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                logoImage
                    .resizable()
                    .scaledToFit()
                    .frame(
                        width: ViewLayoutConstants.splashLogoSize,
                        height: ViewLayoutConstants.splashLogoSize
                    )
                    .background(Color.Colors.Accent.grey)
                    .cornerRadius(ViewLayoutConstants.splashLogoCornerRadius)
                
                Spacer()
                    .frame(height: ViewLayoutConstants.spinnerBottomSpace.magnitude)
                
                if isLoading {
                    ProgressView()
                        .scaleEffect(1.5)
                        .tint(.white) // Make spinner visible against gradient
                }
            }
        }
        .onAppear {
            // Simulate loading process
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                isLoading = false
            }
        }
    }
}

// Preview with gradient background
struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(logoImage: Image(systemName: "heart.fill"))
    }
}


