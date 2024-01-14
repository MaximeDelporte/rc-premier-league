//
//  UserViewModel.swift
//  rc-premier-league
//
//  Created by afx on 14/01/2024.
//

import Foundation
import RevenueCat
import SwiftUI

class UserViewModel: ObservableObject {
    
    @Published var isSubscriptionActive = false
    
    init() {
        Purchases.shared.getCustomerInfo(completion: { (customerInfo, error) in
            self.isSubscriptionActive = customerInfo?.entitlements.all["Pro"]?.isActive == true
        })
    }
}
