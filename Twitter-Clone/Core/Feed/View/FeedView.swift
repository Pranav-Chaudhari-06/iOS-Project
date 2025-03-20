//
//  FeedView.swift
//  Twitter-Clone
//
//  Created by BMIIT on 17/03/25.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView{
                LazyVStack{
                    ForEach(0...10, id: \.self){_ in
                        TweetsRowView()
                            .padding()
                    }
                }
            }
            Button {
                print("Show a new Tweet view")
            } label: {
                Image("feather-icon")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 38, height: 38)
                    .padding()
            }

        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
