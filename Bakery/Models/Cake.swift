//
//  Cake.swift
//  Bakery
//
//  Created by murad on 10.03.2025.
//

import Foundation

struct Cake: BakedGood {
    var name: String = "Cake"
    var imageName: String = "cake_image"
    
    func description() -> String {
        "Это вкусный праздничный торт!"
    }
    
    func bake() -> String {
        "Торт поставлен в духовку на 40 минут..."
    }
}
