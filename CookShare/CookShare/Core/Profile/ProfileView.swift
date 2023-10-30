//
//  ProfileView.swift
//  CookShare
//
//  Created by user245216 on 10/3/23.
//

import SwiftUI

struct ProfileView: View {
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    var body: some View {
        NavigationStack{
            ScrollView {
                // Header
                VStack(spacing: 10){
                    //pic and stats
                    HStack {
                        Image("Cuoco")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                        
                        Spacer()
                        
                        HStack {
                            Image (systemName: "star")
                            Image (systemName: "star")
                            Image (systemName: "star")
                            Image (systemName: "star")
                            Image (systemName: "star")
                            
                        }
                        
                        Spacer()
                        
                        HStack {
                            Button(action: {
                                
                            }) {
                                Image(systemName: "person.crop.circle.badge.minus")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 30, height: 30)
                            }
                        }
                        
                    }
                    // Name and bio
                    VStack (alignment: .leading) {
                        Text("Boh1")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        
                        Text("Boh1")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    // Action button
                    
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 22)
                            .foregroundColor(.black)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray, lineWidth: 1)
                            )
                    }
                    
                    Divider()
                }
                
                // Post grid view
                LazyVGrid(columns: gridItems, spacing: 2) {
                    ForEach(0 ... 14, id : \.self) { index in
                        Image("pasta-1")
                            .resizable()
                            .scaledToFill()
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement : .navigationBarTrailing){
                    Button {
                    
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }

                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
