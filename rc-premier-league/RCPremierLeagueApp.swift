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
    private let titles = ["Home", "Account"]
    private let imageNames = ["house.circle", "person.crop.circle"]
    
    var body: some View {
        let views = [AnyView(TeamListView(path: $path)), AnyView(AccountView())]
        
        NavigationStack(path: $path) {
            TabView(selection: $tabSelection) {
                ForEach(0...1, id: \.self) { index in
                    views[index]
                        .tabItem {
                            Label(titles[index], systemImage: imageNames[index])
                        }
                }
            }
            .tint(.primary)
            .navigationTitle(navTitles[tabSelection])
        }
        .onAppear() {
            let backgroundColor = UIColor.systemGray6
            UITabBar.appearance().barTintColor = backgroundColor
            UITabBar.appearance().backgroundColor = backgroundColor
        }
        .navigationDestination(for: Team.self, destination: { team in
            TeamDetailView(team: team)
        })
    }
}

#Preview {
    RCTabView()
}
