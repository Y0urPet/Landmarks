//
//  ProfileEditor.swift
//  Landmarks
//
//  Created by Timothy Andrian on 04/03/24.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year,value: -1, to: profile.goalDate)!
        let max = Calendar.current.date(byAdding: .year,value: 1, to: profile.goalDate)!
        return min...max
    }
    
    var body: some View {
        List {
            HStack {
                Text("Username")
                Spacer()
                TextField("Username", text: $profile.username)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.trailing)
            }
            
            Toggle(isOn: $profile.preferNotification) {
                Text("EnableNotifications")
            }
            
            Toggle(isOn: $profile.preferModeTheme) {
                Text("Dark Mode")
            }
            
            Picker("Seasonal Photo", selection: $profile.seasonalPhoto) {
                ForEach(Profile.Season.allCases) { season in
                    Text(season.rawValue).tag(season)
                }
            }
            
            DatePicker(selection: $profile.goalDate, in: dateRange, displayedComponents: .date) {
                Text("Goal Date")
            }
        }.environment(\.colorScheme, profile.preferModeTheme ? .dark : .light)
    }
}

#Preview {
    ProfileEditor(profile: .constant(.default))
}
