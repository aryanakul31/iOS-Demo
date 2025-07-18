//
//  Landmark.swift
//  Demo
//
//  Created by Nakul Arya on 30/06/25.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark : Hashable,Codable,Identifiable{
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    
    private var imageName : String
    var image : Image{
        Image(imageName)
    }
    
    private var coordinates : Coordinates
    var locationCoordinates : CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude :coordinates.latitude,longitude: coordinates.longitude)
    }
    
    struct Coordinates : Hashable,Codable{
        var latitude: Double
        var longitude: Double
    }
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
}
