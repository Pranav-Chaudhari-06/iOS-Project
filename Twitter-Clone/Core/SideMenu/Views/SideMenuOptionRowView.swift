//
//  SideMenuRowView.swift
//  Twitter-Clone
//
//  Created by BMIIT on 19/03/25.
//

import SwiftUI

struct SideMenuOptionRowView: View {
    let viewModel : SideMenuViewModel 
    var body: some View {
        HStack(spacing:16){
            Image(systemName: viewModel.imageName)
                .font(.headline)
                .foregroundColor(.gray)
            Text(viewModel.description)
                .foregroundColor(.black)
                .font(.subheadline)
            Spacer()
        }
        .frame(height: 40)
        .padding(.horizontal)
    }
}

struct SideMenuRowView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionRowView(viewModel: .profile)
    }
}
