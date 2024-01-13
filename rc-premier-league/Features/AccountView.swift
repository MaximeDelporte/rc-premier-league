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
        VStack(alignment: .leading, spacing: 0, content: {
            HStack(spacing: 8, content: {
                Text("Subscription Status :")
                    .fontWeight(.bold)
                
                Text("Free")
                
                Spacer()
            })
            .padding(.vertical, 32)
            
//            Button(action: {}, label: {
//                Text("Restore Purchases")
//                    .padding(.vertical, padding)
//                    .padding(.horizontal, padding)
//                    .background(.blue)
//                    .foregroundStyle(.white)
//                    .cornerRadius(8)
//            })
            
            Spacer()
        })
        .padding(.horizontal, 16)
    }
}

#Preview {
    AccountView()
}
