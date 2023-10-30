//
//  MainTabViw.swift
//  CookShare
//
//  Created by user245216 on 10/3/23.
//

import SwiftUI

struct MainTabViw: View {
    var body: some View {
        TabView {
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }

            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }

            Text("UploadPosts")
                .tabItem {
                    Image(systemName: "plus.square")
                }

            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }

        }
        .accentColor(.black)
        Spacer()
    }
}

struct MainTabViw_Previews: PreviewProvider {
    static var previews: some View {
        MainTabViw()
    }
}
