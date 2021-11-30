//
//  ContentView.swift
//  SwiftUI-Base-Tutorial
//
//  Created by Serkan Mehmet Malagiç on 29.11.2021.
//


import SwiftUI

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

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        TodosListCell()
//    }
//}
