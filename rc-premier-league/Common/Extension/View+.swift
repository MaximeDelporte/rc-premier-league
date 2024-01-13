//
//  View+.swift
//  rc-premier-league
//
//  Created by afx on 13/01/2024.
//

import Foundation
import SwiftUI

extension View {
    
    public func blending(color: Color) -> some View {
        modifier(ColorBlended(color: color))
    }
}

// Used for blending modifier function

private struct ColorBlended: ViewModifier {
    
    fileprivate var color: Color
    
    public func body(content: Content) -> some View {
        VStack {
            ZStack {
                content
                color.blendMode(.sourceAtop)
            }
            .drawingGroup(opaque: false)
        }
    }
}

