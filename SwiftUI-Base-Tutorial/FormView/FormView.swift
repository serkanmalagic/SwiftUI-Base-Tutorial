//
//  FormView.swift
//  SwiftUI-Base-Tutorial
//
//  Created by Serkan Mehmet Malagiç on 30.11.2021.
//

import SwiftUI

struct FormView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var birthDate = Date()
    @State private var shouldSendNewsletter = false
    
    var body: some View {
        
        NavigationView{
            Form{
                Section(header: Text("Kişisel Bilgiler")){
                    TextField("Adınız", text: $firstName)
                    TextField("Soyasdınız", text: $lastName)
                    DatePicker("Doğum Tarihiniz", selection: $birthDate, displayedComponents: .date)
                }
                Section(header: Text("İşlemler")) {
                    Toggle("Makale gönder", isOn: $shouldSendNewsletter)
                        .toggleStyle(SwitchToggleStyle(tint: .red))
                }
            }
            
            .toolbar {
                Button(action: {
                    print("button pressed")
                    
                }) {
                    Image("img")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
            }
            .onTapGesture {
                print("Merhaba Lorem")
            }
            .navigationBarTitle("Ayarlar", displayMode: .inline)
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
