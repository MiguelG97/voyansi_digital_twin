//
//  text_field.swift
//  voyansi
//
//  Created by Miguel Gutiérrez on 3/10/24.
//

import SwiftUI

enum TextFieldType {
    case text, password
}

struct VTextField: View {
    var type: TextFieldType = .text
    @Binding var value: String
    
    @State private var isPasswordVisible: Bool = false
    
    
    var body: some View {
        HStack(alignment: .center, content: {
            Image(type == .text ? "mail" :"encrypted").resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundStyle(Color.vtheme.icons)
                .frame(width: 24,height: 24)
            
            if(type == .password && !isPasswordVisible){
                SecureField("", text: $value, prompt: Text("Enter your password")
                    .foregroundStyle(Color(red: 0.68, green: 0.68, blue: 0.68))
                    .fontWeight(.medium))
                
                Image(systemName: "eye")
                    .foregroundStyle(Color.vtheme.icons)
                    .onTapGesture {
                        isPasswordVisible.toggle()
                    }
                    
            }
            else{
                TextField("", text: $value, prompt: Text(verbatim:"admin@voyansi.com")
                    .foregroundStyle(Color(red: 0.68, green: 0.68, blue: 0.68))
                    .fontWeight(.medium)
                )
                    
                if(type == .password){
                    Image(systemName: "eye.slash")
                        .foregroundStyle(Color.vtheme.icons)
                        .onTapGesture {
                            isPasswordVisible.toggle()
                        }
                }
                
                    
            }
            
            
                
        })
        .padding(12)
        .background {
            Color.vtheme.bg_100
            RoundedRectangle(cornerRadius: 12).stroke(Color(red: 0.87, green: 0.87, blue: 0.87), lineWidth: 1.0)
        }
    }
}

#Preview {
    VTextField(type: .text,value: .constant(""))
}
