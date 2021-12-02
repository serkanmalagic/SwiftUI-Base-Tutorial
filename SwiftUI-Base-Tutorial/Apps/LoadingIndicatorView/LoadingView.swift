//
//  LoadingView.swift
//  SwiftUI-Base-Tutorial
//
//  Created by Serkan Mehmet Malagiç on 2.12.2021.
//

import SwiftUI

struct LoadingView: View {
    
    @State private var isLoading = true
    
    var body: some View {
       
        VStack{
            
            Image("batman")
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(width: UIScreen.screenWidth * 0.8 , height: UIScreen.screenHeight * 0.4)
                .background(.red)
                .cornerRadius(25)
                .shadow(color: .gray, radius: 15, x: 2, y: 2)
                        
            Text("Loading indicator will be presenting for 2 sec")
                .bold()
                .font(.title)
                .foregroundColor(.black)
                .padding()
            
            ZStack{
                if isLoading {
                    IndicatorView()
                }
            }
            
            Button("Trigger indicator again"){
                runSomething()
            }.buttonStyle(GrowingButton())
            
        }.onAppear{
            runSomething()
        }
        
    }
    
    func runSomething(){
        isLoading = false
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                isLoading = false
            }
        }
        
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}

struct IndicatorView: View {
    var body: some View {
        ZStack{
            
            BlurView(style: .extraLight)
                .frame(width: 100 , height: 100)
            .cornerRadius(25)
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: Color(.darkGray)))
                .scaleEffect(2)
        }
    }
}
