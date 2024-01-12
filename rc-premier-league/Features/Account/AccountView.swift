//
//  AccountView.swift
//  rc-premier-league
//
//  Created by afx on 12/01/2024.
//

import Foundation
import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 0, content: {
                HStack(spacing: 8, content: {
                    Text("Subscription Status :")
                        .fontWeight(.bold)
                    
                    Text("Free")
                    
                    Spacer()
                })
                .padding(.vertical, 32)
                
                RCButton(title: "Restore Purchases", action: {
                    
                })
                
                Spacer()
            })
            .padding(.horizontal, 16)
            .navigationTitle("Account")
        }
    }
}

#Preview {
    AccountView()
}
