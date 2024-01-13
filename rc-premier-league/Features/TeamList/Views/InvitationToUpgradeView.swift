//
//  InvitationToUpgradeView.swift
//  rc-premier-league
//
//  Created by afx on 12/01/2024.
//

import Foundation
import RevenueCat
import SwiftUI

struct InvitationToUpgradeView: View {
    
    private let padding: CGFloat = 16
    private let cardCornerRadius: CGFloat = 12
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Sign up for our monthly plan to access all team informations !")
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.top, padding)
                .padding(.horizontal, padding)
                .padding(.bottom, 8)
            
            RCButton(title: "Let's do it", action: {
                Purchases.shared.getOfferings { (offerings, error) in
                    if let packages = offerings?.current?.availablePackages {
                        print(packages)
                    }
                }
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
        .frame(maxWidth: .infinity, alignment: .center)
       
    }
}

#Preview {
    InvitationToUpgradeView()
}
