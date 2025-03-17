//
//  MainTabView.swift
//  Twitter-Clone
//
//  Created by BMIIT on 17/03/25.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedIndex: Int = 0
    var body: some View {
        TabView(selection: $selectedIndex){
            FeedView()
                .onTapGesture {
                    self.selectedIndex = 0
                }
                .tabItem{
                    Image(systemName: "house")
                }.tag(0)
            ExploreView()
                .onTapGesture {
                    self.selectedIndex = 1
                }
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            NotificationsView()
                .onTapGesture {
                    self.selectedIndex = 2
                }
                .tabItem{
                    Image(systemName: "bell.fill")
                }.tag(2)
            MessagesView()
                .onTapGesture {
                    self.selectedIndex = 3
                }
                .tabItem{
                    Image(systemName: "envelope.fill")
                }.tag(3)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
