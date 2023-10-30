//
//  SearchView.swift
//  CookShare
//
//  Created by user245216 on 10/9/23.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack (spacing: 15) {
                    ForEach(0 ... 15, id:  \.self) {user in
                        HStack {
                            Image("carbonara-1")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40, height: 40)
                            .clipShape(Circle())
                            VStack(alignment: .leading) {
                                Text("Pasta alla carbonara")
                                    .fontWeight(.semibold)
                                Text("User_1")
                            }
                            .font(.footnote)
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.top, 10)
                .searchable(text: $searchText, prompt: "Search...")
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
