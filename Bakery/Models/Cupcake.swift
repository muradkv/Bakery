//
//  Cupcake.swift
//  Bakery
//
//  Created by murad on 10.03.2025.
//

import Foundation

struct Cupcake: BakedGood {
    var name: String { "Капкейк" }
    var imageName: String { "cupcake_image" }
    
    func description() -> String {
        "Это нежный капкейк с кремовой шапочкой!"
    }
    
    func bake() -> String {
        "Капкейк поставлен в духовку на 20 минут..."
    }
}
