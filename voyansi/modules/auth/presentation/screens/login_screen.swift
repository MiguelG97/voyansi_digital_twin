//
//  login_screen.swift
//  voyansi
//
//  Created by Miguel Gutiérrez on 27/09/24.
//

import SwiftUI

struct LoginScreen: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    @Environment(\.layoutprops) var layoutprops: LayoutProps
    
    var body: some View {
        ZStack(alignment: .bottom) {
//            let _ = print(layoutprops.size.width)
            
            Color(.black).ignoresSafeArea()
            
            
            
            HStack(alignment:.center){
                Image("logo").resizable().aspectRatio(contentMode: .fit)
                    .padding(.top,60)
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)
            
            //MARK: LOGIN
            VStack(){
                VStack(alignment:.center,spacing:12){
                    Text("Login")
                        .font(.title)
                        .fontWeight(.semibold)
                    Text("Enter your login information")
                        .foregroundStyle(Color(red: 0.48, green: 0.48, blue: 0.48))
                }
                VSpacer(height: 20)
                
                VStack(spacing: 16) {
                    VStack(alignment:.leading){
                        Text("Email")
                            .font(.custom("Geist-SemiBold", size: 17))
//                            .foregroundStyle(Color(red: 0.48, green: 0.53, blue: 0.59))
                        VTextField(type: .text, value: $email)
                    }
                    VStack(alignment:.leading){
                        Text("Password")
                            .font(.custom("Geist-SemiBold", size: 17))
//                            .foregroundStyle(Color(red: 0.48, green: 0.53, blue: 0.59))
                        VTextField(type: .password, value: $password)
                        
                        VSpacer(height: 4)
                        
                        Text("Forgot your password?")
                            .font(.system(size: 16))
                            .foregroundStyle(Color(red: 0.28, green: 0.28, blue: 0.28))
                            .frame(maxWidth: .infinity,alignment: .trailing)
                    }
                }
                .frame(maxWidth: 400)
                
                
                VSpacer(height: 6)
                
                
                Button{
                    
                }
                label:{
                    Text("Login")
                        .fontWeight(.semibold)
                }
                .padding(.vertical,12)
                .frame(maxWidth: 400)
                .background(.black)
                .clipShape(.rect(topLeadingRadius: 12, bottomLeadingRadius: 12, bottomTrailingRadius: 12, topTrailingRadius: 0))
                
                
                Spacer()
                
                HStack{
                    Text("Don't have any account?")
                    Text("Sign Up").fontWeight(.medium)
                }
                .padding(.bottom, self.layoutprops.safeArea.bottom)
            }
            .padding(.horizontal,24)
            .padding(.top,24)
            .frame(maxHeight: 520,alignment: .center)
            .background(.white)
            .clipShape(.rect(topLeadingRadius: 100))
              
        }
        .ignoresSafeArea()
        
        
    }
}

#Preview {
    LoginScreen()
        .environment(\.font, .custom("Geist-Regular", size: 17))
}
