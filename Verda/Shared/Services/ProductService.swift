//
//  ProductService.swift
//  Verda
//
//  Created by Marina Marhitych on 23.10.2026.
//

import Foundation

protocol ProductService: Sendable {
    func fetchProducts() async throws -> [Product]
}

struct LocalProductService: ProductService {
    func fetchProducts() async throws -> [Product] {
        guard let url = Bundle.main.url(forResource: "products", withExtension: "json") else {
            throw CocoaError(.fileNoSuchFile)
        }
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode([Product].self, from: data)
    }
}
