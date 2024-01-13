//
//  SubscriptionPeriod.swift
//  rc-premier-league
//
//  Created by afx on 14/01/2024.
//

import Foundation
import RevenueCat
import StoreKit

extension SubscriptionPeriod {
    
    var durationTitle: String {
        switch self.unit {
        case .day: return "jour"
        case .week: return "semaine"
        case .month: return "mois"
        case .year: return "an"
        @unknown default: return "Unknown"
        }
    }
    
    var periodTitle: String {
        let periodString = "\(self.value) \(self.durationTitle)"
        
        let pluralized = if self.value > 1 && self.unit != .month {
            periodString + "s"
        } else {
            periodString
        }
        
        return pluralized
    }
}
