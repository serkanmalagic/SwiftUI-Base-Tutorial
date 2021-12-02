//
//  BlueViewTwo.swift
//  SwiftUI-Base-Tutorial
//
//  Created by Serkan Mehmet Malagiç on 30.11.2021.
//

import SwiftUI

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
