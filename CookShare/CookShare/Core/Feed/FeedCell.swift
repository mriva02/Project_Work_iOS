//
//  FeedCell.swift
//  CookShare
//
//  Created by user245216 on 10/7/23.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack {
            // image plus username
            HStack {
                Image("pizza-1")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                Text("Pizza")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.leading, 8)
            
            
            Image("pizza-1")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            HStack {
                Text ("Description").fontWeight(.semibold) +
                Text (" Per questa ricetta prendere...")
                Spacer()
            }
            .padding(.leading, 8)
            .font(.footnote)
            .fontWeight(.semibold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.top, 1)
            
            
            HStack {
                Image (systemName: "star")
                Image (systemName: "star")
                Image (systemName: "star")
                Image (systemName: "star")
                Image (systemName: "star")
                
                Spacer()

                Button {
                    print("Comments on post")
                } label: {
                    Image(systemName: "bubble.right")
                } .padding()

            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundColor(.black)
            
            Text("3h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 8)
                .padding(.top, 4)
                .foregroundColor(.gray)
            
        }
    }
    
    struct FeedCell_Previews: PreviewProvider {
        static var previews: some View {
            FeedCell()
        }
    }
}
