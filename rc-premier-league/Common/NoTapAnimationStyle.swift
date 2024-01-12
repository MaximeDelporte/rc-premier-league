//
//  NoTapAnimationStyle.swift
//  rc-premier-league
//
//  Created by afx on 12/01/2024.
//

import Foundation
import SwiftUI

struct NoTapAnimationStyle: PrimitiveButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .contentShape(Rectangle())
            .onTapGesture(perform: configuration.trigger)
    }
}
