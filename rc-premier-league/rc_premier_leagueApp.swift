//
//  rc_premier_leagueApp.swift
//  rc-premier-league
//
//  Created by afx on 12/01/2024.
//

import SwiftUI

@main
struct rc_premier_leagueApp: App {
    var body: some Scene {
        WindowGroup {
           RCTabView()
        }
    }
}

private struct RCTabView: View {
    
    var body: some View {
        TabView(content: {
            TeamListView()
                .tabItem {
                    Label("Home", systemImage: "house.circle")
                }
            
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle")
                }
        })
        .tint(.primary)
    }
}

#Preview {
    RCTabView()
}
