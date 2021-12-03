//
//  TodosListCell.swift
//  SwiftUI-Base-Tutorial
//
//  Created by Serkan Mehmet Malagiç on 30.11.2021.
//

import SwiftUI

struct TodosListCell: View {
    
    var imageUrl = String()
    var title = String()
    var description = String()
    
    var body: some View {
        
        HStack{
            
            Image("img")
            
            Spacer()
                .frame(width: 30)
            
            VStack(alignment : .leading){
                Text(title)
                    .font(.body)
                    .bold()
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Text(description)
                    .font(.subheadline)
                    .foregroundColor(.white)

            }
            
            Spacer()
            
        }
        .padding()
        .frame(width: UIScreen.screenWidth * 0.85, height: UIScreen.screenHeight * 0.15)
        .background(Color.init(uiColor: UIColor(displayP3Red: 18/255, green: 51/255, blue: 116/255, alpha: 1)))
        .cornerRadius(15)
        .shadow(color: .gray, radius: 5, x: 2, y: 2)

    }
}
