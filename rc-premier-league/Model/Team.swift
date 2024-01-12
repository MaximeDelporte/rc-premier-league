//
//  Team.swift
//  rc-premier-league
//
//  Created by afx on 12/01/2024.
//

import Foundation

struct Team: Hashable {
    let name: String
    let logoImageName: String
    let stadiumImageName: String
    let description: String
    let logoIsRound: Bool
    
    init(
        name: String,
        logoImageName: String,
        stadiumImageName: String,
        description: String,
        logoIsRound: Bool = true
    ) {
        self.name = name
        self.logoImageName = logoImageName
        self.stadiumImageName = stadiumImageName
        self.description = description
        self.logoIsRound = logoIsRound
    }
}
