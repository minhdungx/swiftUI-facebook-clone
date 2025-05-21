//
//  FeedView.swift
//  facebook-swiftUI
//
//  Created by DungHM on 21/5/25.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            VStack {
                HeaderView()
                
                Spacer()
            }.toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Text("Facebook")
                        .font(.system(size: 30, weight: .bold))
                        .foregroundColor(.blue)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    HStack(spacing: 10){
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 24, height: 24)
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 24, height: 24)
                            .font(.system(size: 20, weight: .bold))
                        Image(systemName: "ellipsis.message.fill")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 24, height: 24)
                        
                    }
                }
            }
        }
    }
}

#Preview {
    FeedView()
}

