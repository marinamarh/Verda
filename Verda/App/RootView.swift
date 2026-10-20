//
//  RootView.swift
//  Verda
//
//  Created by Marina Marhitych on 19.10.2026.
//

import SwiftUI

struct RootView: View {
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false
    
    var body: some View {
        ZStack {
            Group {
                if hasSeenOnboarding {
                    Text("Home")
                } else {
                    OnboardingView {
                        hasSeenOnboarding = true
                    }
                }
            }
            .transition(.opacity)
        }
        .animation(.default, value: hasSeenOnboarding)
    }
}

#Preview {
    RootView()
}
