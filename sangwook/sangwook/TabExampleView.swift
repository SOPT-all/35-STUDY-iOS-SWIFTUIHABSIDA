//
//  TabExampleView.swift
//  sangwook
//
//  Created by 우상욱 on 12/8/24.
//

import SwiftUI

struct TabExampleView: View {
    var body: some View {
        TabView {
                    HomeView()
                        .tabItem {
                            Label("Home", systemImage: "house.fill")
                        }
                    
                    SettingsView()
                        .tabItem {
                            Label("Settings", systemImage: "gearshape.fill")
                        }
                    
                    ProfileView()
                        .tabItem {
                            Label("Profile", systemImage: "person.fill")
                        }
                }
                .font(.title)
                .accentColor(.blue)
                .navigationTitle("Tabs")
    }
}

struct HomeView: View {
    var body: some View {
        Text("Home View")
            .navigationTitle("Home")
    }
}

struct SettingsView: View {
    var body: some View {
        Text("Settings View")
            .navigationTitle("Settings")
    }
}

struct ProfileView: View {
    var body: some View {
        Text("Profile View")
            .navigationTitle("Profile")
    }
}

#Preview {
    TabExampleView()
}
