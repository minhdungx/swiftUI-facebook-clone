//
//  HeaderView.swift
//  facebook-swiftUI
//
//  Created by DungHM on 21/5/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            NavigationLink(destination: ProfileView()) {
                Image("avatar")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
                    .padding(.leading, 10)
            }
            Button {
                
            } label: {
                HStack {
                    Text("What's on your mind?")
                        .foregroundColor(.black)
                    Spacer()
                }
                .padding(.vertical,10)
                .padding(.horizontal, 10)
                .overlay {
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(lineWidth: 1)
                        .foregroundColor(Color.gray.opacity(0.5))
                    
                }
            }
            Image(systemName: "photo.on.rectangle")
                .resizable()
                .scaledToFill()
                .frame(width: 24, height: 24)
                .padding(.horizontal,10)
                .foregroundColor(.green)
        }.padding(.vertical,20)
    }
}


#Preview {
    HeaderView()
}
