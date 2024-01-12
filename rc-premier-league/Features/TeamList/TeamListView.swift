//
//  ContentView.swift
//  rc-premier-league
//
//  Created by afx on 12/01/2024.
//

import SwiftUI

struct TeamListView: View {
    
    private let teams = TeamHelper.allTeams
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 0, content: {
                InvitationToUpgradeView()
                
                ScrollView {
                    VStack(alignment: .leading, content: {
                        ForEach(Array(teams.enumerated()), id: \.element) { (index, team) in
                            let rank = index + 1
                            TeamListItemView(rank: rank, team: team)
                        }
                    })
                    .padding(.top, 24)
                }
                .scrollIndicators(.hidden)
            })
            .navigationTitle("Premier League")
        }
        .padding(.horizontal, 8)
    }
}

#Preview {
    TeamListView()
}
