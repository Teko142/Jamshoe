//
//  Purchases.swift
//  Jamshoe
//
//  Created by Артур Олехно on 19/05/2021.
//

import SwiftUI


    struct Purchases: View {
        @EnvironmentObject var modelData: ModelData
        @State private var showFavorotesOnly = true
         
        var filteredJamshoes: [Jamshoe] {
            modelData.jamshoes.filter { jamshoe in
                (!showFavorotesOnly || jamshoe.isBought)
            }
        }
        
        var body: some View {
            NavigationView {
                List{
                    ForEach(filteredJamshoes) { jamshoe in
                        NavigationLink(destination: JamshoeDetail(jamshoe: jamshoe)) {
                            JamshoeRow(jamshoe: jamshoe)
                        }
                    }
                }
                .navigationTitle("Purchases")
            }
        }
    }

    struct Purchases_Previews: PreviewProvider {
        static var previews: some View {
            Purchases()
                .environmentObject(ModelData())
        }
    }
