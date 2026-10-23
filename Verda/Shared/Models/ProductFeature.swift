//
//  ProductFeature.swift
//  Verda
//
//  Created by Marina Marhitych on 23.10.2026.
//

import Foundation

nonisolated enum ProductFeature: String, Codable, CaseIterable, Sendable {
    case freshSeasonal
    case handTiedBouquet
    case freeDelivery
    case petFriendly
    
    var title: String {
        switch self {
        case .freshSeasonal: "Fresh & Seasonal"
        case .handTiedBouquet: "Hand-Tied Bouquet"
        case .freeDelivery: "Free Delivery"
        case .petFriendly: "Pet Friendly (Non-Toxic)"
        }
    }
}
