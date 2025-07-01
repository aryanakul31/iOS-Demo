//
//  ContentView.swift
//  Demo
//
//  Created by Nakul Arya on 26/06/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedTab : Tab = .featured
    
    enum Tab {
            case featured
            case list
            case hikings
        }
    
    var body: some View {
        TabView(selection:$selectedTab,content: {
            CategoryHome().tabItem {
                Label("Featured", systemImage: "star")
            }.tag(Tab.featured)
            LandmarkList()
                .tabItem {
                            Label("List", systemImage: "list.bullet")
                            }.tag(Tab.list)
            HikeListing()
                .tabItem {
                            Label("Hike", systemImage: "figure.run")
                            }.tag(Tab.hikings)
        })
    }
}

#Preview {
    ContentView().environment(ModelData())
}
