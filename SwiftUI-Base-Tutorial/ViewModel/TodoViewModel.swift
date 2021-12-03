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
        
        guard let url = URL(string : getUrl) else { return }
        
        URLSession.shared.dataTask(with: url) { ( data , res , err )  in
            do {
                
                if let data = data {
                    
                    let result = try JSONDecoder().decode([Todo].self   , from: data)
                    
                    DispatchQueue.main.async {
                        self.items = result
                        self.isLoading = false
                    }
                    
                }else {
                    print("No data")
                }
                
            }catch ( let error ) {
                print(error.localizedDescription)
            }
        }
        .resume()
    }
    
}

