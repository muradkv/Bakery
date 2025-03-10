//
//  BakeryDelegate.swift
//  Bakery
//
//  Created by murad on 10.03.2025.
//

protocol BakeryDelegate: AnyObject {
    func didFinishBaking(_ product: BakedGood)
}

final class DelegateOwner: BakeryDelegate {
    func didFinishBaking(_ product: BakedGood) {
        print(product.name, "Уведомил делегат, что готов!")
    }
}
