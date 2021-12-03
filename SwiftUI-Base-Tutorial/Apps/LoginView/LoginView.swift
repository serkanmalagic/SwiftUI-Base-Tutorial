//
//  LoginView.swift
//  SwiftUI-Base-Tutorial
//
//  Created by Serkan Mehmet Malagiç on 30.11.2021.
//

import SwiftUI

struct LoginView : View {
    
    @State var user = ""
    @State var pass = ""
    
    var body: some View {
        
        VStack{
            
            Image("img")
            
            Text("SwiftUI Hoşgeldin")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding()
                .multilineTextAlignment(.center)
            
            VStack(alignment: .leading){
                
                Text("Kullanıcı Adın")
                
                HStack{
                    TextField("@example", text: $user)
                    Image("check")
                }
                
                Divider()
                
                Text("Şifre")
                
                HStack{
                    SecureField("**********", text: $user)
                    Image("check")
                }
                
                Divider()
                
                Button { } label: {
                    Text("Giriş Yap")
                        .font(Font.body.bold())
                        .padding()
                        .foregroundColor(Color.primary)
                        .colorInvert()
                }
                .myButtonStyle()
                // to use
                Button { } label: {
                    Text("Kayıt Ol")
                        .font(Font.body.bold())
                        .padding()
                        .foregroundColor(Color.primary)
                        .colorInvert()
                }
                .myButtonStyle()
            }
            .padding()
            
        }.padding()
            .frame(
                minWidth: 0,
                maxWidth: UIScreen.screenWidth * 0.9,
                alignment: .topLeading
            )
            .background(.white)
            .cornerRadius(15)
            .shadow(color: .gray, radius: 8, x: 0.1, y: 0.1)
    }
    
}
