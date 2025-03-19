//
//  UserStatsView.swift
//  Twitter-Clone
//
//  Created by BMIIT on 19/03/25.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing:24){
            HStack{
                Text("807").font(.subheadline).bold()
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            HStack{
                Text("6.9M").font(.subheadline).bold()
                Text("Followers")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
