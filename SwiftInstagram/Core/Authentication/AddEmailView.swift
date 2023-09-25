//
//  AddEmailView.swift
//  SwiftInstagram
//
//  Created by James Sweeney on 9/25/23.
//

import SwiftUI

struct AddEmailView: View {
    
    @State private var email = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 12) {
            
            Text("Add your email")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("You'll use this email to log into your account")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.top)
            
            TextField("Enter your email", text: $email)
                .autocapitalization(.none)
                .font(.subheadline)
                .padding(12)
                .background(Color(.systemGray6))
                .cornerRadius(10)
                .padding(.horizontal, 24)
                .padding(.top)
            
            Button {
                print("Next")
            } label : {
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

struct AddEmailView_Previews: PreviewProvider {
    static var previews: some View {
        AddEmailView()
    }
}
