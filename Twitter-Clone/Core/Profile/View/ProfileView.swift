//
//  ProfileView.swift
//  Twitter-Clone
//
//  Created by BMIIT on 17/03/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack{
            ZStack(alignment: .bottomLeading){
                Color(.systemBlue)
                    .ignoresSafeArea()
                Circle()
                    .frame(width: 72, height: 72)
            }
            .frame(height: 96)
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
