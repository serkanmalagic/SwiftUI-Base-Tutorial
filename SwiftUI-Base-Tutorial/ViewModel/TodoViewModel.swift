//
//  TodosViewModel.swift
//  MVVM-Example
//
//  Created by Serkan Mehmet Malagiç on 6.11.2021.
//

import SwiftUI

let getUrl = "https://jsonplaceholder.typicode.com/todos"
let postUrl = "https://jsonplaceholder.typicode.com/posts"

class TodoViewModel: ObservableObject {
    
    @Published var items = [Todo]()
    @Published var isLoading = false
    
    func loadData(){
        
        isLoading = true

        NetworkClient.performRequest( object: [Todo].self, router: APIRouter.getTodos) { response in
            
            DispatchQueue.main.async {
                self.items = response
                self.isLoading = false
            }
            
        } failure: { error in
            print(error.localizedDescription)
        }
        
    }
    
}

