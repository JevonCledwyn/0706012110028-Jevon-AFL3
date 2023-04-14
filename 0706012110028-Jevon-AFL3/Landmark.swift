//
//  Landmark.swift
//  0706012110028-Jevon-AFL3
//
//  Created by MacBook Pro on 14/04/23.
//

import Foundation

//Define a Landmark structure
struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
}
