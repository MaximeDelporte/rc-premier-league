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
    
    @Published var isPremium = false
    
    init() {
        Purchases.shared.getCustomerInfo(completion: { (customerInfo, error) in
            self.isPremium = customerInfo?.entitlements.all["pro"]?.isActive == true
        })
    }
}
