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
