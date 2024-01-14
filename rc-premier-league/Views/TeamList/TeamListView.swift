//
//  ContentView.swift
//  rc-premier-league
//
//  Created by afx on 12/01/2024.
//

import SwiftUI

struct TeamListView: View {
    
    @Binding var path: NavigationPath
    
    @State var isPaywallPresented = false
    @EnvironmentObject var userViewModel: UserViewModel
    
    private let teams = TeamHelper.allTeams
    
    var body: some View {
        VStack(spacing: 0, content: {
            
            if userViewModel.isSubscriptionActive == false {
                InvitationToUpgradeView(isPaywallPresented: $isPaywallPresented)
                    .padding(.top, 16)
                    .padding(.horizontal, 16)
            }
            
            ScrollView {
                Spacer(minLength: 24)
                
                ForEach(Array(teams.enumerated()), id: \.element) { (index, team) in
                    let rank = index + 1
                    
                    let destination = userViewModel.isSubscriptionActive ? AnyView(TeamDetailView(team: team)) : AnyView(PaywallView(isPaywallPresented: $isPaywallPresented))
                    
                    TeamListItemView(rank: rank, team: team)
                        .padding(.horizontal, 16)
                        .onTapGesture {
                            if userViewModel.isSubscriptionActive {
                                path.append(team)
                            } else {
                                isPaywallPresented = true
                            }
                        }
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
    @State var path: NavigationPath = .init()
    return TeamListView(path: $path)
}
