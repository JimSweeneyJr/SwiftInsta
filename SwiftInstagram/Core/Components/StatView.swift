//
//  StatView.swift
//  SwiftInstagram
//
//  Created by James Sweeney on 9/21/23.
//

import SwiftUI

struct StatView: View {
    
    let value: Int
    let title: String
    
    var body: some View {
      
            VStack {
                Text("\(value)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Text(title)
                    .font(.footnote)
            }
            .frame(width: 76)
        }
    
}

struct StatView_Previews: PreviewProvider {
    static var previews: some View {
        StatView(value: 12, title: "posts")
    }
}
