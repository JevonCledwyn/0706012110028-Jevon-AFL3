//
//  Profile.swift
//  0706012110028-Jevon-AFL3
//
//  Created by MacBook Pro on 27/04/23.
//

import Foundation

struct Profile {
    // defining a user profile
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()

    static let `default` = Profile(username: "g_kumar")

    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"

        var id: String { rawValue }
    }
}
