//
//  OnboardingView.swift
//  Verda
//
//  Created by Marina Marhitych on 19.10.2026.
//

import SwiftUI

struct OnboardingView: View {
    let onGetStarted: () -> Void
    
    var body: some View {
        VStack(spacing: 20) {
            VStack(spacing: 6) {
                Image("VerdaIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 80)
                
                Text("Verda")
                    .font(.kodchasanSemiBold(size: 80, relativeTo: .largeTitle))
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                    .foregroundStyle(.white)
                    .shadow(color: .black.opacity(0.3), radius: 4, y: 2)
            }
            
            VStack(spacing: 20) {
                Text("Bring Nature Home")
                    .font(.kodchasanBold(size: 18, relativeTo: .headline))
                
                Text("Beautiful plants.\nHappy spaces.\nBetter you.")
                    .font(.alexandriaMedium(size: 17, relativeTo: .body))
                    .multilineTextAlignment(.center)
            }
            .foregroundStyle(.white)
            .padding(.bottom, 18)
            
            PrimaryButton(title: "Get Started", systemImage: "arrow.right", action: onGetStarted)
                .frame(maxWidth: 240)
                .padding(.top, 16)
        }
        .padding(.horizontal, 32)
        .padding(.vertical, 44)
        .glassEffect(.clear, in: .rect(cornerRadius: 25))
        .frame(maxWidth: 420)
        .padding(.horizontal, 28)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Image("OnboardingLeaf")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        }
    }
}

#Preview {
    OnboardingView(onGetStarted: {})
}
