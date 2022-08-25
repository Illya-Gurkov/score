//
//  DataService.swift
//  score
//
//  Created by Illya Gurkov on 23.08.22.
//

import UIKit

class DataService {
    static let shared = DataService()
    var equipment: [soccer]
    private init() {
        equipment = [soccer(name: "Бутсы", price: 200, image: #imageLiteral(resourceName: "images")),
                     soccer(name: "Футболка", price: 100, image: #imageLiteral(resourceName: "Unknown-4.jpeg")),
                     soccer(name: "Костюм", price: 150, image: #imageLiteral(resourceName: "Unknown-5")),
                     soccer(name: "Мяч", price: 250, image: #imageLiteral(resourceName: "Unknown")),
                     soccer(name: "Гетры", price: 10, image: #imageLiteral(resourceName: "Unknown-1")),
                     soccer(name: "Шорты", price: 30, image: #imageLiteral(resourceName: "images-2")),
                     soccer(name: "Костюм", price: 130, image: #imageLiteral(resourceName: "images-3")),
                     soccer(name: "Толстовка", price: 70, image: #imageLiteral(resourceName: "images-4"))]
    }
}
