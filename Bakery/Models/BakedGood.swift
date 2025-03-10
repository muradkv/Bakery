//
//  BakedGood.swift
//  Bakery
//
//  Created by murad on 10.03.2025.
//

import Foundation

protocol BakedGood {
    var name: String { get }
    var imageName: String { get }
    
    func description() -> String
    func bake() -> String
}

extension BakedGood {
    func bake() -> String {
        "\(name) выпекается стандратным способом"
    }
}
