//
//  ProductCategory.swift
//  Verda
//
//  Created by Marina Marhitych on 23.10.2026.
//

import Foundation

nonisolated enum ProductCategory: String, Codable, CaseIterable, Sendable {
    case flowers
    case roses
    case bouquets
    case gifts
 
    var title: String {
        switch self {
        case .flowers: "Flowers"
        case .roses: "Roses"
        case .bouquets: "Bouquets"
        case .gifts: "Gifts"
        }
    }
}
