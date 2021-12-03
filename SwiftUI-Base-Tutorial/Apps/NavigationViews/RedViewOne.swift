//
//  RedViewOne.swift
//  SwiftUI-Base-Tutorial
//
//  Created by Serkan Mehmet Malagiç on 30.11.2021.
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
