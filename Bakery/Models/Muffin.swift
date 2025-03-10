//
//  Muffin.swift
//  Bakery
//
//  Created by murad on 10.03.2025.
//

import Foundation

struct Muffin: BakedGood {
    var name: String { "Маффин" }
    var imageName: String { "muffin_image" }
    
    func description() -> String {
        "Это ароматный маффин с начинкой!"
    }
    
    func bake() -> String {
        "Маффин поставлен в духовку на 25 минут..."
    }
}
