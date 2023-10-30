//
//  FeedView.swift
//  CookShare
//
//  Created by user245216 on 10/7/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack (spacing: 32){
                    ForEach (0 ... 10, id:  \.self) {post in
                        FeedCell()
                    }
                }
                .padding(.top)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("CookShare")
                        .fontWeight(.semibold)
                        
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
