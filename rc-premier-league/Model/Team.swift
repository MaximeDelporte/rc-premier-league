//
//  Team.swift
//  rc-premier-league
//
//  Created by afx on 12/01/2024.
//

import Foundation

struct Team: Hashable {
    let name: String
    let imageName: String
    let description: String
    let logoIsRound: Bool
    
    init(
        name: String,
        imageName: String,
        description: String,
        logoIsRound: Bool = true
    ) {
        self.name = name
        self.imageName = imageName
        self.description = description
        self.logoIsRound = logoIsRound
    }
}
