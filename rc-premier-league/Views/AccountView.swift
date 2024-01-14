//
//  AccountView.swift
//  rc-premier-league
//
//  Created by afx on 12/01/2024.
//

import Foundation
import RevenueCat
import SwiftUI

struct AccountView: View {
    
    @EnvironmentObject var userViewModel: UserViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content: {
            HStack(spacing: 8, content: {
                Text("Subscription Status :")
                    .fontWeight(.bold)
                
                Text(userViewModel.isSubscriptionActive ? "Pro" : "Free")
                
                Spacer()
            })
            .padding(.vertical, 32)
            
            Button(
                action: {
                    Purchases.shared.restorePurchases(completion: { (customerInfo, error) in
                        userViewModel.isSubscriptionActive = customerInfo?.entitlements["pro"]?.isActive == true
                    })
                },
                label: {
                    Text("Restore Purchases")
                        .padding(.vertical, 16)
                        .padding(.horizontal, 16)
                        .background(.blue)
                        .foregroundStyle(.white)
                        .cornerRadius(8)
                })
            
            Spacer()
        })
        .padding(.horizontal, 16)
    }
}

#Preview {
    AccountView()
}
