//
//  ProfileView.swift
//  SwiftInstagram
//
//  Created by James Sweeney on 9/20/23.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    var body: some View {
        VStack {
            // header
            VStack(spacing: 10) {
                // pic and stats
                HStack {
                    Image("RachProfilePic")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 80, height: 80)
                        .clipShape(Circle())
                    
                    Spacer()
                    
                    HStack(spacing: 8) {
                        
                        StatView(value: 3, title: "Posts")
                        
                        StatView(value: 3, title: "Followers")
                        
                        StatView(value: 3, title: "Following")
                        
                    }
                }
                .padding(.horizontal)
                // name and bio
                VStack(alignment: .leading, spacing: 4){
                    Text("Rachael Clark")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Text("Work is Life!")
                        .font(.footnote)
                        
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                // action button
                
                Button {
                    
                } label: {
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 32)
                        .foregroundColor(.black)
                        .overlay(
                            RoundedRectangle(cornerRadius: 6)
                                .stroke(Color.gray, lineWidth: 1))

                }
                
                Divider()
            }
            // post grid view
            
            LazyVGrid(columns: gridItems, content: {
                
                Image("bridge")
                    .resizable()
                    .scaledToFill()
                
                Image("bridge")
                    .resizable()
                    .scaledToFill()
                
                Image("bridge")
                    .resizable()
                    .scaledToFill()
                Image("bridge")
                    .resizable()
                    .scaledToFill()
                
                Image("bridge")
                    .resizable()
                    .scaledToFill()
                
                Image("bridge")
                    .resizable()
                    .scaledToFill()
                Image("bridge")
                    .resizable()
                    .scaledToFill()
                
                Image("bridge")
                    .resizable()
                    .scaledToFill()
                
                Image("bridge")
                    .resizable()
                    .scaledToFill()
            })
                
            } // LAZYVGRID
        }
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
