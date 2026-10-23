//
//  Product.swift
//  Verda
//
//  Created by Marina Marhitych on 23.10.2026.
//

import Foundation

nonisolated struct Product: Codable, Identifiable, Hashable, Sendable {
    let id: String
    let name: String
    let price: Decimal
    let rating: Double
    let reviewCount: Int
    let category: ProductCategory
    let summary: String
    let features: [ProductFeature]
    let imageName: String
    let isBestSeller: Bool
}




