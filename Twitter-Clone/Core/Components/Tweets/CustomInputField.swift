//
//  CustomInputField.swift
//  Twitter-Clone
//
//  Created by Guest User on 22/03/25.
//

import SwiftUI

struct CustomInputField: View {
    let imageName: String
    let placeholder: String
    @Binding var text: String
    var body: some View {
        VStack{
            HStack{
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(.darkGray))
                TextField(placeholder,text: $text)
            }
            Divider()
                .background(Color(.darkGray))
        }
    }
}

struct CustomInputField_Previews: PreviewProvider {
    static var previews: some View {
        CustomInputField(imageName: "envelope", placeholder: "Email", text: .constant(""))
    }
}
