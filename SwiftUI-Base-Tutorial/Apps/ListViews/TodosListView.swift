//
//  TodosListView.swift
//  SwiftUI-Base-Tutorial
//
//  Created by Serkan Mehmet Malagiç on 30.11.2021.
//

import SwiftUI

struct TodosListView: View {
    
    @ObservedObject var viewModel = TodoViewModel()
    
    var body: some View {
        
        NavigationView{
            
            ZStack{
                
                VStack {
                    List(viewModel.items, id : \.id){ item in
                        TodosListCell(imageUrl: "img", title: item.title, description: item.title)
                    }
                    .refreshable {
                        print("Do your refresh work here")
                    }
                    
                }.onAppear (perform:{
                    viewModel.loadData()
                })
                
                if viewModel.isLoading {
                    IndicatorView()
                }
            }
            .background(.green)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Image("ford")
                        .resizable()
                        .aspectRatio(2, contentMode: .fill)
                        .frame(width: 100, height: 20)
                }
            }

        }
    }
}

struct TodosListView_Previews: PreviewProvider {
    static var previews: some View {
        TodosListView()
    }
}
