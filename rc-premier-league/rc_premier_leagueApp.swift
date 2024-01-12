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
