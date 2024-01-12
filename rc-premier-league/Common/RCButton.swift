//
//  RCButton.swift
//  rc-premier-league
//
//  Created by afx on 12/01/2024.
//

import Foundation
import SwiftUI

struct RCButton: View {
    
    var title: String
    var action: () -> Void

    private let padding: CGFloat = 16
    
    var body: some View {
        Button(action: action, label: {
            Text(title)
                .padding(.vertical, padding)
                .padding(.horizontal, padding)
                .background(.blue)
                .foregroundStyle(.white)
                .cornerRadius(8)
        })
    }
}
