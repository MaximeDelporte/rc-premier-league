//
//  InvitationToUpgradeView.swift
//  rc-premier-league
//
//  Created by afx on 12/01/2024.
//

import Foundation
import SwiftUI

struct InvitationToUpgradeView: View {
    
    private let padding: CGFloat = 16
    private let cardCornerRadius: CGFloat = 12
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Sign up for our monthly plan to access all team informations !")
                .padding(.horizontal, padding)
                .padding(.top, padding)
                .padding(.bottom, 8)
            
            Button(action: {}, label: {
                Text("Let's do it")
                    .padding(.vertical, padding)
                    .padding(.horizontal, padding)
                    .background(.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(8)
            })
            .padding(.leading, padding)
            .padding(.bottom, padding)
        })
        .clipShape(
            RoundedRectangle(cornerSize: CGSize(width: cardCornerRadius, height: cardCornerRadius))
        )
        .overlay {
            RoundedRectangle(cornerSize: CGSize(width: cardCornerRadius, height: cardCornerRadius))
                .stroke(.primary, lineWidth: 1.5)
        }
        .padding(.top, 8)
    }
}
