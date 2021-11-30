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
            VStack {
                List(viewModel.items, id : \.id){ item in
                    TodosListCell(imageUrl: "img", title: item.title, description: item.title)
                }
                
            }.onAppear (perform:{
                viewModel.loadData()
            })
                .background(.green)
                
                .navigationTitle(Text("HeadLine"))
        }
        
    }
}

struct TodosListView_Previews: PreviewProvider {
    static var previews: some View {
        TodosListView()
    }
}
