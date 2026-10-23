//
//  CartItem.swift
//  Verda
//
//  Created by Marina Marhitych on 23.10.2026.
//

import Foundation
import SwiftData

@Model
final class CartItem {
    @Attribute(.unique) var productID: String
    var quantity: Int
    
    init(productID: String, quantity: Int = 1) {
        self.productID = productID
        self.quantity = quantity
    }
}
