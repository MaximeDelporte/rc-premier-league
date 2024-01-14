//
//  PaywallView.swift
//  rc-premier-league
//
//  Created by afx on 13/01/2024.
//

import Foundation
import RevenueCat
import SwiftUI

struct PaywallView: View {
    
    @Binding var isPaywallPresented: Bool
    @State var isPurchasing = false
    @State var currentOffering: Offering?
    
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 16) {
                Text("Premier League Pro")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text("Experience football like never before! Unlock the full power of the app for an all-access pass to your favorite teams and players.")
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                PaywallItemView(
                    imageName: "ranking",
                    description: "Access to all results. Live ranking."
                )
                .padding(.top, 24)
                
                PaywallItemView(
                    imageName: "notification",
                    description: "Be notified of all the important events concerning your favourite teams."
                )
                .padding(.vertical, 16)
                
                PaywallItemView(
                    imageName: "support",
                    description: "24/7 premium support."
                )
                .padding(.bottom, 24)
                
                if let offering = currentOffering {
                    ForEach(offering.availablePackages) { package in
                        if let subscriptionPeriod = package.storeProduct.subscriptionPeriod {
                            
                            let title = "\(subscriptionPeriod.periodTitle), \(package.localizedPriceString)"
                            
                            Button(
                                action: {
                                    isPurchasing = true
                                    
                                    Purchases.shared.purchase(package: package) { (transaction, customerInfo, error, userCancelled) in
                                        isPurchasing = false
                                        
                                        if let customerInfo, customerInfo.entitlements["pro"]?.isActive == true {
                                            isPaywallPresented = false
                                        }
                                    }
                                },
                                label: {
                                    Text(title)
                                        .padding(.vertical, 16)
                                        .frame(maxWidth: .infinity, alignment: .center)
                                        .background(.blue)
                                        .foregroundStyle(.white)
                                        .cornerRadius(8)
                                }
                            )
                        }
                    }
                }
            }
            .padding(.horizontal, 36)
            .onAppear {
                Purchases.shared.getOfferings(completion: { (offerings, error) in
                    guard let offering = offerings?.current else { return }
                    self.currentOffering = offering
                })
            }
            
            Rectangle()
                .background(.black)
                .opacity(isPurchasing ? 0.28 : 0.0)
                .ignoresSafeArea(.all)
        }
    }
}

private struct PaywallItemView: View {
    
    let imageName: String
    let description: String
    
    var body: some View {
        HStack(spacing: 16) {
            Image(imageName)
                .resizable()
                .blending(color: .primary)
                .aspectRatio(contentMode: .fit)
                .frame(width: 34)
            
            Text(description)
                .font(.headline)
                .foregroundStyle(.primary)
        }
    }
}

#Preview {
    @State var isPaywallPresented = true
    return PaywallView(isPaywallPresented: $isPaywallPresented)
}
