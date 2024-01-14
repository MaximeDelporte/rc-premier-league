//
//  RCPremierLeagueApp.swift
//  rc-premier-league
//
//  Created by afx on 12/01/2024.
//

import RevenueCat
import SwiftUI

@main
struct RCPremierLeagueApp: App {
    
    @StateObject var userViewModel = UserViewModel()
    
    var body: some Scene {
        WindowGroup {
           RCTabView()
                .environmentObject(userViewModel)
        }
    }
    
    init() {
        guard let dictionary: [String: Any] = Bundle.main.infoDictionary,
              let apiKey: String = dictionary["API_KEY"] as? String,
              let appUserID = dictionary["APP_USER_ID"] as? String else {
            return
        }
        
        Purchases.configure(
          with: Configuration.Builder(withAPIKey: apiKey)
            .with(appUserID: appUserID)
            .build()
        )
    }
}

private struct RCTabView: View {
    
    @State var tabSelection: Int = 0
    @State var path: NavigationPath = .init()
    
    private let navTitles = ["Premier League", "Account"]
    
    var body: some View {
        NavigationStack(path: $path) {
            TabView(selection: $tabSelection) {
                ForEach(0...1, id: \.self) { index in
                    let firstPage = index == 0
                    if firstPage {
                        TeamListView(path: $path)
                            .tabItem {
                                Label("Home", systemImage: "house.circle")
                            }
                    } else {
                        AccountView()
                            .tabItem {
                                Label("Account", systemImage: "person.crop.circle")
                            }
                    }
                }
            }
            .tint(.primary)
            .navigationTitle(navTitles[tabSelection])
            .navigationDestination(for: Team.self, destination: { team in
                TeamDetailView(team: team)
            })
        }
        .onAppear() {
            let backgroundColor = UIColor.systemGray6
            UITabBar.appearance().barTintColor = backgroundColor
            UITabBar.appearance().backgroundColor = backgroundColor
        }
    }
}

#Preview {
    RCTabView()
        .environmentObject(UserViewModel())
}
