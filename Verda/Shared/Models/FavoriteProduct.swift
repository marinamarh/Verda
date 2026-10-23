//
//  FavoriteProduct.swift
//  Verda
//
//  Created by Marina Marhitych on 23.10.2026.
//

import Foundation
import SwiftData

@Model
final class FavoriteProduct {
    @Attribute(.unique) var productID: String
    
    init(productID: String) {
        self.productID = productID
    }
}
