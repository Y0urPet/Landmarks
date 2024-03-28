//
//  RotateBadgeSymbol.swift
//  Landmarks
//
//  Created by Timothy Andrian on 04/03/24.
//

import SwiftUI

struct RotateBadgeSymbol: View {
    let angle: Angle
    
    var body: some View {
        BadgeSymbol().padding(-60).rotationEffect(angle, anchor: .bottom)
    }
}

#Preview {
    RotateBadgeSymbol(angle: Angle(degrees: 5))
}
