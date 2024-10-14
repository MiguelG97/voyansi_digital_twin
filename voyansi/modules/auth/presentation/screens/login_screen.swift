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
    
    @State private var isLoading : Bool = true
    
    @Environment(\.layoutprops) var layoutprops: LayoutProps
    
    var body: some View {
        
        ZStack(alignment: layoutprops.isIpad ? .leading : .bottom) {
            
            Color(.black).ignoresSafeArea()
            
            if !layoutprops.isIpad{
                HStack(alignment:.center){
                    Image("logo").resizable().aspectRatio(contentMode: .fit)
                        .padding(.top,60)
                }
                .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .top)
            }
            //MARK: HERO
            else{
                HStack{
                    Spacer(minLength: 470)
                    
                    ZStack(alignment:.center){
                        WebView(isLoading: $isLoading).opacity(isLoading ? 0 : 1)
                        
                        
                        VStack(spacing:18){
//                            VSpacer(height: layoutprops.size.height * 0.1)
//                            Text("Your Single Source of Truth\nfor Every Project")
//                                .font(.system(size: 40))
//                                .fontWeight(.semibold)
//                                
//                            
//                            Text("Transform your business collaboration by\n giving your team robust solutions")
//                            Spacer()
                        }
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                    }
                    .frame(maxWidth: .infinity,maxHeight: .infinity)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity,alignment: .leading)
            }
            
            //MARK: LOGIN
            VStack(){
                if(layoutprops.isIpad){
                    VStack{
                        Image("logo_dark")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        ZStack{
                            Rectangle().fill(.black.opacity(0.65))
                            VStack(alignment:.leading,spacing: 18) {
                                Text("Start your \njourney with us.")
                                    .font(.system(size: 38))
                                    .fontWeight(.semibold)
                                
                                Text("Discover the world's best app for navigating digital twin models")
                                    .font(.system(size: 20))
                            }
                            .foregroundStyle(.white)
                            .frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .topLeading)
                            .padding(.vertical,50)
                            .padding(.horizontal,30)
                        }
                        .background(Image("voyansi_building")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .blur(radius: 4)
                        )
                        .clipShape(.rect(topLeadingRadius:70,bottomTrailingRadius: 70))
                    }
                    .frame(maxWidth: .infinity,maxHeight: layoutprops.size.height*0.4,alignment: .top)
                    
                    Spacer()
                }
                
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
                        VTextField(type: .text, value: $email)
                    }
                    VStack(alignment:.leading){
                        Text("Password")
                            .font(.custom("Geist-SemiBold", size: 17))
                        
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
            .frame(maxWidth:layoutprops.isIpad ? 450 : .infinity,maxHeight:layoutprops.isIpad ? .infinity : 520,alignment: .bottom)
            .background(.white)
            .clipShape(.rect(topLeadingRadius: 100, bottomTrailingRadius: layoutprops.isIpad ? 100 : 0))
            .padding(.all,layoutprops.isIpad ? 20 : 0)
              
            
        }
        .ignoresSafeArea()
        .onAppear {
            AuthService.shared.login(email: "admin_test@voyansi.com", password: "voyansi123")
        }
    }
}

#Preview {
    LoginScreen()
        .environment(\.font, .custom("Geist-Regular", size: 17))
}
