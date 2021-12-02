//
//  GreenViewThree.swift
//  SwiftUI-Base-Tutorial
//
//  Created by Serkan Mehmet Malagiç on 30.11.2021.
//

import SwiftUI

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
