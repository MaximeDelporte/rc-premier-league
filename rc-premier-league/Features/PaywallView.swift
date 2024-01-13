//
//  PaywallView.swift
//  rc-premier-league
//
//  Created by afx on 13/01/2024.
//

import Foundation
import SwiftUI

struct PaywallView: View {
    
    @Binding var isPaywallPresented: Bool
    
    var body: some View {
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
            .padding(.bottom, 16)
            
            Button(action: {}, label: {
                Text("1 year 9.99$")
                    .padding(.vertical, 16)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(8)
            })
            
            Button(action: {}, label: {
                Text("1 month 0.99$")
                    .padding(.vertical, 16)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(.blue)
                    .foregroundStyle(.white)
                    .cornerRadius(8)
            })
            .padding(.bottom, 16)
            
            Text("Your full unlimited access is just around the corner.")
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.horizontal, 36)
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
