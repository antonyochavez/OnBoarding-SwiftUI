//
//  CustomTextField.swift
//  OnBoarding-SwiftUI
//
//  Created by Antonio Chavez Saucedo on 05/04/23.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    var hint: String
    var leadingIcon: Image
    var isPassword: Bool = false
    
    var body: some View {
        HStack(spacing: -10) {
            leadingIcon
                .font(.callout)
                .foregroundColor(.gray)
                .frame(width: 40, alignment: .leading)
            
            if isPassword{
                SecureField(hint, text: $text)
            }else{
                TextField(hint, text: $text)
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 15)
        .background{
            RoundedRectangle(cornerRadius: 12, style: .continuous)
                .fill(.gray.opacity(0.1))
        }
        
    }
}

struct CustomTextField_Previews: PreviewProvider {
    static var previews: some View {
        CustomTextField(text: .constant("Texto"), hint: "Hint", leadingIcon: Image(systemName: "plus"))
    }
}
