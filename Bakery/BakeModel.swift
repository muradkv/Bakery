//
//  BakeModel.swift
//  Bakery
//
//  Created by murad on 05.03.2025.
//

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
