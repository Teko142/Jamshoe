//
//  ContentView.swift
//  Jamshoe
//
//  Created by Артур Олехно on 16/05/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
     
    enum Tab {
        case featured
        case cart
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Favorite", systemImage: "star")
                }
                .tag(Tab.featured)
            
            JamshoeCart()
                .tabItem {
                    Label("Cart", systemImage: "cart")
                }
                .tag(Tab.cart)

            JamshoeList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
            
            
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
