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
    @State private var showingRestoringPurchaseAlert = false
    
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
                action: { showingRestoringPurchaseAlert = true },
                label: {
                    Text("Restore Purchases")
                        .padding(.vertical, 16)
                        .padding(.horizontal, 16)
                        .background(.blue)
                        .foregroundStyle(.white)
                        .cornerRadius(8)
                }
            )
            .alert(isPresented: $showingRestoringPurchaseAlert, content: {
                if userViewModel.isSubscriptionActive {
                    return Alert(
                        title: Text("Information"),
                        message: Text("You're already a premium customer"),
                        dismissButton: .default(Text("Got it!"))
                    )
                } else {
                    return Alert(
                        title: Text("Information"),
                        message: Text("Are you sure you want to subscribe again ?"),
                        primaryButton: .default(Text("Yes"), action: {
                            Purchases.shared.restorePurchases(completion: { (customerInfo, error) in
                                userViewModel.isSubscriptionActive = customerInfo?.entitlements["Pro"]?.isActive == true
                            })
                        }),
                        secondaryButton: .default(Text("No"), action: {
                            showingRestoringPurchaseAlert = false
                        })
                    )
                }
            })
            
            Spacer()
        })
        .padding(.horizontal, 16)
    }
}

#Preview {
    AccountView()
        .environmentObject(UserViewModel())
}
