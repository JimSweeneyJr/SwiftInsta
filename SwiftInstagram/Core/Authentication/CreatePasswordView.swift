//
//  CreatePasswordView.swift
//  SwiftInstagram
//
//  Created by James Sweeney on 9/25/23.
//

import SwiftUI

struct CreatePasswordView: View {
    
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 12) {
            
            Text("Create a password")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
                .padding(.bottom, 40)
            
            Text("Your password must be at least 8 characters in length")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.top)
                .padding(.bottom)
            
            TextField("Password", text: $password)
                .autocapitalization(.none)
                .modifier(IGTextFieldModifier())
            
            NavigationLink {
//                CreatePasswordView()
//                    .navigationBarBackButtonHidden(true)
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

struct CreatePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePasswordView()
    }
}
