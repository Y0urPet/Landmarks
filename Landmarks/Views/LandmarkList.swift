//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Timothy Andrian on 04/03/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
