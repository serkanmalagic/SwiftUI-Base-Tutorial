//
//  ContentView.swift
//  SwiftUI-Base-Tutorial
//
//  Created by Serkan Mehmet Malagiç on 29.11.2021.
//

import SwiftUI

struct RedViewOne: View {
    
    var body: some View {
        
        NavigationView{
            
            VStack{
                CircleView(color: .red, number: 1)
                    .navigationBarTitle("Red one", displayMode: .inline)
                    .offset(y: -60)
                
                NavigationLink(destination: BlueViewTwo(color: .blue, number: 2), label : {
                    VStack{
                        Text("Sonraki Sayfa")
                            .bold()
                            .frame(width: 280, height: 50)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        
                    }
                })
            }
        }
        .accentColor(Color(.label))
    }
}

struct BlueViewTwo: View {
    
    var color : Color
    var number : Int
    
    var body: some View {
        VStack{
            CircleView(color: color, number: number)
                .navigationTitle("Blue one")
                .offset(y: -60)
            
            NavigationLink(destination: GreenViewThree(color: .green, number: 3), label : {
                VStack{
                    Text("Sonraki Sayfa")
                        .bold()
                        .frame(width: 280, height: 50)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    
                }
            })
        }
    }
}

struct GreenViewThree: View {
    
    @Environment(\.dismiss) var dismiss
    var color : Color
    var number : Int
    
    @State private var showingSheet = false
    
    var body: some View {
        VStack{
            CircleView(color: color, number: number)
                .navigationTitle("Green one")
                .offset(y: -60)
            
            Button("Dismiss VC"){
                dismiss()
            }.padding()
            
            Button("Modal göster"){
                showingSheet.toggle()
            }.sheet(isPresented: $showingSheet) {
                SheetView()
            }.padding()
            
        }
    }
}

struct SheetView : View {
    
    var body: some View {
        Text("Sheet VC")
            .bold()
            .font(.headline)
    }
}

//  İçerisine veri gönderilen ve diğer sayfalardan kolayca çağırılabilen item'dir.
struct CircleView: View {
    
    var color : Color
    var number : Int
    
    var body: some View {
        ZStack{
            Circle()
                .foregroundColor(color)
                .frame(width: 200, height: 200, alignment: .center)
            Text("\(number)")
                .foregroundColor(.white)
                .font(.system(size : 70, weight: .bold))
        }
    }
}

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
        }.padding()
            .frame(
                minWidth: 0,
                maxWidth: UIScreen.screenWidth * 0.9,
                alignment: .topLeading
            )
            .background(.white)
            .cornerRadius(25)
            .shadow(color: .purple, radius: 8, x: 1, y: 1)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RedViewOne()
    }
}
