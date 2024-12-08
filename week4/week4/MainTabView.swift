//
//  MainTabView.swift
//  week4
//
//  Created by  정지원 on 12/8/24.
//
import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            NavigationView {
                HomeView()
            }
            .tabItem {
                Label("홈", systemImage: "house.fill")
            }
            
            NavigationView {
                SearchView()
            }
            .tabItem {
                Label("검색", systemImage: "magnifyingglass")
            }
            
            NavigationView {
                ProfileView()
            }
            .tabItem {
                Label("프로필", systemImage: "person.fill")
            }
        }
    }
}

struct HomeView: View {
    var body: some View {
        List {
            ForEach(1...10, id: \.self) { item in
                Text("게시물 \(item)")
            }
        }
        .navigationTitle("홈")
    }
}

struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        VStack {
            SearchBar(text: $searchText)
            List {
                ForEach(filterItems, id: \.self) { item in
                    Text(item)
                }
            }
        }
        .navigationTitle("검색")
    }
    
    private var filterItems: [String] {
        let items = ["SwiftUI", "UIKit", "Combine", "Swift"]
        return searchText.isEmpty ? items : items.filter { $0.contains(searchText) }
    }
}

#Preview {
    MainTabView()
}
