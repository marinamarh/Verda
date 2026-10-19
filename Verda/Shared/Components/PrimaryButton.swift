//
//  PrimaryButton.swift
//  Verda
//
//  Created by Marina Marhitych on 19.10.2026.
//

import SwiftUI

/// Yellow glass call-to-action used across the app
/// (Get Started, Add to Cart, Proceed to Checkout).
struct PrimaryButton: View {
    let title: LocalizedStringKey
    let systemImage: String
    var cornerRadius: CGFloat?
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            label
        }
        .buttonStyle(.glassProminent)
        .buttonBorderShape(borderShape)
        .tint(Color.verdaYellow)
        .foregroundStyle(Color.verdaDarkGreen)
        .controlSize(.large)
    }
    
    private var label: some View {
        ZStack(alignment: .trailing) {
            Text(title)
                .frame(maxWidth: .infinity)
            
            Image(systemName: systemImage)
                .accessibilityHidden(true)
        }
        .font(.alexandriaMedium(size: 17, relativeTo: .body))
    }
    
    /// No corner radius means a capsule.
    private var borderShape: ButtonBorderShape {
        guard let cornerRadius else { return .capsule }
        return .roundedRectangle(radius: cornerRadius)
    }
}

#Preview {
    VStack(spacing: 16) {
        PrimaryButton(title: "Get Started", systemImage: "arrow.right") {}
        PrimaryButton(title: "Add to Cart", systemImage: "basket", cornerRadius: 20) {}
        PrimaryButton(title: "Proceed to Checkout", systemImage: "arrow.right", cornerRadius: 20) {}
    }
    .padding()
    .background(Color.green.opacity(0.5))
}
