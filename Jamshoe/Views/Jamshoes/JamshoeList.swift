//
//  JamshoeList.swift
//  Jamshoe
//
//  Created by Артур Олехно on 16/05/2021.
//

import SwiftUI

struct JamshoeList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavorotesOnly = false
     
    var filteredJamshoes: [Jamshoe] {
        modelData.jamshoes.filter { jamshoe in
            (!showFavorotesOnly || jamshoe.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List{
                Toggle(isOn: $showFavorotesOnly){
                    Text("Favorites only")
                }
                ForEach(filteredJamshoes) { jamshoe in
                    NavigationLink(destination: JamshoeDetail(jamshoe: jamshoe)) {
                        JamshoeRow(jamshoe: jamshoe)
                    }
                }
            }
            .navigationTitle("Jamshoes")
        }
    }
}

struct JamshoeList_Previews: PreviewProvider {
    static var previews: some View {
        JamshoeList()
            .environmentObject(ModelData())
    }
}
