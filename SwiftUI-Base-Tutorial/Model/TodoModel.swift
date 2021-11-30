//
//  TodoModel.swift
//  MVVM-Example
//
//  Created by Serkan Mehmet Malagiç on 6.11.2021.
//

import Foundation

struct Todo : Codable{
    let userId : Int
    let id: Int
    let title: String
    let completed: Bool
}

