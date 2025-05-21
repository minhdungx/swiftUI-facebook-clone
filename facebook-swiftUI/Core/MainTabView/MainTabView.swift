//
//  TabView.swift
//  facebook-swiftUI
//
//  Created by DungHM on 21/5/25.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab = 0
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                        .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                }
                .onAppear {
                    selectedTab = 0
                }
            Text("Video")
                .tabItem {
                    Image(systemName: "play.tv")
                        .environment(\.symbolVariants, selectedTab == 1 ? .fill : .none)
                }
                .onAppear {
                    selectedTab = 1
                }
            Text("Friend")
                .tabItem {
                    Image(systemName: "person.2")
                        .environment(\.symbolVariants, selectedTab == 2 ? .fill : .none)
                }
                .onAppear {
                    selectedTab = 2
                }
            Text("MarketPlace")
                .tabItem {
                    Image(systemName: "cart")
                        .environment(\.symbolVariants, selectedTab == 3 ? .fill : .none)
                }
                .onAppear {
                    selectedTab = 3
                }
            Text("Setting")
                .tabItem {
                    Image(systemName: "text.justify")
                        .environment(\.symbolVariants, selectedTab == 0 ? .fill : .none)
                }
                .onAppear {
                    selectedTab = 4
                }
                
        }
        .onAppear {
            UITabBar.appearance().barTintColor  = UIColor(.white)
        }
    }
}

#Preview {
    MainTabView()
}
