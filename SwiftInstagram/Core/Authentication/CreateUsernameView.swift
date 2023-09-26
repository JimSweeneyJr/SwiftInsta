//
//  CreateUsernameView.swift
//  SwiftInstagram
//
//  Created by James Sweeney on 9/25/23.
//

import SwiftUI

struct CreateUsernameView: View {
    
    @State private var username = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 12) {
            
            Text("Add your username")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
                .padding(.bottom, 40)
            
//            Text("You'll use this email to log into your account")
//                .font(.footnote)
//                .foregroundColor(.gray)
//                .multilineTextAlignment(.center)
//                .padding(.top)
            
            TextField("Username", text: $username)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
            
            NavigationLink {
                CreatePasswordView()
                    .navigationBarBackButtonHidden(true)
            } label:  {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(8)
            }
            Spacer()
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
        
    
    }
}

struct CreateUsernameView_Previews: PreviewProvider {
    static var previews: some View {
        CreateUsernameView()
    }
}
