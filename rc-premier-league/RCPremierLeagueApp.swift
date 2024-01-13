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
    var body: some Scene {
        WindowGroup {
           RCTabView()
        }
    }
    
    init() {
        guard let apiKey = ProcessInfo.processInfo.environment["API_KEY"],
              let appUserID = ProcessInfo.processInfo.environment["APP_USER_ID"] else {
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
    
    private let views = [AnyView(TeamListView()), AnyView(AccountView())]
    private let navTitles = ["Premier League", "Account"]
    private let titles = ["Home", "Account"]
    private let imageNames = ["house.circle", "person.crop.circle"]
    
    var body: some View {
        NavigationView {
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
    }
}

#Preview {
    RCTabView()
}
