//
//  ContentView.swift
//  rc-premier-league
//
//  Created by afx on 12/01/2024.
//

import SwiftUI

struct TeamListView: View {
    
    @State var isPaywallPresented = false
    
    private let teams = TeamHelper.allTeams
    
    var body: some View {
        VStack(spacing: 0, content: {
            InvitationToUpgradeView(isPaywallPresented: $isPaywallPresented)
                .padding(.top, 16)
                .padding(.horizontal, 16)
            
            ScrollView {
                Spacer(minLength: 24)
                
                ForEach(Array(teams.enumerated()), id: \.element) { (index, team) in
                    let rank = index + 1
                    
                    NavigationLink(destination: TeamDetailView(team: team)) {
                        TeamListItemView(rank: rank, team: team)
                            .padding(.horizontal, 16)
                    }
                    .buttonStyle(NoTapAnimationStyle())
                }
                
                Spacer(minLength: 24)
            }
            .scrollIndicators(.hidden)
        })
        .sheet(isPresented: $isPaywallPresented, onDismiss: nil) {
            PaywallView(isPaywallPresented: $isPaywallPresented)
        }
    }
}

#Preview {
    TeamListView()
}
