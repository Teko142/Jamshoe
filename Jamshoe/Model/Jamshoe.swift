//
//  Jamshoe.swift
//  Jamshoe
//
//  Created by Артур Олехно on 16/05/2021.
//

import Foundation
import SwiftUI

struct Jamshoe: Hashable, Codable, Identifiable {
    var id: Int
    var price : Int
    var model: String
    var color: String
    var size: String
    var about: String
    var isFeatured: Bool
    var isFavorite: Bool
    var isBought: Bool
    var inCart: Bool
    
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case airMax = "AIR MAX"
        case tanjun = "TANJUN"
        case dealersChoise = "Dealers Choise"
    }

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
