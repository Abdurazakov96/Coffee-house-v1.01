//
//  coffee.swift
//  Coffee house
//
//  Created by Магомед Абдуразаков on 03/08/2019.
//  Copyright © 2019 Магомед Абдуразаков. All rights reserved.
//

import UIKit

struct Coffee {
    var name: String
    var photo: UIImage
    var price: Int
    var volume: String
    var rating: Int
}

extension Coffee {
    var stars: String {
        return String(repeating: "⍟", count: rating)
    }
    
    
}

extension Coffee {
    static var all: [Coffee] {
        return [
            Coffee(name: "КОФЕ NUTS", photo: UIImage(named:"КОФЕ NUTS")!, price: 289, volume: "300 мл", rating: 5),
            Coffee(name: "ФЬЮРИ ТЭЙЛ", photo: UIImage(named:"ФЬЮРИ ТЭЙЛ")!, price: 245,
                   volume: "250 мл", rating: 4),
            Coffee(name: "МИНДАЛЬНЫЙ КОФЕ", photo: UIImage(named:"МИНДАЛЬНЫЙ КОФЕ")!, price: 330, volume: "250 мл", rating: 4),
            Coffee(name: "АЙС КОФЕ", photo: UIImage(named:"АЙС КОФЕ")!, price: 280, volume: "380 мл", rating: 5),
            Coffee(name: "АЙС ФЬЮРИ", photo: UIImage(named:"АЙС ФЬЮРИ")!, price: 255, volume: "280 мл", rating: 4),
            Coffee(name: "ИМБИРНЫЙ РАФ", photo: UIImage(named:"ИМБИРНЫЙ РАФ")!, price:279, volume: "300 мл", rating: 4),
            Coffee(name: "OREO", photo: UIImage(named:"OREO")!, price: 307, volume: "270 мл", rating: 4),
            Coffee(name: "ЛУНГО", photo: UIImage(named:"ЛУНГО")!, price: 110, volume: "60 мл", rating: 4),
            Coffee(name: "РИСТРЕТТО", photo: UIImage(named:"РИСТРЕТТО")!, price: 110, volume: "15 мл", rating: 4),
            Coffee(name: "ГЛЯССЕ ШОКОЛАДНЫЙ", photo: UIImage(named:"ГЛЯССЕ ШОКОЛАДНЫЙ")!, price: 253, volume: "340 мл", rating: 4)
        ]
    }
}
