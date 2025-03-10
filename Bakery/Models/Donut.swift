//
//  Donut.swift
//  Bakery
//
//  Created by murad on 10.03.2025.
//

import Foundation

struct Donut: BakedGood {
    var name: String { "Пончик" }
    var imageName: String { "donut_image" }
    
    func description() -> String {
        "Это сладкий пончик с глазурью и посыпкой!"
    }
    
    func bake() -> String {
        "Пончик жарится во фритюре до золотистой корочки..."
    }
}
