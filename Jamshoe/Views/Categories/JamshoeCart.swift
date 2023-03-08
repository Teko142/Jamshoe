//
//  JamshoeCart.swift
//  Jamshoe
//
//  Created by Артур Олехно on 19/05/2021.
//

import SwiftUI
import iPaymentButton

struct JamshoeCart: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavorotesOnly = true
    
   var filteredJamshoes: [Jamshoe] {
       modelData.jamshoes.filter { jamshoe in
           (!showFavorotesOnly || jamshoe.inCart)
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
                iPaymentButton{
                    iPaymentButton.applePayDemo()
                }
            }
            .navigationTitle("Cart")
        }
    }
}

struct JamshoeCart_Previews: PreviewProvider {
    static var previews: some View {
        JamshoeCart()
            .environmentObject(ModelData())
    }
}
