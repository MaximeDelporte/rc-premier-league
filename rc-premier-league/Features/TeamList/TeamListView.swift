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
        NavigationView {
            VStack(spacing: 0, content: {
                InvitationToUpgradeView()
                
                ScrollView {
                    Spacer(minLength: 16)
                    
                    ForEach(Array(teams.enumerated()), id: \.element) { (index, team) in
                        let rank = index + 1
                        
                        NavigationLink(destination: TeamDetailView()) {
                            TeamListItemView(rank: rank, team: team)
                        }
                        .buttonStyle(NoTapAnimationStyle())
                    }
                }
                .scrollIndicators(.hidden)
            })
            .padding(.horizontal, 16)
            .navigationTitle("Premier League")
        }
    }
}

#Preview {
    TeamListView()
}
