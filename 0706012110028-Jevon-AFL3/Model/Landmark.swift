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
struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    
    //menambah imageName property
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    //menambahkan properti koordinat pada struktur
    private var coordinates: Coordinates
    
    //properti locationCoordinate

    var locationCoordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(
                latitude: coordinates.latitude,
                longitude: coordinates.longitude)
        }

        struct Coordinates: Hashable, Codable {
            var latitude: Double
            var longitude: Double
        }
}
