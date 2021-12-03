//
//  ContentView.swift
//  SwiftUI-Base-Tutorial
//
//  Created by Serkan Mehmet Malagiç on 3.12.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            TodosListView()
                .tabItem {
                    Image(systemName: "point.3.filled.connected.trianglepath.dotted")
                    Text("Http Get")
                }
            RedViewOne()
                .tabItem {
                    Image(systemName: "arrow.forward")
                    Text("Navigation")
                }
            FormView()
                .tabItem {
                    Image(systemName: "text.alignleft")
                    Text("Form")
                }
            LoadingView()
                .tabItem {
                    Image(systemName: "wand.and.rays")
                    Text("Loading")
                }
            LoginView(user: "serkan", pass: "123456")
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Login")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
