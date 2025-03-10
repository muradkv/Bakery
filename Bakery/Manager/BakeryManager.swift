//
//  BakeryManager.swift
//  Bakery
//
//  Created by murad on 10.03.2025.
//

final class BakeryManager {
    
    weak var delegate: BakeryDelegate?
    
    func bakeProduct(_ product: BakedGood) -> String {
        let bakingResult = product.bake()
        delegate?.didFinishBaking(product)
        return bakingResult
    }
}
