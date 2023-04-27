//
//  Landmark.swift
//  0706012110028-Jevon-AFL3
//
//  Created by MacBook Pro on 14/04/23.
//

import Foundation
import SwiftUI
import CoreLocation

//Define a Landmark structure
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    
    // Category enumeration and a category property
    var category: Category
        enum Category: String, CaseIterable, Codable {
            case lakes = "Lakes"
            case rivers = "Rivers"
            case mountains = "Mountains"
        }

    //menambah imageName property
    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    //menambahkan properti koordinat pada struktur
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    //properti locationCoordinate
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
