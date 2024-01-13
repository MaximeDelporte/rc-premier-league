//
//  TeamDetailView.swift
//  rc-premier-league
//
//  Created by afx on 12/01/2024.
//

import Foundation
import SwiftUI

struct TeamDetailView: View {
    
    var team: Team
    
    var body: some View {
        ScrollView {
            Image(team.stadiumImageName)
                .resizable()
                .frame(height: 200)
                .aspectRatio(contentMode: .fit)
            
            Spacer()
                .frame(height: 16)
            
            Text(team.description)
                .padding(.horizontal, 16)
                .padding(.bottom, 16)
        }
        .scrollIndicators(.hidden)
        .navigationTitle(team.name)
    }
}

#Preview {
    let team = TeamHelper.allTeams[0]
    return TeamDetailView(team: team)
}
