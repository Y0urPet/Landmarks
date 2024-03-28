//
//  Profile.swift
//  Landmarks
//
//  Created by Timothy Andrian on 04/03/24.
//

import Foundation

struct Profile {
    var username:  String
    var preferNotification = true
    var preferModeTheme = false
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
