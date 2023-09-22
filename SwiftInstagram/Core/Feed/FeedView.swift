//
//  FeedView.swift
//  SwiftInstagram
//
//  Created by James Sweeney on 9/21/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(0 ... 10, id: \.self) { post in
                    FeedCell()
                    
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
