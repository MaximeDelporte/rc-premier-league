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
    
    @Binding var isPaywallPresented: Bool
    
    private let padding: CGFloat = 16
    private let cardCornerRadius: CGFloat = 12
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text("Sign up for our monthly plan to access all team informations !")
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                .padding(.top, padding)
                .padding(.horizontal, padding)
                .padding(.bottom, 8)
            
            Button(
                action: { isPaywallPresented = true },
                label: {
                    Text("Let's do it")
                        .padding(.vertical, 14)
                        .padding(.horizontal, 14)
                        .background(.blue)
                        .foregroundStyle(.white)
                        .cornerRadius(8)
                }
            )
            .padding(.horizontal, padding)
            .padding(.bottom, 16)
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
    @State var isPaywallPresented = false
    return InvitationToUpgradeView(isPaywallPresented: $isPaywallPresented)
}
