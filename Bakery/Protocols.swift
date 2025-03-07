//
//  Protocols.swift
//  Bakery
//
//  Created by murad on 05.03.2025.
//

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
